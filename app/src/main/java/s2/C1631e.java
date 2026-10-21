package s2;

import android.content.Context;
import r2.InterfaceC1562V;
import r2.InterfaceC1563W;
import r2.f0;

/* renamed from: s2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1631e implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20008a;

    public C1631e(Context context) {
        this.f20008a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1632f(this.f20008a);
    }
}
