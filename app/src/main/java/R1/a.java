package R1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.afollestad.materialdialogs.internal.MDRootLayout;

/* loaded from: classes.dex */
public final class a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f3007b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f3008e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MDRootLayout f3009f;

    public a(MDRootLayout mDRootLayout, View view, boolean z6) {
        this.f3009f = mDRootLayout;
        this.f3007b = view;
        this.f3008e = z6;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        View view = this.f3007b;
        if (view.getMeasuredHeight() == 0) {
            return true;
        }
        WebView webView = (WebView) view;
        int i2 = MDRootLayout.f8987A;
        float measuredHeight = webView.getMeasuredHeight();
        float scale = webView.getScale() * webView.getContentHeight();
        boolean z6 = this.f3008e;
        MDRootLayout mDRootLayout = this.f3009f;
        if (measuredHeight < scale) {
            mDRootLayout.a((ViewGroup) view, z6);
        } else {
            if (z6) {
                mDRootLayout.f8990f = false;
            }
            mDRootLayout.f8991j = false;
        }
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
