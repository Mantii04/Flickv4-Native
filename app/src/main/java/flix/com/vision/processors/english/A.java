package flix.com.vision.processors.english;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class A extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B f16059a;

    public A(B b7) {
        this.f16059a = b7;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        new Handler().postDelayed(new d(this, 8), 3500L);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.e("RidoMoviesProcessor", "Renderer Process Crashed. Cleaning up...");
        B b7 = this.f16059a;
        WebView webView2 = b7.f16060a;
        if (webView2 == null) {
            return true;
        }
        webView2.destroy();
        b7.f16060a = null;
        return true;
    }
}
