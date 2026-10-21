package Z4;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.App;
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
public final class j extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4554a;

    /* renamed from: c, reason: collision with root package name */
    public int f4556c;

    /* renamed from: d, reason: collision with root package name */
    public int f4557d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f4558e;

    /* renamed from: f, reason: collision with root package name */
    public String f4559f;

    /* renamed from: k, reason: collision with root package name */
    public WebView f4564k;

    /* renamed from: b, reason: collision with root package name */
    public final String f4555b = "https://www.scnsrc.me";

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f4560g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public int f4561h = 0;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4562i = true;

    /* renamed from: j, reason: collision with root package name */
    public int f4563j = 0;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4565l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4566m = false;

    public j(Context context, Movie movie, U4.f fVar) {
        this.f4558e = context;
        this.f4554a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    public final void e(String str, boolean z6) {
        ArrayList arrayList;
        Movie movie = this.f4554a;
        try {
            Iterator<org.jsoup.nodes.b> it = g6.e.parse(str).getElementsByTag("A").iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                arrayList = this.f4560g;
                if (!hasNext) {
                    break;
                }
                org.jsoup.nodes.b next = it.next();
                String lowerCase = next.text().toLowerCase();
                if (!lowerCase.isEmpty() && lowerCase.length() >= 12) {
                    String attr = next.attr("href");
                    String str2 = movie.getTitle() + StringUtils.SPACE + this.f4559f;
                    String replace = movie.getTitle().replace(":", "").replace(" - ", StringUtils.SPACE).replace("-", StringUtils.SPACE);
                    String str3 = replace + StringUtils.SPACE + this.f4559f;
                    String removeSpecialChars = AbstractC1000n.removeSpecialChars(movie.getTitle() + StringUtils.SPACE + this.f4559f);
                    String removeSpecialChars2 = AbstractC1000n.removeSpecialChars(lowerCase);
                    String str4 = replace.replace("&", StringUtils.SPACE) + StringUtils.SPACE + this.f4559f;
                    if (!removeSpecialChars2.toLowerCase().contains(removeSpecialChars.toLowerCase()) && !lowerCase.contains(str3.toLowerCase()) && !lowerCase.contains(str4.toLowerCase()) && !lowerCase.contains(str2.toLowerCase())) {
                    }
                    if (attr.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                        attr = this.f4555b + attr;
                    }
                    arrayList.add(attr);
                }
            }
            if (arrayList.size() <= 0 || this.f4566m) {
                return;
            }
            if (z6) {
                this.f4562i = false;
                this.f4564k.loadUrl((String) arrayList.get(this.f4561h));
                this.f4561h++;
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
        if (this.f4563j > 40) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<org.jsoup.nodes.b> it = g6.e.parse(str).getElementsByTag("A").iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.b next = it.next();
            if (this.f4563j > 40) {
                return;
            }
            String attr = next.attr("href");
            if (!attr.startsWith(RemoteSettings.FORWARD_SLASH_STRING) && !attr.contains(this.f4555b) && next.text().length() >= 10 && !attr.contains(".rar") && App.isRdSupported(attr)) {
                this.f4563j++;
                VideoSource videoSource = new VideoSource();
                videoSource.streamable = false;
                videoSource.rd_checked = true;
                videoSource.isPremiumSupported = true;
                videoSource.external_link = true;
                videoSource.streamUrl = attr;
                try {
                    addLink(videoSource);
                    arrayList.add(videoSource);
                } catch (Exception unused) {
                }
            }
        }
        if (z6) {
            ArrayList arrayList2 = this.f4560g;
            if (arrayList2.size() <= 0 || this.f4561h >= 2 || arrayList2.size() <= 1) {
                return;
            }
            this.f4562i = false;
            this.f4564k.loadUrl((String) arrayList2.get(this.f4561h));
            this.f4561h++;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4566m = true;
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2, int i7) {
        String replace;
        this.f4556c = i2;
        this.f4557d = i7;
        Context context = this.f4558e;
        try {
            WebView webView = new WebView(context);
            this.f4564k = webView;
            webView.setWebViewClient(new i(this));
            this.f4564k.getSettings().setAllowContentAccess(true);
            this.f4564k.getSettings().setJavaScriptEnabled(true);
            this.f4559f = "S" + AbstractC1000n.formatSeasonnumber(this.f4556c) + "E" + AbstractC1000n.formatSeasonnumber(this.f4557d);
            String removeSpecialCharsKeepSpace = AbstractC1000n.removeSpecialCharsKeepSpace(this.f4554a.getTitle().replace("&", "") + StringUtils.SPACE + this.f4559f);
            String o6 = A.i.o(new StringBuilder(), this.f4555b, "/?s=");
            try {
                replace = URLEncoder.encode(removeSpecialCharsKeepSpace, StandardCharsets.UTF_8.toString());
            } catch (Exception unused) {
                replace = o6.replace(StringUtils.SPACE, "%20");
            }
            new f(this, A.i.B(o6, replace)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (Exception unused2) {
            AbstractC0995i.makeToastLong(context, "Error initializing mobule. Please restart your device", true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(g gVar) {
        String str;
        if (this.f4565l || gVar == null || (str = gVar.f4551a) == null) {
            return;
        }
        this.f4565l = true;
        this.f4564k.loadUrl(str);
        new Handler().postDelayed(new A3.d(this, 16), 1000L);
    }
}
