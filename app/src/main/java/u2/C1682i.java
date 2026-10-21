package u2;

import android.graphics.Bitmap;
import java.security.MessageDigest;
import o2.InterfaceC1430d;

/* renamed from: u2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1682i extends AbstractC1679f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f20291b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(l2.m.f18122a);

    @Override // l2.m
    public boolean equals(Object obj) {
        return obj instanceof C1682i;
    }

    @Override // l2.m
    public int hashCode() {
        return -599754482;
    }

    @Override // u2.AbstractC1679f
    public Bitmap transform(InterfaceC1430d interfaceC1430d, Bitmap bitmap, int i2, int i7) {
        return P.centerCrop(interfaceC1430d, bitmap, i2, i7);
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f20291b);
    }
}
