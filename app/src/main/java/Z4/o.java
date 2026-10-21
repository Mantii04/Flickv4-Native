package Z4;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public final class o extends flix.com.vision.processors.english.m {

    /* renamed from: a, reason: collision with root package name */
    public final Movie f4575a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f4576b;

    /* renamed from: f, reason: collision with root package name */
    public WebView f4580f;

    /* renamed from: c, reason: collision with root package name */
    public final String f4577c = "https://rmz.cr";

    /* renamed from: d, reason: collision with root package name */
    public boolean f4578d = false;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f4579e = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f4581g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public int f4582h = 0;

    public o(Context context, Movie movie, U4.f fVar) {
        this.f4576b = context;
        this.f4575a = movie;
        this.callBack = fVar;
        EventBus.getDefault().register(this);
    }

    public final void e(String str) {
        if (this.f4578d) {
            return;
        }
        Matcher matcher = Pattern.compile("https?://(?:www\\.)?(?:nitroflare\\.com|rapidgator\\.net|rapidrar\\.[a-z]+|clicknupload\\.[a-z]+|frdl\\.io|1fichier\\.com|ddownload\\.com|turbobit\\.net)[^\\s\"'<>]+").matcher(str);
        while (matcher.find() && !this.f4578d) {
            String group = matcher.group();
            if (this.f4579e.add(group)) {
                VideoSource videoSource = new VideoSource();
                videoSource.streamable = false;
                videoSource.isPremiumSupported = true;
                videoSource.external_link = true;
                videoSource.streamUrl = group;
                addLink(videoSource);
            }
        }
    }

    public final void f(String str, boolean z6) {
        try {
            j6.h parse = g6.e.parse(str);
            ArrayList arrayList = this.f4581g;
            arrayList.clear();
            Elements select = parse.select("a.title[href*=/release/]");
            int min = Math.min(3, select.size());
            for (int i2 = 0; i2 < min; i2++) {
                String attr = select.get(i2).attr("href");
                if (attr.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                    attr = this.f4577c + attr;
                }
                arrayList.add(attr);
            }
            if (!arrayList.isEmpty() && !this.f4578d) {
                if (!z6) {
                    Observable.fromIterable(arrayList).flatMap(new A4.s(2)).observeOn(AndroidSchedulers.mainThread()).subscribe(new E4.c(this, 4), new A4.c(15));
                } else {
                    this.f4582h = 0;
                    this.f4580f.loadUrl((String) arrayList.get(0));
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(T4.e eVar) {
        this.f4578d = true;
        WebView webView = this.f4580f;
        if (webView != null) {
            webView.destroy();
            this.f4580f = null;
        }
        EventBus.getDefault().unregister(this);
    }

    public void process(int i2) {
        this.torrentServiceType = i2 == 1 ? BaseProcessor$TorrentServiceType.f16066b : BaseProcessor$TorrentServiceType.f16067e;
        Movie movie = this.f4575a;
        String str = movie.imdbID;
        if (str == null || str.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4577c);
        sb.append("/search/");
        final String o6 = A.i.o(sb, movie.imdbID, "/releases");
        final int i7 = 0;
        final int i8 = 1;
        Observable.fromCallable(new k(o6, 0)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: Z4.l

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ o f4570e;

            {
                this.f4570e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i7) {
                    case 0:
                        String str2 = (String) obj;
                        o oVar = this.f4570e;
                        if (!oVar.f4578d) {
                            if (!str2.contains("Checking if the site connection is secure") && !str2.contains("Just a moment...")) {
                                oVar.f(str2, false);
                                break;
                            } else {
                                new Handler(Looper.getMainLooper()).post(new A4.n(15, oVar, o6));
                                break;
                            }
                        }
                        break;
                    default:
                        o oVar2 = this.f4570e;
                        if (!oVar2.f4578d) {
                            new Handler(Looper.getMainLooper()).post(new A4.n(15, oVar2, o6));
                            break;
                        }
                        break;
                }
            }
        }, new Consumer(this) { // from class: Z4.l

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ o f4570e;

            {
                this.f4570e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i8) {
                    case 0:
                        String str2 = (String) obj;
                        o oVar = this.f4570e;
                        if (!oVar.f4578d) {
                            if (!str2.contains("Checking if the site connection is secure") && !str2.contains("Just a moment...")) {
                                oVar.f(str2, false);
                                break;
                            } else {
                                new Handler(Looper.getMainLooper()).post(new A4.n(15, oVar, o6));
                                break;
                            }
                        }
                        break;
                    default:
                        o oVar2 = this.f4570e;
                        if (!oVar2.f4578d) {
                            new Handler(Looper.getMainLooper()).post(new A4.n(15, oVar2, o6));
                            break;
                        }
                        break;
                }
            }
        });
    }
}
