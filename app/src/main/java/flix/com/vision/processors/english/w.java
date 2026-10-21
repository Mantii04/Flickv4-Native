package flix.com.vision.processors.english;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.extractors.VixcloudExtractor;
import flix.com.vision.models.Video;
import flix.com.vision.models.VideoSource;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16125b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y f16126e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f16127f;

    public /* synthetic */ w(y yVar, String str, int i2) {
        this.f16125b = i2;
        this.f16126e = yVar;
        this.f16127f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        switch (this.f16125b) {
            case 0:
                y yVar = this.f16126e;
                WebView webView = new WebView(yVar.f16131c);
                yVar.f16130b = webView;
                webView.getSettings().setJavaScriptEnabled(true);
                yVar.f16130b.getSettings().setDomStorageEnabled(true);
                yVar.f16130b.setWebViewClient(new x(yVar));
                yVar.f16130b.loadUrl(this.f16127f);
                break;
            default:
                String str2 = this.f16127f;
                y yVar2 = this.f16126e;
                try {
                    Iterator it = yVar2.e(str2).iterator();
                    while (it.hasNext()) {
                        String str3 = (String) it.next();
                        try {
                            str = str3.substring(str3.lastIndexOf(RemoteSettings.FORWARD_SLASH_STRING) + 1).split("-")[0];
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            str = null;
                        }
                        if (str != null) {
                            try {
                                org.jsoup.nodes.b first = ((h6.h) ((h6.h) g6.e.connect(yVar2.domain + "en/iframe/" + str)).timeout(10000)).get().getElementsByTag("IFRAME").first();
                                if (first != null) {
                                    Video extract = new VixcloudExtractor().extract(first.attr("src"));
                                    if (extract != null) {
                                        VideoSource videoSource = new VideoSource();
                                        videoSource.streamUrl = extract.getSource();
                                        videoSource.label = "1080p · [FVSTREAM 2] · [DIRECT] · English";
                                        videoSource.streamable = true;
                                        videoSource.is_embed = false;
                                        videoSource.quality = 1100;
                                        videoSource.referer = "https://vixcloud.co/";
                                        new Handler(Looper.getMainLooper()).post(new flix.com.vision.activities.leanback.fragment.a(10, yVar2, videoSource));
                                    }
                                }
                            } catch (IOException | Exception unused) {
                            }
                        }
                    }
                    new Handler(Looper.getMainLooper()).post(new d(yVar2, 6));
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
        }
    }
}
