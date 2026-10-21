package O0;

import androidx.media3.common.C;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import v0.Y;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Y f2385a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2386b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2387c;

    /* renamed from: d, reason: collision with root package name */
    public final g f2388d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2389e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2390f;

    /* renamed from: g, reason: collision with root package name */
    public final long[] f2391g;

    public k(Y y6, long j7, long j8, long[] jArr, g gVar, int i2, int i7) {
        this.f2385a = new Y(y6);
        this.f2386b = j7;
        this.f2387c = j8;
        this.f2391g = jArr;
        this.f2388d = gVar;
        this.f2389e = i2;
        this.f2390f = i7;
    }

    public static k parse(Y y6, ParsableByteArray parsableByteArray) {
        long[] jArr;
        int i2;
        int i7;
        int readInt = parsableByteArray.readInt();
        int readUnsignedIntToInt = (readInt & 1) != 0 ? parsableByteArray.readUnsignedIntToInt() : -1;
        long readUnsignedInt = (readInt & 2) != 0 ? parsableByteArray.readUnsignedInt() : -1L;
        g gVar = null;
        if ((readInt & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i8 = 0; i8 < 100; i8++) {
                jArr2[i8] = parsableByteArray.readUnsignedByte();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((readInt & 8) != 0) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.bytesLeft() >= 24) {
            parsableByteArray.skipBytes(11);
            gVar = g.parse(parsableByteArray.readFloat(), parsableByteArray.readUnsignedShort(), parsableByteArray.readUnsignedShort());
            parsableByteArray.skipBytes(2);
            int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
            i7 = readUnsignedInt24 & 4095;
            i2 = (16773120 & readUnsignedInt24) >> 12;
        } else {
            i2 = -1;
            i7 = -1;
        }
        return new k(y6, readUnsignedIntToInt, readUnsignedInt, jArr, gVar, i2, i7);
    }

    public long computeDurationUs() {
        long j7 = this.f2386b;
        if (j7 == -1 || j7 == 0) {
            return C.TIME_UNSET;
        }
        return Util.sampleCountToDurationUs((j7 * r0.f20420g) - 1, this.f2385a.f20417d);
    }

    public Metadata getMetadata() {
        g gVar = this.f2388d;
        if (gVar != null) {
            return new Metadata(gVar);
        }
        return null;
    }
}
