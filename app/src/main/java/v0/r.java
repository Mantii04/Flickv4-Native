package v0;

import androidx.media3.common.util.Util;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class r implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f20517a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f20518b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f20519c;

    /* renamed from: d, reason: collision with root package name */
    public final long[] f20520d;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f20521e;

    /* renamed from: f, reason: collision with root package name */
    public final long f20522f;

    public r(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f20518b = iArr;
        this.f20519c = jArr;
        this.f20520d = jArr2;
        this.f20521e = jArr3;
        int length = iArr.length;
        this.f20517a = length;
        if (length > 0) {
            this.f20522f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f20522f = 0L;
        }
    }

    public int getChunkIndex(long j7) {
        return Util.binarySearchFloor(this.f20521e, j7, true, true);
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20522f;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        int chunkIndex = getChunkIndex(j7);
        long[] jArr = this.f20521e;
        long j8 = jArr[chunkIndex];
        long[] jArr2 = this.f20519c;
        h0 h0Var = new h0(j8, jArr2[chunkIndex]);
        if (h0Var.f20474a >= j7 || chunkIndex == this.f20517a - 1) {
            return new e0(h0Var);
        }
        int i2 = chunkIndex + 1;
        return new e0(h0Var, new h0(jArr[i2], jArr2[i2]));
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f20517a + ", sizes=" + Arrays.toString(this.f20518b) + ", offsets=" + Arrays.toString(this.f20519c) + ", timeUs=" + Arrays.toString(this.f20521e) + ", durationsUs=" + Arrays.toString(this.f20520d) + ")";
    }
}
