package flix.com.vision.processors.english;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class p extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f16108a;

    public p(q qVar) {
        this.f16108a = qVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        new Handler().postDelayed(new d(this, 1), 3500L);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.e("RidoProcessor", "WebView Renderer Process Crashed. Cleaning up...");
        q qVar = this.f16108a;
        WebView webView2 = qVar.f16113e;
        if (webView2 == null) {
            return true;
        }
        webView2.destroy();
        qVar.f16113e = null;
        return true;
    }
}
