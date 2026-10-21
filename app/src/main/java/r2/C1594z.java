package r2;

import android.content.Context;
import android.content.res.Resources;

/* renamed from: r2.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1594z implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19819a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f19820b;

    public C1594z(Context context, InterfaceC1593y interfaceC1593y) {
        this.f19819a = context.getApplicationContext();
        this.f19820b = interfaceC1593y;
    }

    public static InterfaceC1563W assetFileDescriptorFactory(Context context) {
        return new C1589u(context);
    }

    public static InterfaceC1563W drawableFactory(Context context) {
        return new C1590v(context);
    }

    public static InterfaceC1563W inputStreamFactory(Context context) {
        return new C1591w(context);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, r2.y] */
    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Integer num, int i2, int i7, l2.q qVar) {
        Resources.Theme theme = (Resources.Theme) qVar.get(w2.h.f20678b);
        return new C1561U(new F2.d(num), new C1592x(theme, theme != null ? theme.getResources() : this.f19819a.getResources(), this.f19820b, num.intValue()));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Integer num) {
        return true;
    }
}
