package R3;

import P3.v;
import com.google.common.io.BaseEncoding$DecodingException;

/* loaded from: classes2.dex */
public final class c extends d {
    public c(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }

    @Override // R3.d, R3.e
    public final int a(byte[] bArr, CharSequence charSequence) {
        v.checkNotNull(bArr);
        CharSequence c7 = c(charSequence);
        int length = c7.length();
        a aVar = this.f3123b;
        if (!aVar.f3120h[length % aVar.f3117e]) {
            throw new BaseEncoding$DecodingException("Invalid input length " + c7.length());
        }
        int i2 = 0;
        int i7 = 0;
        while (i2 < c7.length()) {
            int i8 = i2 + 2;
            int a7 = (aVar.a(c7.charAt(i2 + 1)) << 12) | (aVar.a(c7.charAt(i2)) << 18);
            int i9 = i7 + 1;
            bArr[i7] = (byte) (a7 >>> 16);
            if (i8 < c7.length()) {
                int i10 = i2 + 3;
                int a8 = a7 | (aVar.a(c7.charAt(i8)) << 6);
                int i11 = i7 + 2;
                bArr[i9] = (byte) ((a8 >>> 8) & 255);
                if (i10 < c7.length()) {
                    i2 += 4;
                    i7 += 3;
                    bArr[i11] = (byte) ((a8 | aVar.a(c7.charAt(i10))) & 255);
                } else {
                    i7 = i11;
                    i2 = i10;
                }
            } else {
                i7 = i9;
                i2 = i8;
            }
        }
        return i7;
    }

    @Override // R3.d, R3.e
    public final void b(StringBuilder sb, byte[] bArr, int i2, int i7) {
        v.checkNotNull(sb);
        int i8 = i2 + i7;
        v.checkPositionIndexes(i2, i8, bArr.length);
        while (i7 >= 3) {
            int i9 = i2 + 2;
            int i10 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
            i2 += 3;
            int i11 = i10 | (bArr[i9] & 255);
            a aVar = this.f3123b;
            sb.append(aVar.f3114b[i11 >>> 18]);
            char[] cArr = aVar.f3114b;
            sb.append(cArr[(i11 >>> 12) & 63]);
            sb.append(cArr[(i11 >>> 6) & 63]);
            sb.append(cArr[i11 & 63]);
            i7 -= 3;
        }
        if (i2 < i8) {
            d(sb, bArr, i2, i8 - i2);
        }
    }

    @Override // R3.d
    public final e e(a aVar, Character ch) {
        return new c(aVar, ch);
    }

    public c(a aVar, Character ch) {
        super(aVar, ch);
        v.checkArgument(aVar.f3114b.length == 64);
    }
}
