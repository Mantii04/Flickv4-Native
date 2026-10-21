package s2;

import android.content.Context;
import android.net.Uri;
import l2.q;
import m2.AbstractC1315b;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: s2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1630d implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final Context f20007a;

    public C1630d(Context context) {
        this.f20007a = context.getApplicationContext();
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, q qVar) {
        if (AbstractC1315b.isThumbnailSize(i2, i7)) {
            return new C1561U(new F2.d(uri), m2.e.buildImageFetcher(this.f20007a, uri));
        }
        return null;
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return AbstractC1315b.isMediaStoreImageUri(uri);
    }
}
