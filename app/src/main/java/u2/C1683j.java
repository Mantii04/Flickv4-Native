package u2;

import android.graphics.Bitmap;
import java.security.MessageDigest;
import o2.InterfaceC1430d;

/* renamed from: u2.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1683j extends AbstractC1679f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f20292b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(l2.m.f18122a);

    @Override // l2.m
    public boolean equals(Object obj) {
        return obj instanceof C1683j;
    }

    @Override // l2.m
    public int hashCode() {
        return -670243078;
    }

    @Override // u2.AbstractC1679f
    public Bitmap transform(InterfaceC1430d interfaceC1430d, Bitmap bitmap, int i2, int i7) {
        return P.centerInside(interfaceC1430d, bitmap, i2, i7);
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f20292b);
    }
}
