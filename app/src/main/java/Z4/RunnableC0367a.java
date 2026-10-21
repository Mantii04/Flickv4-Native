package Z4;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import h5.AbstractC1000n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* renamed from: Z4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0367a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4534b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f4535e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f4536f;

    public /* synthetic */ RunnableC0367a(e eVar, String str, int i2) {
        this.f4534b = i2;
        this.f4535e = eVar;
        this.f4536f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        switch (this.f4534b) {
            case 0:
                e eVar = this.f4535e;
                if (eVar.f4541a == null) {
                    Context context = eVar.f4543c;
                    WebView webView = new WebView(context);
                    eVar.f4541a = webView;
                    WebSettings settings = webView.getSettings();
                    settings.setJavaScriptEnabled(true);
                    settings.setDomStorageEnabled(true);
                    settings.setDatabaseEnabled(true);
                    settings.setCacheMode(-1);
                    settings.setUserAgentString("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36");
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(HttpStatus.SC_BAD_REQUEST, HttpStatus.SC_BAD_REQUEST);
                    eVar.f4541a.setAlpha(0.01f);
                    if ((context instanceof Activity) && (viewGroup = (ViewGroup) ((Activity) context).findViewById(R.id.content)) != null) {
                        viewGroup.addView(eVar.f4541a, layoutParams);
                    }
                }
                HashMap q6 = b.c.q(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.9", HttpHeaders.ACCEPT, "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8");
                eVar.f4541a.setWebViewClient(new C0370d(eVar));
                eVar.f4541a.loadUrl(this.f4536f, q6);
                break;
            default:
                e eVar2 = this.f4535e;
                boolean z6 = eVar2.f4546f;
                String str = this.f4536f;
                String str2 = eVar2.f4544d;
                if (!z6) {
                    if (eVar2.f4547g <= 40) {
                        ArrayList arrayList = new ArrayList();
                        Iterator<org.jsoup.nodes.b> it = g6.e.parse(str).getElementsByTag("A").iterator();
                        while (it.hasNext()) {
                            org.jsoup.nodes.b next = it.next();
                            if (eVar2.f4547g <= 10) {
                                String attr = next.attr("href");
                                if (!attr.startsWith(RemoteSettings.FORWARD_SLASH_STRING) && !attr.contains(str2) && next.text().length() >= 10 && !attr.contains(".rar") && App.isRdSupported(attr)) {
                                    eVar2.f4547g++;
                                    VideoSource videoSource = new VideoSource();
                                    videoSource.streamable = false;
                                    videoSource.rd_checked = true;
                                    videoSource.isPremiumSupported = true;
                                    videoSource.external_link = true;
                                    videoSource.streamUrl = attr;
                                    try {
                                        eVar2.addLink(videoSource);
                                        arrayList.add(videoSource);
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                    new Handler(Looper.getMainLooper()).post(new RunnableC0369c(eVar2, 1));
                    break;
                } else {
                    Movie movie = eVar2.f4542b;
                    try {
                        Iterator<org.jsoup.nodes.b> it2 = g6.e.parse(str).getElementsByTag("A").iterator();
                        while (true) {
                            boolean hasNext = it2.hasNext();
                            ArrayList arrayList2 = eVar2.f4545e;
                            if (!hasNext) {
                                if (arrayList2.size() > 0) {
                                    eVar2.f4546f = false;
                                    new Handler(Looper.getMainLooper()).post(new RunnableC0369c(eVar2, 2));
                                    break;
                                }
                            } else {
                                org.jsoup.nodes.b next2 = it2.next();
                                String lowerCase = next2.text().toLowerCase();
                                if (!lowerCase.isEmpty() && lowerCase.length() >= 15) {
                                    String attr2 = next2.attr("href");
                                    String str3 = movie.getTitle() + StringUtils.SPACE + movie.getYear();
                                    String replace = movie.getTitle().replace(":", "").replace(" - ", StringUtils.SPACE).replace("-", StringUtils.SPACE);
                                    String str4 = replace + StringUtils.SPACE + movie.getYear();
                                    String removeSpecialChars = AbstractC1000n.removeSpecialChars(movie.getTitle());
                                    String removeSpecialChars2 = AbstractC1000n.removeSpecialChars(lowerCase);
                                    StringBuilder sb = new StringBuilder();
                                    Iterator<org.jsoup.nodes.b> it3 = it2;
                                    sb.append(replace.replace("&", StringUtils.SPACE));
                                    sb.append(StringUtils.SPACE);
                                    sb.append(movie.getYear());
                                    String sb2 = sb.toString();
                                    if (!removeSpecialChars2.toLowerCase().contains(removeSpecialChars.toLowerCase())) {
                                        if (!lowerCase.contains(str4.toLowerCase())) {
                                            if (!lowerCase.contains(sb2.toLowerCase())) {
                                                if (lowerCase.contains(str3.toLowerCase())) {
                                                }
                                                it2 = it3;
                                            }
                                        }
                                    }
                                    if (attr2.startsWith(RemoteSettings.FORWARD_SLASH_STRING)) {
                                        attr2 = str2 + attr2;
                                    }
                                    arrayList2.add(attr2);
                                    it2 = it3;
                                }
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                break;
        }
    }
}
