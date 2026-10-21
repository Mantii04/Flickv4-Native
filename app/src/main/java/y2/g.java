package y2;

import G2.r;
import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;
import l2.t;
import n2.InterfaceC1391M;
import u2.C1678e;

/* loaded from: classes.dex */
public final class g implements t {

    /* renamed from: b, reason: collision with root package name */
    public final t f21074b;

    public g(t tVar) {
        this.f21074b = (t) r.checkNotNull(tVar);
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f21074b.equals(((g) obj).f21074b);
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        return this.f21074b.hashCode();
    }

    @Override // l2.t
    public InterfaceC1391M transform(Context context, InterfaceC1391M interfaceC1391M, int i2, int i7) {
        C1882d c1882d = (C1882d) interfaceC1391M.get();
        C1678e c1678e = new C1678e(c1882d.getFirstFrame(), com.bumptech.glide.c.get(context).getBitmapPool());
        t tVar = this.f21074b;
        InterfaceC1391M transform = tVar.transform(context, c1678e, i2, i7);
        if (!c1678e.equals(transform)) {
            c1678e.recycle();
        }
        c1882d.setFrameTransformation(tVar, (Bitmap) transform.get());
        return interfaceC1391M;
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f21074b.updateDiskCacheKey(messageDigest);
    }
}
