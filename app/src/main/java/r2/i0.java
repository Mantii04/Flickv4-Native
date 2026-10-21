package r2;

import android.content.res.Resources;

/* loaded from: classes.dex */
public final class i0 implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f19789a;

    public i0(Resources resources) {
        this.f19789a = resources;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new j0(this.f19789a, u0.getInstance());
    }
}
