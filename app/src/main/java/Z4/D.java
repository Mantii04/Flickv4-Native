package Z4;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import h5.AbstractC0995i;
import h5.AbstractC1000n;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public final class D extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public int f4522a;

    /* renamed from: b, reason: collision with root package name */
    public int f4523b;

    /* renamed from: c, reason: collision with root package name */
    public final Movie f4524c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4525d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4526e = "https://search.rlsbb.to";

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4527f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f4528g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4529h;

    /* renamed from: i, reason: collision with root package name */
    public int f4530i;

    /* renamed from: j, reason: collision with root package name */
    public WebView f4531j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4532k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4533l;

    public D(Context context, Movie movie, U4.f fVar) {
        new ArrayList();
        this.f4527f = true;
        this.f4528g = new ArrayList();
        this.f4529h = false;
        this.f4530i = 0;
        this.f4532k = false;
        this.f4533l = false;
        this.f4525d = context;
        this.f4524c = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    public final void e(String str, boolean z6) {
        ArrayList arrayList = this.f4528g;
        arrayList.add("NiTROFLARE.".toLowerCase());
        arrayList.add("RAPiDGATOR.".toLowerCase());
        arrayList.add("FIKPER.".toLowerCase());
        try {
            Iterator<org.jsoup.nodes.b> it = g6.e.parse(str).getElementsByTag("A").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b next = it.next();
                next.text().toLowerCase().getClass();
                String trim = next.attr("href").toLowerCase().trim();
                if (!trim.isEmpty() && trim.length() >= 15) {
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        if (trim.contains((String) it2.next())) {
                            if (this.f4530i < 50) {
                                String attr = next.attr("href");
                                if (!attr.contains("protected.")) {
                                    VideoSource videoSource = new VideoSource();
                                    videoSource.streamable = false;
                                    videoSource.rd_checked = true;
                                    videoSource.isPremiumSupported = true;
                                    videoSource.external_link = true;
                                    videoSource.streamUrl = attr;
                                    try {
                                        addLink(videoSource);
                                        this.f4530i++;
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (this.f4530i != 0 || this.f4529h) {
                return;
            }
            this.f4529h = true;
            String str2 = null;
            try {
                org.jsoup.nodes.b last = g6.e.parse(str).getElementsByClass("more-link").last();
                if (last != null) {
                    str2 = last.attr("href");
                }
            } catch (Exception unused2) {
            }
            if (str2 != null) {
                new z(this, str2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4533l = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2, int i7, int i8) {
        String replace;
        this.f4522a = i7;
        this.f4523b = i8;
        this.torrentServiceType = i2 == 1 ? BaseProcessor$TorrentServiceType.f16066b : BaseProcessor$TorrentServiceType.f16067e;
        Context context = this.f4525d;
        try {
            WebView webView = new WebView(context);
            this.f4531j = webView;
            webView.setWebViewClient(new C(this));
            this.f4531j.getSettings().setAllowContentAccess(true);
            this.f4531j.getSettings().setJavaScriptEnabled(true);
            String replace2 = this.f4524c.getTitle().replace("&", "");
            String str = AbstractC1000n.removeSpecialCharsKeepSpace(replace2) + StringUtils.SPACE + ("S" + AbstractC1000n.formatSeasonnumber(this.f4522a) + "E" + AbstractC1000n.formatSeasonnumber(this.f4523b));
            String o6 = A.i.o(new StringBuilder(), this.f4526e, "/?s=");
            try {
                replace = URLEncoder.encode(str, StandardCharsets.UTF_8.toString());
            } catch (Exception unused) {
                replace = o6.replace(StringUtils.SPACE, "+");
            }
            new z(this, A.i.B(o6, replace)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception unused2) {
            AbstractC0995i.makeToastLong(context, "Error initializing mobule. Please restart your device", true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(A a7) {
        String str;
        if (this.f4532k || a7 == null || (str = a7.f4519a) == null) {
            return;
        }
        this.f4532k = true;
        try {
            this.f4531j.loadUrl(str);
        } catch (Exception unused) {
        }
        new Handler().postDelayed(new A3.d(this, 19), 1000L);
    }
}
