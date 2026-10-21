package f6;

import e6.A;
import e6.AbstractC0860b;
import e6.C0867i;
import e6.C0870l;
import e6.H;
import e6.Q;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f14414a = Q.asUtf8ToByteArray("0123456789abcdef");

    public static final C0867i commonReadAndWriteUnsafe(C0870l c0870l, C0867i unsafeCursor) {
        j.checkNotNullParameter(c0870l, "<this>");
        j.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        C0867i resolveDefaultParameter = AbstractC0860b.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.f14010b != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        resolveDefaultParameter.f14010b = c0870l;
        resolveDefaultParameter.f14011e = true;
        return resolveDefaultParameter;
    }

    public static final byte[] getHEX_DIGIT_BYTES() {
        return f14414a;
    }

    public static final boolean rangeEquals(H segment, int i2, byte[] bytes, int i7, int i8) {
        j.checkNotNullParameter(segment, "segment");
        j.checkNotNullParameter(bytes, "bytes");
        int i9 = segment.f13993c;
        byte[] bArr = segment.f13991a;
        while (i7 < i8) {
            if (i2 == i9) {
                segment = segment.f13996f;
                j.checkNotNull(segment);
                byte[] bArr2 = segment.f13991a;
                bArr = bArr2;
                i2 = segment.f13992b;
                i9 = segment.f13993c;
            }
            if (bArr[i2] != bytes[i7]) {
                return false;
            }
            i2++;
            i7++;
        }
        return true;
    }

    public static final String readUtf8Line(C0870l c0870l, long j7) {
        j.checkNotNullParameter(c0870l, "<this>");
        if (j7 > 0) {
            long j8 = j7 - 1;
            if (c0870l.getByte(j8) == 13) {
                String readUtf8 = c0870l.readUtf8(j8);
                c0870l.skip(2L);
                return readUtf8;
            }
        }
        String readUtf82 = c0870l.readUtf8(j7);
        c0870l.skip(1L);
        return readUtf82;
    }

    public static final int selectPrefix(C0870l c0870l, A options, boolean z6) {
        int i2;
        byte[] bArr;
        int i7;
        int i8;
        H h7;
        byte[] bArr2;
        int i9;
        j.checkNotNullParameter(c0870l, "<this>");
        j.checkNotNullParameter(options, "options");
        H h8 = c0870l.f14019b;
        if (h8 == null) {
            return z6 ? -2 : -1;
        }
        int i10 = h8.f13992b;
        int i11 = h8.f13993c;
        int[] trie$okio = options.getTrie$okio();
        byte[] bArr3 = h8.f13991a;
        H h9 = h8;
        int i12 = -1;
        int i13 = 0;
        loop0: while (true) {
            int i14 = i13 + 1;
            int i15 = trie$okio[i13];
            int i16 = i13 + 2;
            int i17 = trie$okio[i14];
            if (i17 != -1) {
                i12 = i17;
            }
            if (h9 == null) {
                break;
            }
            if (i15 >= 0) {
                int i18 = i10 + 1;
                int i19 = bArr3[i10] & 255;
                int i20 = i16 + i15;
                while (i16 != i20) {
                    if (i19 == trie$okio[i16]) {
                        i2 = trie$okio[i16 + i15];
                        if (i18 == i11) {
                            h9 = h9.f13996f;
                            j.checkNotNull(h9);
                            i8 = h9.f13992b;
                            i7 = h9.f13993c;
                            bArr = h9.f13991a;
                            if (h9 == h8) {
                                h9 = null;
                            }
                        } else {
                            bArr = bArr3;
                            i7 = i11;
                            i8 = i18;
                        }
                        if (i2 >= 0) {
                            return i2;
                        }
                        byte[] bArr4 = bArr;
                        i13 = -i2;
                        i10 = i8;
                        i11 = i7;
                        bArr3 = bArr4;
                    } else {
                        i16++;
                    }
                }
                break loop0;
            }
            int i21 = (i15 * (-1)) + i16;
            while (true) {
                int i22 = i10 + 1;
                int i23 = i16 + 1;
                if ((bArr3[i10] & 255) != trie$okio[i16]) {
                    break loop0;
                }
                boolean z7 = i23 == i21;
                if (i22 == i11) {
                    j.checkNotNull(h9);
                    H h10 = h9.f13996f;
                    j.checkNotNull(h10);
                    i9 = h10.f13992b;
                    int i24 = h10.f13993c;
                    bArr2 = h10.f13991a;
                    if (h10 != h8) {
                        h7 = h10;
                        i11 = i24;
                    } else {
                        if (!z7) {
                            break loop0;
                        }
                        i11 = i24;
                        h7 = null;
                    }
                } else {
                    h7 = h9;
                    bArr2 = bArr3;
                    i9 = i22;
                }
                if (z7) {
                    i2 = trie$okio[i23];
                    int i25 = i9;
                    i7 = i11;
                    i8 = i25;
                    byte[] bArr5 = bArr2;
                    h9 = h7;
                    bArr = bArr5;
                    break;
                }
                i10 = i9;
                bArr3 = bArr2;
                h9 = h7;
                i16 = i23;
            }
        }
        if (z6) {
            return -2;
        }
        return i12;
    }

    public static /* synthetic */ int selectPrefix$default(C0870l c0870l, A a7, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return selectPrefix(c0870l, a7, z6);
    }
}
