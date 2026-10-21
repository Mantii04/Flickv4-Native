package l;

import M.AbstractC0181p0;
import android.view.ViewTreeObserver;

/* renamed from: l.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC1152i0 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1158k0 f17902b;

    public ViewTreeObserverOnGlobalLayoutListenerC1152i0(C1158k0 c1158k0) {
        this.f17902b = c1158k0;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        C1158k0 c1158k0 = this.f17902b;
        C1170o0 c1170o0 = c1158k0.f17912Q;
        if (!AbstractC0181p0.isAttachedToWindow(c1170o0) || !c1170o0.getGlobalVisibleRect(c1158k0.f17910O)) {
            c1158k0.dismiss();
        } else {
            c1158k0.c();
            super/*l.l1*/.show();
        }
    }
}
