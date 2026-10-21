package Z4;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
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
public final class t extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4588a;

    /* renamed from: c, reason: collision with root package name */
    public int f4590c;

    /* renamed from: d, reason: collision with root package name */
    public int f4591d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f4592e;

    /* renamed from: f, reason: collision with root package name */
    public String f4593f;

    /* renamed from: j, reason: collision with root package name */
    public WebView f4597j;

    /* renamed from: b, reason: collision with root package name */
    public final String f4589b = "https://rmz.cr";

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f4594g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public int f4595h = 0;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4596i = true;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4598k = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4599l = false;

    public t(Context context, Movie movie, U4.f fVar) {
        this.f4592e = context;
        this.f4588a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    public static String parseLink(String str) {
        try {
            return str.split("--")[2].replace(">", "").trim().replace("<!", "").trim();
        } catch (Exception unused) {
            return null;
        }
    }

    public final void e(String str, boolean z6) {
        ArrayList arrayList;
        Movie movie;
        try {
            Iterator<org.jsoup.nodes.b> it = g6.e.parse(str).getElementsByClass("title").iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                arrayList = this.f4594g;
                movie = this.f4588a;
                if (!hasNext) {
                    break;
                }
                org.jsoup.nodes.b next = it.next();
                String lowerCase = next.text().toLowerCase();
                String attr = next.attr("href");
                if (attr.contains("/release/") && !lowerCase.isEmpty()) {
                    String str2 = movie.getTitle() + StringUtils.SPACE + movie.getYear();
                    String replace = movie.getTitle().replace(":", "").replace(" - ", StringUtils.SPACE).replace("-", StringUtils.SPACE);
                    String str3 = replace + StringUtils.SPACE + movie.getYear();
                    String str4 = replace + " (" + movie.getYear() + ")";
                    if (!AbstractC1000n.removeSpecialChars(lowerCase).toLowerCase().contains(AbstractC1000n.removeSpecialChars(movie.getTitle() + StringUtils.SPACE + this.f4593f).toLowerCase()) && !lowerCase.contains(str3.toLowerCase()) && !lowerCase.contains(str4.toLowerCase()) && !lowerCase.contains(str2.toLowerCase())) {
                    }
                    if (attr.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                        attr = this.f4589b + attr;
                    }
                    arrayList.add(attr);
                }
            }
            if (movie.getMovieId() == 225634) {
                arrayList.add("https://rmz.cr/monster-the-jeffrey-dahmer-story");
            }
            if (arrayList.size() <= 0 || this.f4598k) {
                return;
            }
            if (z6) {
                this.f4596i = false;
                this.f4597j.loadUrl((String) arrayList.get(this.f4595h));
                this.f4595h++;
            } else {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    f(((h6.h) g6.e.connect((String) it2.next())).get().html(), false);
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void f(String str, boolean z6) {
        Iterator<org.jsoup.nodes.b> it = g6.e.parse(str).getElementsByTag(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE).iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.b next = it.next();
            if (next.attr("class") != null && next.attr("class").length() > 0) {
                VideoSource videoSource = new VideoSource();
                videoSource.streamable = false;
                videoSource.isPremiumSupported = true;
                videoSource.external_link = true;
                org.jsoup.nodes.b first = next.getElementsByTag("A").first();
                if (first != null) {
                    videoSource.streamUrl = first.attr("href");
                } else {
                    videoSource.streamUrl = parseLink(next.toString());
                }
                if (videoSource.streamUrl != null) {
                    try {
                        addLink(videoSource);
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (z6) {
            ArrayList arrayList = this.f4594g;
            if (arrayList.size() <= 0 || this.f4595h >= arrayList.size()) {
                return;
            }
            this.f4596i = false;
            this.f4597j.loadUrl((String) arrayList.get(this.f4595h));
            this.f4595h++;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4598k = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2, int i7) {
        String replace;
        this.f4590c = i2;
        this.f4591d = i7;
        Context context = this.f4592e;
        try {
            WebView webView = new WebView(context);
            this.f4597j = webView;
            webView.setWebViewClient(new s(this));
            this.f4597j.getSettings().setAllowContentAccess(true);
            this.f4597j.getSettings().setJavaScriptEnabled(true);
            this.f4593f = "S" + AbstractC1000n.formatSeasonnumber(this.f4590c) + "E" + AbstractC1000n.formatSeasonnumber(this.f4591d);
            String str = this.f4588a.getTitle().replace("&", "") + StringUtils.SPACE + this.f4593f;
            String o6 = A.i.o(new StringBuilder(), this.f4589b, "/search/");
            try {
                replace = URLEncoder.encode(str, StandardCharsets.UTF_8.toString());
            } catch (Exception unused) {
                replace = o6.replace(StringUtils.SPACE, "%20");
            }
            new p(this, A.i.C(o6, replace, "/releases")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception unused2) {
            AbstractC0995i.makeToastLong(context, "Error initializing mobule. Please restart your device", true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(q qVar) {
        String str;
        if (this.f4599l || qVar == null || (str = qVar.f4585a) == null) {
            return;
        }
        this.f4599l = true;
        try {
            this.f4597j.loadUrl(str);
        } catch (Exception unused) {
        }
        new Handler().postDelayed(new A3.d(this, 17), 1000L);
    }
}
