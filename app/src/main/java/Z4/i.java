package Z4;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class i extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f4553a;

    public i(j jVar) {
        this.f4553a = jVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        WebView webView2;
        super.onPageFinished(webView, str);
        j jVar = this.f4553a;
        if (jVar.f4566m || (webView2 = jVar.f4564k) == null) {
            return;
        }
        webView2.evaluateJavascript("(function(){var el = document.documentElement; var xml = el.innerHTML; return xml;})()", new h(this));
    }
}
