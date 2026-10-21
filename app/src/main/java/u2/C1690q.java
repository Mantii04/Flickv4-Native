package u2;

import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding;

/* renamed from: u2.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1690q extends AbstractC1693u {
    @Override // u2.AbstractC1693u
    public DownsampleStrategy$SampleSizeRounding getSampleSizeRounding(int i2, int i7, int i8, int i9) {
        return getScaleFactor(i2, i7, i8, i9) == 1.0f ? DownsampleStrategy$SampleSizeRounding.f9312e : AbstractC1693u.f20297a.getSampleSizeRounding(i2, i7, i8, i9);
    }

    @Override // u2.AbstractC1693u
    public float getScaleFactor(int i2, int i7, int i8, int i9) {
        return Math.min(1.0f, AbstractC1693u.f20297a.getScaleFactor(i2, i7, i8, i9));
    }
}
