package r2;

import android.content.Context;

/* renamed from: r2.N, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1555N implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19746a;

    public C1555N(Context context) {
        this.f19746a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1557P(this.f19746a);
    }
}
