package l;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* renamed from: l.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1155j0 implements PopupWindow.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC1152i0 f17905b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1158k0 f17906e;

    public C1155j0(C1158k0 c1158k0, ViewTreeObserverOnGlobalLayoutListenerC1152i0 viewTreeObserverOnGlobalLayoutListenerC1152i0) {
        this.f17906e = c1158k0;
        this.f17905b = viewTreeObserverOnGlobalLayoutListenerC1152i0;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f17906e.f17912Q.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f17905b);
        }
    }
}
