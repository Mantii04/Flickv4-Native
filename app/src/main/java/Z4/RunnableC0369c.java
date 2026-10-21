package Z4;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;

/* renamed from: Z4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0369c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4538b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f4539e;

    public /* synthetic */ RunnableC0369c(e eVar, int i2) {
        this.f4538b = i2;
        this.f4539e = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4538b) {
            case 0:
                e eVar = this.f4539e;
                WebView webView = eVar.f4541a;
                if (webView != null) {
                    webView.evaluateJavascript("(function(){return document.documentElement.innerHTML;})()", new C0368b(eVar));
                    break;
                }
                break;
            case 1:
                e eVar2 = this.f4539e;
                WebView webView2 = eVar2.f4541a;
                if (webView2 != null) {
                    ViewParent parent = webView2.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(eVar2.f4541a);
                    }
                    eVar2.f4541a.destroy();
                    eVar2.f4541a = null;
                    break;
                }
                break;
            default:
                e eVar3 = this.f4539e;
                WebView webView3 = eVar3.f4541a;
                if (webView3 != null) {
                    webView3.loadUrl((String) eVar3.f4545e.get(0));
                    break;
                }
                break;
        }
    }
}
