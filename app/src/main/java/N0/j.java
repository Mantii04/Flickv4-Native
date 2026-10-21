package N0;

import java.io.IOException;
import v0.D;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: d, reason: collision with root package name */
    public static final long[] f2287d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f2288a = new byte[8];

    /* renamed from: b, reason: collision with root package name */
    public int f2289b;

    /* renamed from: c, reason: collision with root package name */
    public int f2290c;

    public static long assembleVarint(byte[] bArr, int i2, boolean z6) {
        long j7 = bArr[0] & 255;
        if (z6) {
            j7 &= ~f2287d[i2 - 1];
        }
        for (int i7 = 1; i7 < i2; i7++) {
            j7 = (j7 << 8) | (bArr[i7] & 255);
        }
        return j7;
    }

    public static int parseUnsignedVarintLength(int i2) {
        for (int i7 = 0; i7 < 8; i7++) {
            if ((f2287d[i7] & i2) != 0) {
                return i7 + 1;
            }
        }
        return -1;
    }

    public int getLastLength() {
        return this.f2290c;
    }

    public long readUnsignedVarint(D d7, boolean z6, boolean z7, int i2) throws IOException {
        int i7 = this.f2289b;
        byte[] bArr = this.f2288a;
        if (i7 == 0) {
            if (!d7.readFully(bArr, 0, 1, z6)) {
                return -1L;
            }
            int parseUnsignedVarintLength = parseUnsignedVarintLength(bArr[0] & 255);
            this.f2290c = parseUnsignedVarintLength;
            if (parseUnsignedVarintLength == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f2289b = 1;
        }
        int i8 = this.f2290c;
        if (i8 > i2) {
            this.f2289b = 0;
            return -2L;
        }
        if (i8 != 1) {
            d7.readFully(bArr, 1, i8 - 1);
        }
        this.f2289b = 0;
        return assembleVarint(bArr, this.f2290c, z7);
    }

    public void reset() {
        this.f2289b = 0;
        this.f2290c = 0;
    }
}
