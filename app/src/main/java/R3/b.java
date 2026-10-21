package R3;

import P3.v;
import com.google.common.io.BaseEncoding$DecodingException;

/* loaded from: classes2.dex */
public final class b extends d {

    /* renamed from: f, reason: collision with root package name */
    public final char[] f3122f;

    public b(a aVar) {
        super(aVar, (Character) null);
        this.f3122f = new char[512];
        char[] cArr = aVar.f3114b;
        v.checkArgument(cArr.length == 16);
        for (int i2 = 0; i2 < 256; i2++) {
            char[] cArr2 = this.f3122f;
            cArr2[i2] = cArr[i2 >>> 4];
            cArr2[i2 | 256] = cArr[i2 & 15];
        }
    }

    @Override // R3.d, R3.e
    public final int a(byte[] bArr, CharSequence charSequence) {
        v.checkNotNull(bArr);
        if (charSequence.length() % 2 == 1) {
            throw new BaseEncoding$DecodingException("Invalid input length " + charSequence.length());
        }
        int i2 = 0;
        int i7 = 0;
        while (i2 < charSequence.length()) {
            char charAt = charSequence.charAt(i2);
            a aVar = this.f3123b;
            bArr[i7] = (byte) ((aVar.a(charAt) << 4) | aVar.a(charSequence.charAt(i2 + 1)));
            i2 += 2;
            i7++;
        }
        return i7;
    }

    @Override // R3.d, R3.e
    public final void b(StringBuilder sb, byte[] bArr, int i2, int i7) {
        v.checkNotNull(sb);
        v.checkPositionIndexes(i2, i2 + i7, bArr.length);
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = bArr[i2 + i8] & 255;
            char[] cArr = this.f3122f;
            sb.append(cArr[i9]);
            sb.append(cArr[i9 | 256]);
        }
    }

    @Override // R3.d
    public final e e(a aVar, Character ch) {
        return new b(aVar);
    }
}
