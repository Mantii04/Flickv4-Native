package flix.com.vision.processors.english;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class r extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f16114a;

    public r(s sVar) {
        this.f16114a = sVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        new Handler().postDelayed(new d(this, 3), 3500L);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.e("RidoMoviesProcessor", "Renderer Process Crashed. Cleaning up...");
        s sVar = this.f16114a;
        WebView webView2 = sVar.f16115a;
        if (webView2 == null) {
            return true;
        }
        webView2.destroy();
        sVar.f16115a = null;
        return true;
    }
}
