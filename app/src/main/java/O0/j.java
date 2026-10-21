package O0;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import v0.Y;
import v0.d0;
import v0.e0;
import v0.h0;

/* loaded from: classes.dex */
public final class j implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f2379a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f2380b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2381c;

    /* renamed from: d, reason: collision with root package name */
    public final long f2382d;

    /* renamed from: e, reason: collision with root package name */
    public final long f2383e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2384f;

    public j(long[] jArr, long[] jArr2, long j7, long j8, long j9, int i2) {
        this.f2379a = jArr;
        this.f2380b = jArr2;
        this.f2381c = j7;
        this.f2382d = j8;
        this.f2383e = j9;
        this.f2384f = i2;
    }

    public static j create(long j7, long j8, Y y6, ParsableByteArray parsableByteArray) {
        int readUnsignedByte;
        parsableByteArray.skipBytes(6);
        long j9 = j8 + y6.f20416c;
        long readInt = parsableByteArray.readInt() + j9;
        int readInt2 = parsableByteArray.readInt();
        if (readInt2 <= 0) {
            return null;
        }
        long sampleCountToDurationUs = Util.sampleCountToDurationUs((readInt2 * y6.f20420g) - 1, y6.f20417d);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j10 = j8 + y6.f20416c;
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        int i2 = 0;
        while (i2 < readUnsignedShort) {
            long j11 = sampleCountToDurationUs;
            long[] jArr3 = jArr2;
            jArr[i2] = (i2 * j11) / readUnsignedShort;
            jArr3[i2] = j10;
            if (readUnsignedShort3 == 1) {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
            } else if (readUnsignedShort3 == 2) {
                readUnsignedByte = parsableByteArray.readUnsignedShort();
            } else if (readUnsignedShort3 == 3) {
                readUnsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (readUnsignedShort3 != 4) {
                    return null;
                }
                readUnsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j10 += readUnsignedByte * readUnsignedShort2;
            i2++;
            jArr2 = jArr3;
            sampleCountToDurationUs = j11;
            readUnsignedShort3 = readUnsignedShort3;
        }
        long j12 = sampleCountToDurationUs;
        long[] jArr4 = jArr2;
        if (j7 != -1 && j7 != readInt) {
            StringBuilder r6 = A.i.r(j7, "VBRI data size mismatch: ", ", ");
            r6.append(readInt);
            Log.w("VbriSeeker", r6.toString());
        }
        if (readInt != j10) {
            StringBuilder r7 = A.i.r(readInt, "VBRI bytes and ToC mismatch (using max): ", ", ");
            r7.append(j10);
            r7.append("\nSeeking will be inaccurate.");
            Log.w("VbriSeeker", r7.toString());
            readInt = Math.max(readInt, j10);
        }
        return new j(jArr, jArr4, j12, j9, readInt, y6.f20419f);
    }

    @Override // O0.i
    public int getAverageBitrate() {
        return this.f2384f;
    }

    @Override // O0.i
    public long getDataEndPosition() {
        return this.f2383e;
    }

    @Override // O0.i
    public long getDataStartPosition() {
        return this.f2382d;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f2381c;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        long[] jArr = this.f2379a;
        int binarySearchFloor = Util.binarySearchFloor(jArr, j7, true, true);
        long j8 = jArr[binarySearchFloor];
        long[] jArr2 = this.f2380b;
        h0 h0Var = new h0(j8, jArr2[binarySearchFloor]);
        if (h0Var.f20474a >= j7 || binarySearchFloor == jArr.length - 1) {
            return new e0(h0Var);
        }
        int i2 = binarySearchFloor + 1;
        return new e0(h0Var, new h0(jArr[i2], jArr2[i2]));
    }

    @Override // O0.i
    public long getTimeUs(long j7) {
        return this.f2379a[Util.binarySearchFloor(this.f2380b, j7, true, true)];
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }
}
