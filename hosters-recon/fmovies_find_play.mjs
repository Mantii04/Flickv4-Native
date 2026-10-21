import puppeteer from 'puppeteer';

const TARGET = "https://fmoviesco.net/movie/hannibal-2001-29740x/";

const browser = await puppeteer.launch({
    executablePath: '/data/data/com.termux/files/usr/bin/chromium-browser',
    headless: 'new',
    args: ['--no-sandbox','--disable-setuid-sandbox','--disable-dev-shm-usage',
           '--disable-blink-features=AutomationControlled','--autoplay-policy=no-user-gesture-required'],
    ignoreDefaultArgs: ['--enable-automation'],
});

const page = await browser.newPage();
await page.evaluateOnNewDocument(() => {
    Object.defineProperty(navigator, 'webdriver', { get: () => undefined });
    window.chrome = { runtime: {} };
    Object.defineProperty(navigator, 'plugins', { get: () => [{name:'PDF Viewer'}] });
    Object.defineProperty(navigator, 'languages', { get: () => ['en-US','en'] });
});
await page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');

await page.goto(TARGET, { waitUntil: 'domcontentloaded', timeout: 30000 });
await new Promise(r => setTimeout(r, 3000));

// ============ DUMP ALL LINKS AND BUTTONS ============
const inventory = await page.evaluate(() => {
    const allLinks = [...document.querySelectorAll('a')].map(a => ({
        href: a.href,
        text: (a.textContent || '').trim().slice(0, 60),
        cls: (a.className || '').toString().slice(0, 80),
        id: a.id,
        target: a.target,
        rel: a.rel,
    })).filter(a => a.href && !a.href.startsWith('javascript:'));

    const allButtons = [...document.querySelectorAll('button, [role="button"], [onclick]')].map(b => ({
        tag: b.tagName,
        text: (b.textContent || '').trim().slice(0, 40),
        cls: (b.className || '').toString().slice(0, 80),
        id: b.id,
        onclick: b.getAttribute('onclick') || '',
        datatype: b.getAttribute('data-type') || '',
        datapost: b.getAttribute('data-post') || '',
        dataid: b.getAttribute('data-id') || '',
        datanume: b.getAttribute('data-nume') || '',
    }));

    // Look for any element with class/id containing play/watch/server/embed
    const playerCandidates = [...document.querySelectorAll('*')].filter(el => {
        const s = (el.className || '').toString() + ' ' + (el.id || '') + ' ' + (el.getAttribute('data-action') || '');
        return /play|watch|server|embed|stream|hoster/i.test(s);
    }).slice(0, 30).map(el => ({
        tag: el.tagName,
        id: el.id,
        cls: (el.className || '').toString().slice(0, 100),
        html: el.outerHTML.slice(0, 200),
    }));

    // Check if there's a hidden script tag with player data
    const scripts = [...document.querySelectorAll('script')].map(s => s.textContent).filter(t => t && /play|embed|server|filemoon|source|m3u8/i.test(t)).slice(0, 5);

    return { allLinks, allButtons, playerCandidates, scripts };
});

console.log("=== ALL LINKS (filtered for watch/play/embed) ===");
inventory.allLinks.filter(l =>
    /watch|play|embed|server|stream|movie|tv/i.test(l.href)
).forEach(l => console.log(`  ${l.href.slice(0,150)}  [${l.text}]`));

console.log(`\n=== ALL LINKS (${inventory.allLinks.length} total, first 30) ===`);
inventory.allLinks.slice(0, 30).forEach(l => console.log(`  ${l.href.slice(0,120)}  [${l.text.slice(0,40)}]`));

console.log(`\n=== ALL BUTTONS (${inventory.allButtons.length}) ===`);
inventory.allButtons.forEach(b => {
    if (b.text || b.onclick || b.datatype || b.datapost) {
        console.log(`  <${b.tag}> text="${b.text}" onclick="${b.onclick.slice(0,60)}" data-post="${b.datapost}" data-nume="${b.datanume}" cls="${b.cls.slice(0,50)}"`);
    }
});

console.log(`\n=== PLAYER CANDIDATES (${inventory.playerCandidates.length}) ===`);
inventory.playerCandidates.forEach(p => console.log(`  <${p.tag}> id="${p.id}" cls="${p.cls.slice(0,80)}"`));

console.log(`\n=== SUSPICIOUS SCRIPT TAGS (${inventory.scripts.length}) ===`);
inventory.scripts.forEach((s, i) => {
    console.log(`\n--- script #${i} (${s.length} chars) ---`);
    console.log(s.slice(0, 800));
});

// ============ Find most likely play link ============
console.log("\n=== Finding play URLs ===");
const playUrls = inventory.allLinks.filter(l => 
    /\/watch|\/play|\/embed|server=|serverId|episodeId|movie-play/i.test(l.href)
);

if (playUrls.length > 0) {
    console.log(`Found ${playUrls.length} play URL(s). Following first...`);
    const playUrl = playUrls[0].href;
    console.log(`→ ${playUrl}`);
    
    // Install capture hooks
    const m3u8s = new Set();
    const hosters = new Set();
    page.on('response', async res => {
        const url = res.url();
        const ct = (res.headers()['content-type'] || '').toLowerCase();
        if (url.includes('.m3u8') || ct.includes('mpegurl')) {
            m3u8s.add(url);
            console.log(`[M3U8] ${url.slice(0, 160)}`);
        }
        ['filemoon','dood','streamtape','mixdrop','upcloud','vidcloud','voe','vidmoly','luluvdo','streamwish','streamhg']
            .forEach(h => { if (url.toLowerCase().includes(h)) { hosters.add(h); console.log(`[HOSTER:${h}] ${url.slice(0, 160)}`); }});
    });
    
    await page.goto(playUrl, { waitUntil: 'networkidle2', timeout: 30000 });
    await new Promise(r => setTimeout(r, 5000));
    
    // Click center
    const cdp = await page.createCDPSession();
    await cdp.send('Input.dispatchMouseEvent', { type: 'mouseMoved', x: 960, y: 540 });
    await cdp.send('Input.dispatchMouseEvent', { type: 'mousePressed', x: 960, y: 540, button: 'left', clickCount: 1 });
    await cdp.send('Input.dispatchMouseEvent', { type: 'mouseReleased', x: 960, y: 540, button: 'left', clickCount: 1 });
    
    console.log("Waiting 20s for stream...");
    await new Promise(r => setTimeout(r, 20000));
    
    const afterPlay = await page.evaluate(() => ({
        url: location.href,
        iframes: [...document.querySelectorAll('iframe')].map(f => f.src),
        videos: [...document.querySelectorAll('video')].map(v => ({ src: v.src, currentSrc: v.currentSrc, ms: !!v.srcObject })),
    }));
    console.log("\nAfter play page:");
    console.log(JSON.stringify(afterPlay, null, 2));
    console.log(`\nM3U8s: ${m3u8s.size}`);
    m3u8s.forEach(u => console.log(`  ${u.slice(0, 160)}`));
    console.log(`Hosters: ${[...hosters].join(', ') || 'none'}`);
} else {
    console.log("⚠️  No obvious play link. The play button must exist.");
    console.log("   Look at the LINKS section above for what's clickable on the page.");
}

await browser.close();
console.log("\n=== DONE ===");
