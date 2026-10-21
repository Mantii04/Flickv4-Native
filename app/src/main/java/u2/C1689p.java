package u2;

import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding;

/* renamed from: u2.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1689p extends AbstractC1693u {
    @Override // u2.AbstractC1693u
    public DownsampleStrategy$SampleSizeRounding getSampleSizeRounding(int i2, int i7, int i8, int i9) {
        return DownsampleStrategy$SampleSizeRounding.f9311b;
    }

    @Override // u2.AbstractC1693u
    public float getScaleFactor(int i2, int i7, int i8, int i9) {
        int ceil = (int) Math.ceil(Math.max(i7 / i9, i2 / i8));
        return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(ceil)) >= ceil ? 0 : 1));
    }
}
