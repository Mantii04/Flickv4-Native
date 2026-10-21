package A3;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Rect;
import android.view.ViewTreeObserver;
import x3.AbstractC1832f;
import x3.V;

/* loaded from: classes2.dex */
public final class g implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f31b;

    public g(k kVar) {
        this.f31b = kVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        k kVar = this.f31b;
        kVar.getLocationOnScreen(kVar.f46u);
        boolean z6 = true;
        boolean z7 = kVar.f46u[1] == 0;
        kVar.f43r.setBehindStatusBar(z7);
        kVar.setDrawTopInsetForeground(z7 && kVar.isTopInsetScrimEnabled());
        int i2 = kVar.f46u[0];
        kVar.setDrawLeftInsetForeground(i2 == 0 || kVar.getWidth() + i2 == 0);
        Activity activity = AbstractC1832f.getActivity(kVar.getContext());
        if (activity != null) {
            Rect currentWindowBounds = V.getCurrentWindowBounds(activity);
            kVar.setDrawBottomInsetForeground((currentWindowBounds.height() - kVar.getHeight() == kVar.f46u[1]) && (Color.alpha(activity.getWindow().getNavigationBarColor()) != 0) && kVar.isBottomInsetScrimEnabled());
            if (currentWindowBounds.width() != kVar.f46u[0] && currentWindowBounds.width() - kVar.getWidth() != kVar.f46u[0]) {
                z6 = false;
            }
            kVar.setDrawRightInsetForeground(z6);
        }
    }
}
