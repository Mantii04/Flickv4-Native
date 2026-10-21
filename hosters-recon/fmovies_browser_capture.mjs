import puppeteer from 'puppeteer';

const URL = "https://fmoviesco.net/movie/hannibal-2001-29740x/";

console.log(`=== Browser capture: ${URL} ===\n`);

const browser = await puppeteer.launch({
    executablePath: '/data/data/com.termux/files/usr/bin/chromium-browser',
    headless: 'new',
    args: [
        '--no-sandbox', '--disable-setuid-sandbox',
        '--disable-dev-shm-usage', '--disable-gpu',
        '--autoplay-policy=no-user-gesture-required',
    ],
});

const page = await browser.newPage();
await page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36');

// ============ Hooks installed BEFORE page loads ============
await page.evaluateOnNewDocument(() => {
    window.__capture = { fetches: [], xhrs: [], iframes: [], hosters: new Set(), m3u8: new Set() };

    // Hook fetch
    const origFetch = window.fetch;
    window.fetch = async (...args) => {
        const url = typeof args[0] === 'string' ? args[0] : (args[0]?.url || '');
        const opts = args[1] || {};
        window.__capture.fetches.push({ url, method: opts.method || 'GET', body: (opts.body || '').toString().slice(0, 500) });

        // Hoster detection
        ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud','voe','vidmoly','luluvdo','streamwish','streamhg','streamsb','streamlare','vidoza','waaw','netu']
            .forEach(h => { if (url.toLowerCase().includes(h)) window.__capture.hosters.add(h); });
        if (url.includes('.m3u8')) window.__capture.m3u8.add(url);

        return origFetch(...args);
    };

    // Hook XHR
    const OrigXHR = window.XMLHttpRequest;
    window.XMLHttpRequest = function() {
        const xhr = new OrigXHR();
        const origOpen = xhr.open;
        const origSend = xhr.send;
        let _method, _url;
        xhr.open = function(m, u) {
            _method = m; _url = u;
            ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud']
                .forEach(h => { if (u.toLowerCase().includes(h)) window.__capture.hosters.add(h); });
            if (u.includes('.m3u8')) window.__capture.m3u8.add(u);
            return origOpen.apply(xhr, arguments);
        };
        xhr.send = function(body) {
            window.__capture.xhrs.push({ url: _url, method: _method, body: (body||'').toString().slice(0, 500) });
            return origSend.apply(xhr, arguments);
        };
        return xhr;
    };

    // MutationObserver for iframe injections
    document.addEventListener('DOMContentLoaded', () => {
        const observer = new MutationObserver(muts => {
            muts.forEach(m => m.addedNodes.forEach(n => {
                if (n.tagName === 'IFRAME') {
                    window.__capture.iframes.push(n.src || '(no src)');
                }
                if (n.querySelectorAll) {
                    n.querySelectorAll('iframe').forEach(f => window.__capture.iframes.push(f.src || '(no src)'));
                }
            }));
        });
        observer.observe(document.body, { childList: true, subtree: true });
    });
});

// ============ Network-level capture ============
const networkM3u8 = new Set();
const networkHosters = new Set();
const apiCalls = [];

page.on('response', async (res) => {
    const url = res.url();
    const ct = (res.headers()['content-type'] || '').toLowerCase();

    if (url.includes('.m3u8') || ct.includes('mpegurl') || ct.includes('dash')) {
        networkM3u8.add(url);
        console.log(`[M3U8] ${url.slice(0, 180)}`);
    }

    ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud','voe','vidmoly','luvluvdo','streamwish','streamhg','embed.su','multiembed']
        .forEach(h => { if (url.toLowerCase().includes(h)) {
            networkHosters.add(h);
            console.log(`[HOSTER:${h}] ${url.slice(0, 180)}`);
        }});

    if ((url.includes('/ajax/') || url.includes('/api/') || url.includes('admin-ajax')) && ct.includes('json')) {
        apiCalls.push({ url, ct });
        try {
            const body = await res.text();
            if (body.length < 3000) {
                console.log(`[API] ${url.slice(0, 150)}`);
                console.log(`   ${body.slice(0, 500)}`);
            }
        } catch {}
    }
});

// ============ Load the page ============
console.log("Loading page...");
try {
    await page.goto(URL, { waitUntil: 'networkidle2', timeout: 45000 });
    console.log("Page loaded.\n");
} catch (e) {
    console.log(`goto: ${e.message}\n`);
}

await new Promise(r => setTimeout(r, 3000));

// ============ Dump page state ============
const state = await page.evaluate(() => ({
    title: document.title,
    url: location.href,
    iframes: [...document.querySelectorAll('iframe')].map(f => f.src || '(no src)'),
    videos: [...document.querySelectorAll('video')].map(v => ({
        src: v.src || '(none)',
        currentSrc: v.currentSrc || '(none)',
        srcObject: v.srcObject ? 'MediaSource' : null,
        readyState: v.readyState,
    })),
    buttons: [...document.querySelectorAll('button, [class*="play"], [id*="play"], [class*="player"]')]
        .slice(0, 15)
        .map(b => ({ tag: b.tagName, text: (b.textContent || '').trim().slice(0, 40), cls: (b.className || '').toString().slice(0, 60), id: b.id })),
}));
console.log("=== Page state ===");
console.log(JSON.stringify(state, null, 2));

// ============ Real mouse click at center ============
console.log("\n=== Real mouse click (viewport center) ===");
const cdp = await page.createCDPSession();
const vp = page.viewport() || { width: 1280, height: 720 };
const cx = vp.width / 2, cy = vp.height / 2;
await cdp.send('Input.dispatchMouseEvent', { type: 'mouseMoved', x: cx, y: cy });
await cdp.send('Input.dispatchMouseEvent', { type: 'mousePressed', x: cx, y: cy, button: 'left', clickCount: 1 });
await cdp.send('Input.dispatchMouseEvent', { type: 'mouseReleased', x: cx, y: cy, button: 'left', clickCount: 1 });

// Also try clicking every plausible play button
try {
    const btns = await page.$$('button, [class*="play"], [id*="play"], [class*="player"]');
    console.log(`Clicking ${Math.min(btns.length, 10)} button(s)...`);
    for (const b of btns.slice(0, 10)) { try { await b.click({ delay: 50 }); } catch {} }
} catch {}

// ============ Wait for player to initialize ============
console.log("\nWaiting 25s for player to load stream...");
await new Promise(r => setTimeout(r, 25000));

// ============ Pull captured data ============
const captured = await page.evaluate(() => ({
    fetches: window.__capture.fetches,
    xhrs: window.__capture.xhrs,
    iframes: window.__capture.iframes,
    hosters: [...window.__capture.hosters],
    m3u8: [...window.__capture.m3u8],
}));

console.log("\n" + "=".repeat(60));
console.log("=== JS-level captures ===");
console.log("=".repeat(60));

console.log(`\n[Fetches: ${captured.fetches.length}]`);
captured.fetches.forEach(f => console.log(`  ${f.method} ${f.url.slice(0, 160)}${f.body ? ' body=' + f.body.slice(0, 80) : ''}`));

console.log(`\n[XHRs: ${captured.xhrs.length}]`);
captured.xhrs.forEach(x => console.log(`  ${x.method} ${x.url.slice(0, 160)}`));

console.log(`\n[Iframes injected: ${captured.iframes.length}]`);
captured.iframes.forEach(f => console.log(`  ${f.slice(0, 200)}`));

console.log(`\n[Hosters detected: ${captured.hosters.join(', ') || 'none'}]`);
console.log(`[m3u8 via JS: ${captured.m3u8.length}]`);
captured.m3u8.forEach(u => console.log(`  ${u.slice(0, 180)}`));

// ============ Final DOM check ============
const finalDOM = await page.evaluate(() => ({
    iframes: [...document.querySelectorAll('iframe')].map(f => ({ src: f.src, id: f.id, cls: f.className })),
    videoSrcs: [...document.querySelectorAll('video')].map(v => v.currentSrc || v.src || ''),
    playerHTML: (document.querySelector('.player, #player, [class*="player-frame"], [class*="embed"]') || {}).outerHTML?.slice(0, 1000) || 'not found',
}));
console.log("\n=== Final DOM ===");
console.log(JSON.stringify(finalDOM, null, 2));

// ============ Network-level summary ============
console.log("\n" + "=".repeat(60));
console.log("=== Network-level summary ===");
console.log("=".repeat(60));
console.log(`M3U8 requests: ${networkM3u8.size}`);
networkM3u8.forEach(u => console.log(`  ${u.slice(0, 200)}`));
console.log(`\nHoster domains hit: ${[...networkHosters].join(', ') || 'none'}`);
console.log(`\nJSON API calls: ${apiCalls.length}`);

// ============ If we got m3u8, fetch master to check resolution ============
if (networkM3u8.size > 0) {
    console.log("\n=== Checking resolutions ===");
    const firstUrl = [...networkM3u8][0];
    try {
        const r = await fetch(firstUrl, { headers: { 'User-Agent': 'Mozilla/5.0' } });
        const text = await r.text();
        const res = [...text.matchAll(/RESOLUTION=(\d+x\d+)/g)].map(m => m[1]);
        console.log(`First m3u8: ${firstUrl.slice(0, 100)}`);
        console.log(`Resolutions: ${res.length ? res.join(', ') : 'single-stream (no master tags)'}`);
        if (res.some(x => x.includes('1920'))) console.log("⭐ 1080p FOUND ⭐");
    } catch (e) {
        console.log(`m3u8 fetch error: ${e.message}`);
    }
}

await browser.close();
console.log("\n=== DONE ===");
