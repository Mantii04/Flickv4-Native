package r2;

import android.content.Context;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class l0 implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19794a;

    public l0(Context context) {
        this.f19794a = context;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new m0(this.f19794a, f0Var.build(Integer.class, InputStream.class));
    }
}
