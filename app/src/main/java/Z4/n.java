package Z4;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public final class n extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f4574a;

    public n(o oVar) {
        this.f4574a = oVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, final String str) {
        WebView webView2;
        o oVar = this.f4574a;
        if (oVar.f4578d || (webView2 = oVar.f4580f) == null) {
            return;
        }
        webView2.evaluateJavascript("(function(){return document.documentElement.outerHTML;})()", new ValueCallback() { // from class: Z4.m
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                String str2 = (String) obj;
                n nVar = n.this;
                if (str2 == null || str2.length() < 100) {
                    return;
                }
                try {
                    String unescapeJava = StringEscapeUtils.unescapeJava(str2);
                    if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                        unescapeJava = unescapeJava.substring(1, unescapeJava.length() - 1);
                    }
                    if (unescapeJava.contains("Checking if the site connection is secure") || unescapeJava.contains("Just a moment...")) {
                        return;
                    }
                    String str3 = str;
                    boolean contains = str3.contains("/search/");
                    o oVar2 = nVar.f4574a;
                    if (contains) {
                        oVar2.f(unescapeJava, true);
                        return;
                    }
                    if (str3.contains("/release/")) {
                        oVar2.e(unescapeJava);
                        int i2 = oVar2.f4582h + 1;
                        oVar2.f4582h = i2;
                        ArrayList arrayList = oVar2.f4581g;
                        if (i2 < arrayList.size() && !oVar2.f4578d) {
                            oVar2.f4580f.loadUrl((String) arrayList.get(oVar2.f4582h));
                            return;
                        }
                        WebView webView3 = oVar2.f4580f;
                        if (webView3 != null) {
                            webView3.destroy();
                            oVar2.f4580f = null;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }
}
