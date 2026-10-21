package s2;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import r2.InterfaceC1562V;
import r2.InterfaceC1563W;
import r2.f0;

/* renamed from: s2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1633g implements InterfaceC1563W {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20010a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f20011b;

    public AbstractC1633g(Context context, Class cls) {
        this.f20010a = context;
        this.f20011b = cls;
    }

    @Override // r2.InterfaceC1563W
    public final InterfaceC1562V build(f0 f0Var) {
        Class cls = this.f20011b;
        return new C1637k(this.f20010a, f0Var.build(File.class, cls), f0Var.build(Uri.class, cls), cls);
    }
}
