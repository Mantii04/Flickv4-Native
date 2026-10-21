package flix.com.vision.processors.english;

import android.util.Log;
import android.webkit.WebView;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.models.VideoSource;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16103b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q f16104e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f16105f;

    public /* synthetic */ n(q qVar, String str, int i2) {
        this.f16103b = i2;
        this.f16104e = qVar;
        this.f16105f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16103b) {
            case 0:
                String str = this.f16105f;
                q qVar = this.f16104e;
                try {
                    if (qVar.f16113e == null) {
                        qVar.f16113e = new WebView(qVar.f16110b);
                    }
                    qVar.f16113e.getSettings().setJavaScriptEnabled(true);
                    qVar.f16113e.getSettings().setDomStorageEnabled(true);
                    qVar.f16113e.setWebViewClient(new p(qVar));
                    qVar.f16113e.loadUrl(str);
                    break;
                } catch (Exception e3) {
                    Log.e("NoxxSeries", e3.getMessage());
                    return;
                }
            default:
                q qVar2 = this.f16104e;
                qVar2.getClass();
                j6.h parse = g6.e.parse(this.f16105f);
                if (parse != null) {
                    Elements elementsByTag = parse.getElementsByTag("BUTTON");
                    for (int i2 = 0; i2 < elementsByTag.size(); i2++) {
                        org.jsoup.nodes.b bVar = elementsByTag.get(i2);
                        VideoSource videoSource = new VideoSource();
                        String replace = bVar.attr(FirebaseAnalytics.Param.VALUE).replace("dooodster", "dsvplay");
                        videoSource.streamUrl = replace;
                        if (!replace.startsWith("/se")) {
                            videoSource.external_link = true;
                            videoSource.streamable = false;
                            videoSource.is_embed = true;
                            videoSource.label = qVar2.checkLinkLabel(videoSource.streamUrl) + " NOXX";
                            qVar2.addLink(videoSource);
                        }
                    }
                    break;
                }
                break;
        }
    }
}
