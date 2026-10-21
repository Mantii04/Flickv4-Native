package Z4;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* renamed from: Z4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0370d extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f4540a;

    public C0370d(e eVar) {
        this.f4540a = eVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        new Handler(Looper.getMainLooper()).postDelayed(new A3.d(this, 15), 7000L);
    }
}
