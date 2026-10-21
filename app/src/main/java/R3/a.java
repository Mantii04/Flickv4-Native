package R3;

import A.i;
import P3.v;
import com.google.common.io.BaseEncoding$DecodingException;
import java.math.RoundingMode;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f3113a;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f3114b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3115c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3116d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3117e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3118f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f3119g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean[] f3120h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3121i;

    public a(String str, char[] cArr, byte[] bArr, boolean z6) {
        this.f3113a = (String) v.checkNotNull(str);
        this.f3114b = (char[]) v.checkNotNull(cArr);
        try {
            int log2 = S3.e.log2(cArr.length, RoundingMode.UNNECESSARY);
            this.f3116d = log2;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(log2);
            int i2 = 1 << (3 - numberOfTrailingZeros);
            this.f3117e = i2;
            this.f3118f = log2 >> numberOfTrailingZeros;
            this.f3115c = cArr.length - 1;
            this.f3119g = bArr;
            boolean[] zArr = new boolean[i2];
            for (int i7 = 0; i7 < this.f3118f; i7++) {
                zArr[S3.e.divide(i7 * 8, this.f3116d, RoundingMode.CEILING)] = true;
            }
            this.f3120h = zArr;
            this.f3121i = z6;
        } catch (ArithmeticException e3) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e3);
        }
    }

    public final int a(char c7) {
        if (c7 > 127) {
            throw new BaseEncoding$DecodingException("Unrecognized character: 0x" + Integer.toHexString(c7));
        }
        byte b7 = this.f3119g[c7];
        if (b7 != -1) {
            return b7;
        }
        if (c7 > ' ' && c7 != 127) {
            throw new BaseEncoding$DecodingException(i.h("Unrecognized character: ", c7));
        }
        throw new BaseEncoding$DecodingException("Unrecognized character: 0x" + Integer.toHexString(c7));
    }

    public final a b() {
        if (this.f3121i) {
            return this;
        }
        byte[] bArr = this.f3119g;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        int i2 = 65;
        while (true) {
            if (i2 > 90) {
                return new a(i.o(new StringBuilder(), this.f3113a, ".ignoreCase()"), this.f3114b, copyOf, true);
            }
            int i7 = i2 | 32;
            byte b7 = bArr[i2];
            byte b8 = bArr[i7];
            if (b7 == -1) {
                copyOf[i2] = b8;
            } else {
                v.checkState(b8 == -1, "Can't ignoreCase() since '%s' and '%s' encode different values", (char) i2, (char) i7);
                copyOf[i7] = b7;
            }
            i2++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3121i == aVar.f3121i && Arrays.equals(this.f3114b, aVar.f3114b);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f3114b) + (this.f3121i ? 1231 : 1237);
    }

    public boolean matches(char c7) {
        byte[] bArr = this.f3119g;
        return c7 < bArr.length && bArr[c7] != -1;
    }

    public String toString() {
        return this.f3113a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(java.lang.String r10, char[] r11) {
        /*
            r9 = this;
            r0 = 128(0x80, float:1.794E-43)
            byte[] r1 = new byte[r0]
            r2 = -1
            java.util.Arrays.fill(r1, r2)
            r3 = 0
            r4 = r3
        La:
            int r5 = r11.length
            if (r4 >= r5) goto L2b
            char r5 = r11[r4]
            r6 = 1
            if (r5 >= r0) goto L14
            r7 = r6
            goto L15
        L14:
            r7 = r3
        L15:
            java.lang.String r8 = "Non-ASCII character: %s"
            P3.v.checkArgument(r7, r8, r5)
            r7 = r1[r5]
            if (r7 != r2) goto L1f
            goto L20
        L1f:
            r6 = r3
        L20:
            java.lang.String r7 = "Duplicate character: %s"
            P3.v.checkArgument(r6, r7, r5)
            byte r6 = (byte) r4
            r1[r5] = r6
            int r4 = r4 + 1
            goto La
        L2b:
            r9.<init>(r10, r11, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: R3.a.<init>(java.lang.String, char[]):void");
    }
}
