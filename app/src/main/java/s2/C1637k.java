package s2;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import l2.q;
import m2.AbstractC1315b;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: s2.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1637k implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20023a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1562V f20024b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1562V f20025c;

    /* renamed from: d, reason: collision with root package name */
    public final Class f20026d;

    public C1637k(Context context, InterfaceC1562V interfaceC1562V, InterfaceC1562V interfaceC1562V2, Class cls) {
        this.f20023a = context.getApplicationContext();
        this.f20024b = interfaceC1562V;
        this.f20025c = interfaceC1562V2;
        this.f20026d = cls;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, q qVar) {
        return new C1561U(new F2.d(uri), new C1636j(this.f20023a, this.f20024b, this.f20025c, uri, i2, i7, qVar, this.f20026d));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && AbstractC1315b.isMediaStoreUri(uri);
    }
}
