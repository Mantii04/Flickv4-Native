package l;

import android.view.ViewParent;

/* loaded from: classes.dex */
public final class Y0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractViewOnTouchListenerC1129a1 f17818b;

    public Y0(AbstractViewOnTouchListenerC1129a1 abstractViewOnTouchListenerC1129a1) {
        this.f17818b = abstractViewOnTouchListenerC1129a1;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewParent parent = this.f17818b.f17835j.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }
}
