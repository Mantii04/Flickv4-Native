package s2;

import android.content.Context;
import r2.InterfaceC1562V;
import r2.InterfaceC1563W;
import r2.f0;

/* renamed from: s2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1629c implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20006a;

    public C1629c(Context context) {
        this.f20006a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1630d(this.f20006a);
    }
}
