package u2;

import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding;

/* loaded from: classes.dex */
public final class r extends AbstractC1693u {
    @Override // u2.AbstractC1693u
    public DownsampleStrategy$SampleSizeRounding getSampleSizeRounding(int i2, int i7, int i8, int i9) {
        return DownsampleStrategy$SampleSizeRounding.f9312e;
    }

    @Override // u2.AbstractC1693u
    public float getScaleFactor(int i2, int i7, int i8, int i9) {
        return Math.max(i8 / i2, i9 / i7);
    }
}
