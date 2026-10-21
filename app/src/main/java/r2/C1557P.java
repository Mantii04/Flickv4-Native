package r2;

import android.content.Context;
import android.net.Uri;
import m2.AbstractC1315b;

/* renamed from: r2.P, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1557P implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19750a;

    public C1557P(Context context) {
        this.f19750a = context;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(uri), new C1556O(this.f19750a, uri));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return AbstractC1315b.isMediaStoreUri(uri);
    }
}
