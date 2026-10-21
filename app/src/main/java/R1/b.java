package R1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;

/* loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f3010a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f3011b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MDRootLayout f3012c;

    public b(MDRootLayout mDRootLayout, ViewGroup viewGroup, boolean z6) {
        this.f3012c = mDRootLayout;
        this.f3010a = viewGroup;
        this.f3011b = z6;
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        boolean z6;
        boolean z7;
        boolean z8;
        MDRootLayout mDRootLayout = this.f3012c;
        MDButton[] mDButtonArr = mDRootLayout.f8992m;
        int length = mDButtonArr.length;
        boolean z9 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z6 = false;
                break;
            }
            MDButton mDButton = mDButtonArr[i2];
            if (mDButton != null && mDButton.getVisibility() != 8) {
                z6 = true;
                break;
            }
            i2++;
        }
        ViewGroup viewGroup = this.f3010a;
        boolean z10 = viewGroup instanceof WebView;
        boolean z11 = this.f3011b;
        if (z10) {
            WebView webView = (WebView) viewGroup;
            if (z11) {
                View view = mDRootLayout.f8988b;
                if (view != null && view.getVisibility() != 8) {
                    if (webView.getPaddingTop() + webView.getScrollY() > 0) {
                        z8 = true;
                        mDRootLayout.f8990f = z8;
                    }
                }
                z8 = false;
                mDRootLayout.f8990f = z8;
            }
            if (z6) {
                if ((webView.getMeasuredHeight() + webView.getScrollY()) - webView.getPaddingBottom() < webView.getScale() * webView.getContentHeight()) {
                    z9 = true;
                }
            }
            mDRootLayout.f8991j = z9;
        } else {
            if (z11 && viewGroup.getChildCount() > 0) {
                View view2 = mDRootLayout.f8988b;
                if (view2 != null && view2.getVisibility() != 8) {
                    if (viewGroup.getPaddingTop() + viewGroup.getScrollY() > viewGroup.getChildAt(0).getTop()) {
                        z7 = true;
                        mDRootLayout.f8990f = z7;
                    }
                }
                z7 = false;
                mDRootLayout.f8990f = z7;
            }
            if (viewGroup.getChildCount() > 0) {
                if (z6) {
                    if ((viewGroup.getHeight() + viewGroup.getScrollY()) - viewGroup.getPaddingBottom() < viewGroup.getChildAt(viewGroup.getChildCount() - 1).getBottom()) {
                        z9 = true;
                    }
                }
                mDRootLayout.f8991j = z9;
            }
        }
        mDRootLayout.invalidate();
    }
}
