package I3;

import M.L;
import M.h1;
import android.view.View;

/* loaded from: classes2.dex */
public final class j implements L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f1328a;

    public j(t tVar) {
        this.f1328a = tVar;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        int systemWindowInsetBottom = h1Var.getSystemWindowInsetBottom();
        t tVar = this.f1328a;
        tVar.f1366m = systemWindowInsetBottom;
        tVar.f1367n = h1Var.getSystemWindowInsetLeft();
        tVar.f1368o = h1Var.getSystemWindowInsetRight();
        tVar.c();
        return h1Var;
    }
}
