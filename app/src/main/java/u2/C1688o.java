package u2;

import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding;

/* renamed from: u2.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1688o extends AbstractC1693u {
    @Override // u2.AbstractC1693u
    public DownsampleStrategy$SampleSizeRounding getSampleSizeRounding(int i2, int i7, int i8, int i9) {
        return DownsampleStrategy$SampleSizeRounding.f9312e;
    }

    @Override // u2.AbstractC1693u
    public float getScaleFactor(int i2, int i7, int i8, int i9) {
        if (Math.min(i7 / i9, i2 / i8) == 0) {
            return 1.0f;
        }
        return 1.0f / Integer.highestOneBit(r1);
    }
}
