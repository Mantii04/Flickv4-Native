package u2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;

/* renamed from: u2.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1670A implements l2.t {

    /* renamed from: b, reason: collision with root package name */
    public final l2.t f20243b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f20244c;

    public C1670A(l2.t tVar, boolean z6) {
        this.f20243b = tVar;
        this.f20244c = z6;
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof C1670A) {
            return this.f20243b.equals(((C1670A) obj).f20243b);
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        return this.f20243b.hashCode();
    }

    @Override // l2.t
    public InterfaceC1391M transform(Context context, InterfaceC1391M interfaceC1391M, int i2, int i7) {
        InterfaceC1430d bitmapPool = com.bumptech.glide.c.get(context).getBitmapPool();
        Drawable drawable = (Drawable) interfaceC1391M.get();
        C1678e a7 = AbstractC1698z.a(bitmapPool, drawable, i2, i7);
        if (a7 != null) {
            InterfaceC1391M transform = this.f20243b.transform(context, a7, i2, i7);
            if (!transform.equals(a7)) {
                return J.obtain(context.getResources(), transform);
            }
            transform.recycle();
            return interfaceC1391M;
        }
        if (!this.f20244c) {
            return interfaceC1391M;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f20243b.updateDiskCacheKey(messageDigest);
    }

    public l2.t asBitmapDrawable() {
        return this;
    }
}
