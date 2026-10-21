package K3;

import M.AbstractC0181p0;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

/* loaded from: classes2.dex */
public final class o implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f1697b;

    public o(q qVar) {
        this.f1697b = qVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        AccessibilityManager accessibilityManager;
        q qVar = this.f1697b;
        if (qVar.f1705D == null || (accessibilityManager = qVar.f1704C) == null || !AbstractC0181p0.isAttachedToWindow(qVar)) {
            return;
        }
        N.e.addTouchExplorationStateChangeListener(accessibilityManager, qVar.f1705D);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        q qVar = this.f1697b;
        N.c cVar = qVar.f1705D;
        if (cVar == null || (accessibilityManager = qVar.f1704C) == null) {
            return;
        }
        N.e.removeTouchExplorationStateChangeListener(accessibilityManager, cVar);
    }
}
