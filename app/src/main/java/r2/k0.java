package r2;

import android.content.Context;
import android.content.res.AssetFileDescriptor;

/* loaded from: classes.dex */
public final class k0 implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19793a;

    public k0(Context context) {
        this.f19793a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new m0(this.f19793a, f0Var.build(Integer.class, AssetFileDescriptor.class));
    }
}
