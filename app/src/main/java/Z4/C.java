package Z4;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class C extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ D f4521a;

    public C(D d7) {
        this.f4521a = d7;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        WebView webView2;
        super.onPageFinished(webView, str);
        D d7 = this.f4521a;
        if (d7.f4533l || (webView2 = d7.f4531j) == null) {
            return;
        }
        try {
            webView2.evaluateJavascript("(function(){var el = document.documentElement; var xml = el.innerHTML; return xml;})()", new B(this));
        } catch (Exception unused) {
        }
    }
}
