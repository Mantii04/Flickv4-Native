package flix.com.vision.subtitles;

import android.webkit.WebView;
import flix.com.vision.subtitles.SubDownloadExtended;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16144b = 1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WebView f16145e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f16146f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f16147j;

    public /* synthetic */ g(WebView webView, String[] strArr, CountDownLatch countDownLatch) {
        this.f16145e = webView;
        this.f16146f = strArr;
        this.f16147j = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16144b) {
            case 0:
                ((SubDownloadExtended.SubDownloadWebViewClient) this.f16146f).lambda$solveCaptcha$0((String) this.f16147j, this.f16145e);
                break;
            default:
                SubDownloadExtended.SubDownloadWebViewClient.lambda$extractCaptchaImageUrl$2(this.f16145e, "(function() {   var img = document.querySelector('img[src*=\"captcha\"]');  return img ? img.src : null;})();", (String[]) this.f16146f, (CountDownLatch) this.f16147j);
                break;
        }
    }

    public /* synthetic */ g(SubDownloadExtended.SubDownloadWebViewClient subDownloadWebViewClient, String str, WebView webView) {
        this.f16146f = subDownloadWebViewClient;
        this.f16147j = str;
        this.f16145e = webView;
    }
}
