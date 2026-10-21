package j3;

import I3.n;
import M.AbstractC0181p0;
import N.A;
import N.s;
import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* renamed from: j3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1051c implements A {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f16982b;

    public C1051c(SwipeDismissBehavior swipeDismissBehavior) {
        this.f16982b = swipeDismissBehavior;
    }

    @Override // N.A
    public boolean perform(View view, s sVar) {
        SwipeDismissBehavior swipeDismissBehavior = this.f16982b;
        if (!swipeDismissBehavior.canSwipeDismissView(view)) {
            return false;
        }
        boolean z6 = AbstractC0181p0.getLayoutDirection(view) == 1;
        int i2 = swipeDismissBehavior.f12451m;
        AbstractC0181p0.offsetLeftAndRight(view, (!(i2 == 0 && z6) && (i2 != 1 || z6)) ? view.getWidth() : -view.getWidth());
        view.setAlpha(0.0f);
        InterfaceC1052d interfaceC1052d = swipeDismissBehavior.f12448e;
        if (interfaceC1052d != null) {
            ((n) interfaceC1052d).onDismiss(view);
        }
        return true;
    }
}
