package s2;

import android.content.Context;
import android.net.Uri;
import l2.q;
import m2.AbstractC1315b;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: s2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1632f implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20009a;

    public C1632f(Context context) {
        this.f20009a = context.getApplicationContext();
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, q qVar) {
        Long l7;
        if (AbstractC1315b.isThumbnailSize(i2, i7) && (l7 = (Long) qVar.get(com.bumptech.glide.load.resource.bitmap.b.f9320d)) != null && l7.longValue() == -1) {
            return new C1561U(new F2.d(uri), m2.e.buildVideoFetcher(this.f20009a, uri));
        }
        return null;
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return AbstractC1315b.isMediaStoreVideoUri(uri);
    }
}
