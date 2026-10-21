package Z4;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes2.dex */
public final class s extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f4587a;

    public s(t tVar) {
        this.f4587a = tVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        WebView webView2;
        super.onPageFinished(webView, str);
        t tVar = this.f4587a;
        if (tVar.f4598k || (webView2 = tVar.f4597j) == null) {
            return;
        }
        webView2.evaluateJavascript("(function(){var el = document.documentElement; var xml = el.innerHTML; return xml;})()", new r(this));
    }
}
