package Z4;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class x extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f4604a;

    public x(y yVar) {
        this.f4604a = yVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        WebView webView2;
        super.onPageFinished(webView, str);
        y yVar = this.f4604a;
        if (yVar.f4614j || (webView2 = yVar.f4612h) == null) {
            return;
        }
        try {
            webView2.evaluateJavascript("(function(){var el = document.documentElement; var xml = el.innerHTML; return xml;})()", new w(this));
        } catch (Exception unused) {
        }
    }
}
