package flix.com.vision.processors.english;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class u extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f16121a;

    public u(v vVar) {
        this.f16121a = vVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        new Handler().postDelayed(new d(this, 5), 3500L);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.e("RidoProcessor", "WebView Renderer Process Crashed. Cleaning up...");
        v vVar = this.f16121a;
        WebView webView2 = vVar.f16122a;
        if (webView2 == null) {
            return true;
        }
        webView2.destroy();
        vVar.f16122a = null;
        return true;
    }
}
