package r2;

import android.content.ContentResolver;
import android.net.Uri;

/* loaded from: classes.dex */
public final class w0 implements InterfaceC1563W, x0 {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f19812a;

    public w0(ContentResolver contentResolver) {
        this.f19812a = contentResolver;
    }

    @Override // r2.x0
    public com.bumptech.glide.load.data.e build(Uri uri) {
        return new com.bumptech.glide.load.data.m(this.f19812a, uri);
    }

    @Override // r2.InterfaceC1563W
    public InterfaceC1562V build(f0 f0Var) {
        return new z0(this);
    }
}
