package r2;

import android.content.ContentResolver;
import android.net.Uri;

/* loaded from: classes.dex */
public final class y0 implements InterfaceC1563W, x0 {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f19818a;

    public y0(ContentResolver contentResolver) {
        this.f19818a = contentResolver;
    }

    @Override // r2.x0
    public com.bumptech.glide.load.data.e build(Uri uri) {
        return new com.bumptech.glide.load.data.v(this.f19818a, uri);
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new z0(this);
    }
}
