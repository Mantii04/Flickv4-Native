package r2;

import android.content.res.AssetManager;

/* renamed from: r2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1571c implements InterfaceC1563W, InterfaceC1567a {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f19773a;

    public C1571c(AssetManager assetManager) {
        this.f19773a = assetManager;
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new C1572d(this.f19773a, this);
    }

    @Override // r2.InterfaceC1567a
    public com.bumptech.glide.load.data.e buildFetcher(AssetManager assetManager, String str) {
        return new com.bumptech.glide.load.data.u(assetManager, str);
    }
}
