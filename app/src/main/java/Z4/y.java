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
public final class y extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4605a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f4606b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4607c = "https://search.rlsbb.to";

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4608d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f4609e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4610f;

    /* renamed from: g, reason: collision with root package name */
    public int f4611g;

    /* renamed from: h, reason: collision with root package name */
    public WebView f4612h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4613i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4614j;

    public y(Context context, Movie movie, U4.f fVar) {
        new ArrayList();
        this.f4608d = true;
        this.f4609e = new ArrayList();
        this.f4610f = false;
        this.f4611g = 0;
        this.f4613i = false;
        this.f4614j = false;
        this.f4606b = context;
        this.f4605a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    public final void e(String str, boolean z6) {
        ArrayList arrayList = this.f4609e;
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
                            if (this.f4611g < 50) {
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
                                        this.f4611g++;
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (this.f4611g != 0 || this.f4610f) {
                return;
            }
            this.f4610f = true;
            String str2 = null;
            try {
                org.jsoup.nodes.b last = g6.e.parse(str).getElementsByClass("more-link").last();
                if (last != null) {
                    str2 = last.attr("href");
                }
            } catch (Exception unused2) {
            }
            if (str2 != null) {
                new u(this, str2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4614j = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2) {
        String replace;
        this.torrentServiceType = i2 == 1 ? BaseProcessor$TorrentServiceType.f16066b : BaseProcessor$TorrentServiceType.f16067e;
        Context context = this.f4606b;
        try {
            WebView webView = new WebView(context);
            this.f4612h = webView;
            webView.setWebViewClient(new x(this));
            this.f4612h.getSettings().setAllowContentAccess(true);
            this.f4612h.getSettings().setJavaScriptEnabled(true);
            StringBuilder sb = new StringBuilder();
            Movie movie = this.f4605a;
            sb.append(movie.getTitle().replace("&", ""));
            sb.append(StringUtils.SPACE);
            sb.append(movie.getYear());
            String removeSpecialCharsKeepSpace = AbstractC1000n.removeSpecialCharsKeepSpace(sb.toString());
            String o6 = A.i.o(new StringBuilder(), this.f4607c, "/?s=");
            try {
                replace = URLEncoder.encode(removeSpecialCharsKeepSpace, StandardCharsets.UTF_8.toString());
            } catch (Exception unused) {
                replace = o6.replace(StringUtils.SPACE, "+");
            }
            new u(this, A.i.B(o6, replace)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception unused2) {
            AbstractC0995i.makeToastLong(context, "Error initializing mobule. Please restart your device for better links resolution.", true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(v vVar) {
        String str;
        if (this.f4613i || vVar == null || (str = vVar.f4602a) == null) {
            return;
        }
        this.f4613i = true;
        try {
            this.f4612h.loadUrl(str);
        } catch (Exception unused) {
        }
        new Handler().postDelayed(new A3.d(this, 18), 1000L);
    }
}
