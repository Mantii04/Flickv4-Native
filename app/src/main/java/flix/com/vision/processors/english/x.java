package flix.com.vision.processors.english;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class x extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f16128a;

    public x(y yVar) {
        this.f16128a = yVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        new Handler().postDelayed(new d(this, 7), 3500L);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.e("RidoMoviesProcessor", "Renderer Process Crashed. Cleaning up...");
        y yVar = this.f16128a;
        WebView webView2 = yVar.f16130b;
        if (webView2 == null) {
            return true;
        }
        webView2.destroy();
        yVar.f16130b = null;
        return true;
    }
}
