import puppeteer from 'puppeteer';

const TARGET = "https://fmoviesco.net/movie/hannibal-2001-29740x/";

console.log(`=== STEALTH CAPTURE: ${TARGET} ===\n`);

const browser = await puppeteer.launch({
    executablePath: '/data/data/com.termux/files/usr/bin/chromium-browser',
    headless: 'new',
    args: [
        '--no-sandbox',
        '--disable-setuid-sandbox',
        '--disable-dev-shm-usage',
        '--autoplay-policy=no-user-gesture-required',
        '--disable-blink-features=AutomationControlled',
        '--window-size=1920,1080',
        '--lang=en-US,en',
        '--disable-features=IsolateOrigins,site-per-process',
        '--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
    ],
    ignoreDefaultArgs: ['--enable-automation'],
});

const page = await browser.newPage();

// ============ STEALTH SETUP (before navigation) ============
await page.evaluateOnNewDocument(() => {
    // 1. Kill webdriver flag
    Object.defineProperty(navigator, 'webdriver', { get: () => undefined });

    // 2. Fake chrome runtime
    window.chrome = { runtime: {}, loadTimes: () => {}, csi: () => {} };

    // 3. Fake plugins (headless has none)
    Object.defineProperty(navigator, 'plugins', {
        get: () => [
            { name: 'PDF Viewer', filename: 'internal-pdf-viewer' },
            { name: 'Chrome PDF Viewer', filename: 'internal-pdf-viewer' },
            { name: 'Chromium PDF Viewer', filename: 'internal-pdf-viewer' },
            { name: 'Microsoft Edge PDF Viewer', filename: 'internal-pdf-viewer' },
            { name: 'WebKit built-in PDF', filename: 'internal-pdf-viewer' },
        ],
    });

    // 4. Fake languages
    Object.defineProperty(navigator, 'languages', { get: () => ['en-US', 'en'] });

    // 5. Fake platform
    Object.defineProperty(navigator, 'platform', { get: () => 'Win32' });

    // 6. Fake hardware
    Object.defineProperty(navigator, 'hardwareConcurrency', { get: () => 8 });
    Object.defineProperty(navigator, 'deviceMemory', { get: () => 8 });

    // 7. Fake permissions
    const origQuery = window.navigator.permissions.query;
    window.navigator.permissions.query = (params) => (
        params.name === 'notifications'
            ? Promise.resolve({ state: Notification.permission })
            : origQuery(params)
    );

    // 8. Fake WebGL vendor/renderer
    const getParameter = WebGLRenderingContext.prototype.getParameter;
    WebGLRenderingContext.prototype.getParameter = function(p) {
        if (p === 37445) return 'Intel Inc.';
        if (p === 37446) return 'Intel Iris OpenGL Engine';
        return getParameter.apply(this, [p]);
    };

    // 9. Hide headless in userAgentData
    if (navigator.userAgentData) {
        Object.defineProperty(navigator.userAgentData, 'brands', {
            get: () => [
                { brand: 'Google Chrome', version: '131' },
                { brand: 'Chromium', version: '131' },
            ],
        });
    }

    // 10. Capture everything
    window.__capture = { fetches: [], xhrs: [], iframes: [], m3u8: new Set(), hosters: new Set() };
    const origFetch = window.fetch;
    window.fetch = async (...args) => {
        const url = typeof args[0] === 'string' ? args[0] : (args[0]?.url || '');
        window.__capture.fetches.push({ url, method: args[1]?.method || 'GET' });
        ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud','voe','vidmoly','luluvdo','streamwish','streamhg','embed.su','multiembed','2embed']
            .forEach(h => { if (url.toLowerCase().includes(h)) window.__capture.hosters.add(h); });
        if (url.includes('.m3u8')) window.__capture.m3u8.add(url);
        return origFetch(...args);
    };
});

await page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');
await page.setViewport({ width: 1920, height: 1080 });
await page.setExtraHTTPHeaders({
    'Accept-Language': 'en-US,en;q=0.9',
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8',
    'Sec-Ch-Ua': '"Google Chrome";v="131", "Chromium";v="131", "Not_A Brand";v="24"',
    'Sec-Ch-Ua-Mobile': '?0',
    'Sec-Ch-Ua-Platform': '"Windows"',
    'Sec-Fetch-Dest': 'document',
    'Sec-Fetch-Mode': 'navigate',
    'Sec-Fetch-Site': 'none',
    'Sec-Fetch-User': '?1',
    'Upgrade-Insecure-Requests': '1',
});

// ============ NAVIGATION LOGGING ============
const navChain = [];
page.on('framenavigated', (frame) => {
    if (frame === page.mainFrame()) {
        navChain.push(frame.url());
        console.log(`[NAV] ${frame.url().slice(0, 150)}`);
    }
});

// Network capture
const networkM3u8 = new Set();
const networkHosters = new Set();
const apiBodies = [];

page.on('response', async (res) => {
    const url = res.url();
    const ct = (res.headers()['content-type'] || '').toLowerCase();
    const status = res.status();

    if (url.includes('.m3u8') || ct.includes('mpegurl')) {
        networkM3u8.add(url);
        console.log(`[M3U8] ${url.slice(0, 160)}`);
    }

    ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud','voe','vidmoly','luvluvdo','streamwish','streamhg','embed.su','multiembed','2embed']
        .forEach(h => { if (url.toLowerCase().includes(h)) {
            networkHosters.add(h);
            console.log(`[HOSTER:${h}] ${url.slice(0, 160)}`);
        }});

    if ((url.includes('/ajax') || url.includes('/api') || url.includes('player')) && ct.includes('json')) {
        try {
            const body = await res.text();
            apiBodies.push({ url, body: body.slice(0, 2000) });
            console.log(`[API] ${status} ${url.slice(0, 130)}`);
            console.log(`  ${body.slice(0, 300)}`);
        } catch {}
    }
});

// Intercept redirects
page.on('response', async (res) => {
    const status = res.status();
    if (status >= 300 && status < 400) {
        const url = res.url();
        const loc = res.headers()['location'];
        if (loc) console.log(`[REDIRECT] ${status} ${url.slice(0, 100)} → ${loc.slice(0, 100)}`);
    }
});

// ============ NAVIGATE ============
console.log("Navigating...\n");
try {
    await page.goto(TARGET, { waitUntil: 'domcontentloaded', timeout: 30000 });
} catch (e) {
    console.log(`goto error: ${e.message}\n`);
}

// Check if we got redirected to google
let currentUrl = page.url();
console.log(`\nAfter initial load: ${currentUrl}`);

if (currentUrl.includes('google.com')) {
    console.log("\n⚠️  Detected redirect to Google. Trying alternate approach...\n");

    // Alt approach: navigate directly, wait only briefly
    try {
        await page.goto('about:blank');
        await page.goto(TARGET, { waitUntil: 'networkidle2', timeout: 30000 });
        currentUrl = page.url();
        console.log(`After retry: ${currentUrl}`);
    } catch (e) {
        console.log(`retry error: ${e.message}`);
    }
}

// Wait for player
await new Promise(r => setTimeout(r, 4000));

// ============ STATE DUMP ============
const state = await page.evaluate(() => ({
    title: document.title,
    url: location.href,
    htmlLen: document.documentElement.innerHTML.length,
    iframes: [...document.querySelectorAll('iframe')].map(f => ({
        src: f.src || '(empty)', id: f.id, cls: f.className.toString()
    })),
    videos: [...document.querySelectorAll('video')].map(v => ({
        src: v.src || '', currentSrc: v.currentSrc || '',
        srcObject: v.srcObject ? 'MediaSource' : null,
        readyState: v.readyState,
    })),
    playerDiv: (() => {
        const el = document.querySelector('[class*="player"], [id*="player"], [class*="embed"], [class*="watch"]');
        return el ? el.outerHTML.slice(0, 1500) : 'not found';
    })(),
}));
console.log("\n=== Page state ===");
console.log(JSON.stringify(state, null, 2));

// ============ CLICK PLAY ============
console.log("\n=== Triggering play ===");
const cdp = await page.createCDPSession();
await cdp.send('Input.dispatchMouseEvent', { type: 'mouseMoved', x: 960, y: 540 });
await cdp.send('Input.dispatchMouseEvent', { type: 'mousePressed', x: 960, y: 540, button: 'left', clickCount: 1 });
await cdp.send('Input.dispatchMouseEvent', { type: 'mouseReleased', x: 960, y: 540, button: 'left', clickCount: 1 });

try {
    const btns = await page.$$('button, [class*="play"], [id*="play"], [class*="server"], [class*="hoster"]');
    console.log(`Clicking ${Math.min(btns.length, 15)} element(s)...`);
    for (const b of btns.slice(0, 15)) { try { await b.click({ delay: 30 }); } catch {} }
} catch {}

console.log("\nWaiting 30s for streams...");
await new Promise(r => setTimeout(r, 30000));

// ============ RESULTS ============
const captured = await page.evaluate(() => ({
    fetches: window.__capture.fetches,
    iframes: window.__capture.iframes,
    hosters: [...window.__capture.hosters],
    m3u8: [...window.__capture.m3u8],
}));

console.log("\n" + "=".repeat(60));
console.log("=== RESULTS ===");
console.log("=".repeat(60));
console.log(`\nNavigation chain:`);
navChain.forEach((u, i) => console.log(`  ${i+1}. ${u.slice(0, 120)}`));

console.log(`\nAll fetches (${captured.fetches.length}):`);
captured.fetches.slice(0, 30).forEach(f => console.log(`  ${f.method} ${f.url.slice(0, 140)}`));

console.log(`\nFinal iframes (${state.iframes.length}):`);
state.iframes.forEach(f => console.log(`  ${f.src.slice(0, 180)}`));

console.log(`\nFinal videos (${state.videos.length}):`);
state.videos.forEach(v => console.log(`  src=${v.src.slice(0,100)} currentSrc=${v.currentSrc.slice(0,100)} MS=${v.srcObject}`));

console.log(`\nM3U8 network requests: ${networkM3u8.size}`);
networkM3u8.forEach(u => console.log(`  ${u.slice(0, 160)}`));

console.log(`\nHoster domains detected: ${[...networkHosters].join(', ') || 'NONE'}`);
console.log(`\nJSON APIs called: ${apiBodies.length}`);

if (networkM3u8.size > 0) {
    console.log("\n=== Checking resolutions ===");
    const firstUrl = [...networkM3u8][0];
    try {
        const r = await fetch(firstUrl, { headers: { 'User-Agent': 'Mozilla/5.0' } });
        const text = await r.text();
        const res = [...text.matchAll(/RESOLUTION=(\d+x\d+)/g)].map(m => m[1]);
        console.log(`First m3u8: ${firstUrl.slice(0, 100)}`);
        console.log(`Resolutions: ${res.length ? res.join(', ') : 'single stream'}`);
    } catch (e) {
        console.log(`error: ${e.message}`);
    }
}

await browser.close();
console.log("\n=== DONE ===");
