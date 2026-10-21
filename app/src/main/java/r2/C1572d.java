package r2;

import android.content.res.AssetManager;
import android.net.Uri;

/* renamed from: r2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1572d implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f19774a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1567a f19775b;

    public C1572d(AssetManager assetManager, InterfaceC1567a interfaceC1567a) {
        this.f19774a = assetManager;
        this.f19775b = interfaceC1567a;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(uri), this.f19775b.buildFetcher(this.f19774a, uri.toString().substring(22)));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }
}
