package R3;

import A.i;
import P3.AbstractC0226a;
import P3.v;
import com.google.common.io.BaseEncoding$DecodingException;
import java.util.Objects;

/* loaded from: classes2.dex */
public class d extends e {

    /* renamed from: b, reason: collision with root package name */
    public final a f3123b;

    /* renamed from: c, reason: collision with root package name */
    public final Character f3124c;

    /* renamed from: d, reason: collision with root package name */
    public volatile e f3125d;

    /* renamed from: e, reason: collision with root package name */
    public volatile e f3126e;

    public d(a aVar, Character ch) {
        this.f3123b = (a) v.checkNotNull(aVar);
        v.checkArgument(ch == null || !aVar.matches(ch.charValue()), "Padding character %s was already in alphabet", ch);
        this.f3124c = ch;
    }

    @Override // R3.e
    public int a(byte[] bArr, CharSequence charSequence) {
        int i2;
        int i7;
        v.checkNotNull(bArr);
        CharSequence c7 = c(charSequence);
        int length = c7.length();
        a aVar = this.f3123b;
        if (!aVar.f3120h[length % aVar.f3117e]) {
            throw new BaseEncoding$DecodingException("Invalid input length " + c7.length());
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < c7.length()) {
            long j7 = 0;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                i2 = aVar.f3116d;
                i7 = aVar.f3117e;
                if (i10 >= i7) {
                    break;
                }
                j7 <<= i2;
                if (i8 + i10 < c7.length()) {
                    j7 |= aVar.a(c7.charAt(i11 + i8));
                    i11++;
                }
                i10++;
            }
            int i12 = aVar.f3118f;
            int i13 = (i12 * 8) - (i11 * i2);
            int i14 = (i12 - 1) * 8;
            while (i14 >= i13) {
                bArr[i9] = (byte) ((j7 >>> i14) & 255);
                i14 -= 8;
                i9++;
            }
            i8 += i7;
        }
        return i9;
    }

    @Override // R3.e
    public void b(StringBuilder sb, byte[] bArr, int i2, int i7) {
        v.checkNotNull(sb);
        v.checkPositionIndexes(i2, i2 + i7, bArr.length);
        int i8 = 0;
        while (i8 < i7) {
            a aVar = this.f3123b;
            d(sb, bArr, i2 + i8, Math.min(aVar.f3118f, i7 - i8));
            i8 += aVar.f3118f;
        }
    }

    @Override // R3.e
    public final CharSequence c(CharSequence charSequence) {
        v.checkNotNull(charSequence);
        Character ch = this.f3124c;
        if (ch == null) {
            return charSequence;
        }
        char charValue = ch.charValue();
        int length = charSequence.length() - 1;
        while (length >= 0 && charSequence.charAt(length) == charValue) {
            length--;
        }
        return charSequence.subSequence(0, length + 1);
    }

    public final void d(StringBuilder sb, byte[] bArr, int i2, int i7) {
        v.checkNotNull(sb);
        v.checkPositionIndexes(i2, i2 + i7, bArr.length);
        a aVar = this.f3123b;
        int i8 = 0;
        v.checkArgument(i7 <= aVar.f3118f);
        long j7 = 0;
        for (int i9 = 0; i9 < i7; i9++) {
            j7 = (j7 | (bArr[i2 + i9] & 255)) << 8;
        }
        int i10 = aVar.f3116d;
        int i11 = ((i7 + 1) * 8) - i10;
        while (i8 < i7 * 8) {
            sb.append(aVar.f3114b[((int) (j7 >>> (i11 - i8))) & aVar.f3115c]);
            i8 += i10;
        }
        Character ch = this.f3124c;
        if (ch != null) {
            while (i8 < aVar.f3118f * 8) {
                sb.append(ch.charValue());
                i8 += i10;
            }
        }
    }

    public e e(a aVar, Character ch) {
        return new d(aVar, ch);
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f3123b.equals(dVar.f3123b) && Objects.equals(this.f3124c, dVar.f3124c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f3123b.hashCode() ^ Objects.hashCode(this.f3124c);
    }

    @Override // R3.e
    public e ignoreCase() {
        e eVar = this.f3126e;
        if (eVar == null) {
            a b7 = this.f3123b.b();
            eVar = b7 == this.f3123b ? this : e(b7, this.f3124c);
            this.f3126e = eVar;
        }
        return eVar;
    }

    @Override // R3.e
    public e lowerCase() {
        boolean z6;
        e eVar = this.f3125d;
        if (eVar == null) {
            a aVar = this.f3123b;
            char[] cArr = aVar.f3114b;
            int length = cArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (AbstractC0226a.isUpperCase(cArr[i2])) {
                    int length2 = cArr.length;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= length2) {
                            z6 = false;
                            break;
                        }
                        if (AbstractC0226a.isLowerCase(cArr[i7])) {
                            z6 = true;
                            break;
                        }
                        i7++;
                    }
                    v.checkState(!z6, "Cannot call lowerCase() on a mixed-case alphabet");
                    char[] cArr2 = new char[cArr.length];
                    for (int i8 = 0; i8 < cArr.length; i8++) {
                        cArr2[i8] = AbstractC0226a.toLowerCase(cArr[i8]);
                    }
                    a aVar2 = new a(i.o(new StringBuilder(), aVar.f3113a, ".lowerCase()"), cArr2);
                    aVar = aVar.f3121i ? aVar2.b() : aVar2;
                } else {
                    i2++;
                }
            }
            eVar = aVar == this.f3123b ? this : e(aVar, this.f3124c);
            this.f3125d = eVar;
        }
        return eVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        a aVar = this.f3123b;
        sb.append(aVar);
        if (8 % aVar.f3116d != 0) {
            Character ch = this.f3124c;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public d(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }
}
