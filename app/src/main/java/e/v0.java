package e;

import M.F0;
import android.view.View;

/* loaded from: classes.dex */
public final class v0 implements F0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f13872a;

    public v0(x0 x0Var) {
        this.f13872a = x0Var;
    }

    public void onAnimationUpdate(View view) {
        ((View) this.f13872a.f13885d.getParent()).invalidate();
    }
}
