package x3;

import M.h1;
import android.view.View;

/* loaded from: classes2.dex */
public final class O implements M.L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q f20890a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ S f20891b;

    public O(Q q6, S s6) {
        this.f20890a = q6;
        this.f20891b = s6;
    }

    @Override // M.L
    public h1 onApplyWindowInsets(View view, h1 h1Var) {
        return ((l3.e) this.f20890a).onApplyWindowInsets(view, h1Var, new S(this.f20891b));
    }
}
