package okhttp3.internal;

import P5.p;
import e6.C0870l;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Locale;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes2.dex */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (j.compare((int) charAt, 31) <= 0 || j.compare((int) charAt, 127) >= 0 || StringsKt__StringsKt.indexOf$default((CharSequence) " #%/:?@[\\]", charAt, 0, false, 6, (Object) null) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i2, int i7, byte[] bArr, int i8) {
        int i9 = i8;
        while (i2 < i7) {
            if (i9 == bArr.length) {
                return false;
            }
            if (i9 != i8) {
                if (str.charAt(i2) != '.') {
                    return false;
                }
                i2++;
            }
            int i10 = i2;
            int i11 = 0;
            while (i10 < i7) {
                char charAt = str.charAt(i10);
                if (j.compare((int) charAt, 48) < 0 || j.compare((int) charAt, 57) > 0) {
                    break;
                }
                if ((i11 == 0 && i2 != i10) || (i11 = ((i11 * 10) + charAt) - 48) > 255) {
                    return false;
                }
                i10++;
            }
            if (i10 - i2 == 0) {
                return false;
            }
            bArr[i9] = (byte) i11;
            i9++;
            i2 = i10;
        }
        return i9 == i8 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
    
        if (r11 == 16) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0093, code lost:
    
        if (r12 != (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0095, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0096, code lost:
    
        r0 = r11 - r12;
        java.lang.System.arraycopy(r8, r12, r8, 16 - r0, r0);
        java.util.Arrays.fill(r8, r12, (16 - r11) + r12, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a6, code lost:
    
        return java.net.InetAddress.getByAddress(r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.net.InetAddress decodeIpv6(java.lang.String r16, int r17, int r18) {
        /*
            r6 = r18
            r7 = 16
            byte[] r8 = new byte[r7]
            r9 = 0
            r10 = -1
            r2 = r17
            r11 = r9
            r12 = r10
            r13 = r12
        Ld:
            r14 = 0
            if (r2 >= r6) goto L91
            if (r11 != r7) goto L13
            return r14
        L13:
            int r15 = r2 + 2
            if (r15 > r6) goto L33
            r4 = 4
            r5 = 0
            java.lang.String r1 = "::"
            r3 = 0
            r0 = r16
            boolean r1 = P5.p.startsWith$default(r0, r1, r2, r3, r4, r5)
            if (r1 == 0) goto L33
            if (r12 == r10) goto L27
            return r14
        L27:
            int r11 = r11 + 2
            if (r15 != r6) goto L2e
            r12 = r11
            goto L91
        L2e:
            r0 = r16
            r12 = r11
            r13 = r15
            goto L62
        L33:
            if (r11 == 0) goto L44
            r4 = 4
            r5 = 0
            java.lang.String r1 = ":"
            r3 = 0
            r0 = r16
            boolean r1 = P5.p.startsWith$default(r0, r1, r2, r3, r4, r5)
            if (r1 == 0) goto L48
            int r2 = r2 + 1
        L44:
            r0 = r16
            r13 = r2
            goto L62
        L48:
            r4 = 4
            r5 = 0
            java.lang.String r1 = "."
            r3 = 0
            r0 = r16
            boolean r1 = P5.p.startsWith$default(r0, r1, r2, r3, r4, r5)
            if (r1 == 0) goto L61
            int r1 = r11 + (-2)
            boolean r0 = decodeIpv4Suffix(r0, r13, r6, r8, r1)
            if (r0 != 0) goto L5e
            return r14
        L5e:
            int r11 = r11 + 2
            goto L91
        L61:
            return r14
        L62:
            r1 = r9
            r2 = r13
        L64:
            if (r2 >= r6) goto L76
            char r3 = r0.charAt(r2)
            int r3 = okhttp3.internal.Util.parseHexDigit(r3)
            if (r3 == r10) goto L76
            int r1 = r1 << 4
            int r1 = r1 + r3
            int r2 = r2 + 1
            goto L64
        L76:
            int r3 = r2 - r13
            if (r3 == 0) goto L90
            r4 = 4
            if (r3 <= r4) goto L7e
            goto L90
        L7e:
            int r3 = r11 + 1
            int r4 = r1 >>> 8
            r4 = r4 & 255(0xff, float:3.57E-43)
            byte r4 = (byte) r4
            r8[r11] = r4
            int r11 = r11 + 2
            r1 = r1 & 255(0xff, float:3.57E-43)
            byte r1 = (byte) r1
            r8[r3] = r1
            goto Ld
        L90:
            return r14
        L91:
            if (r11 == r7) goto La2
            if (r12 != r10) goto L96
            return r14
        L96:
            int r0 = r11 - r12
            int r1 = 16 - r0
            java.lang.System.arraycopy(r8, r12, r8, r1, r0)
            int r7 = r7 - r11
            int r7 = r7 + r12
            java.util.Arrays.fill(r8, r12, r7, r9)
        La2:
            java.net.InetAddress r0 = java.net.InetAddress.getByAddress(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.HostnamesKt.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i2 = -1;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i8 < bArr.length) {
            int i10 = i8;
            while (i10 < 16 && bArr[i10] == 0 && bArr[i10 + 1] == 0) {
                i10 += 2;
            }
            int i11 = i10 - i8;
            if (i11 > i9 && i11 >= 4) {
                i2 = i8;
                i9 = i11;
            }
            i8 = i10 + 2;
        }
        C0870l c0870l = new C0870l();
        while (i7 < bArr.length) {
            if (i7 == i2) {
                c0870l.writeByte(58);
                i7 += i9;
                if (i7 == 16) {
                    c0870l.writeByte(58);
                }
            } else {
                if (i7 > 0) {
                    c0870l.writeByte(58);
                }
                c0870l.writeHexadecimalUnsignedLong((Util.and(bArr[i7], 255) << 8) | Util.and(bArr[i7 + 1], 255));
                i7 += 2;
            }
        }
        return c0870l.readUtf8();
    }

    public static final String toCanonicalHost(String str) {
        j.checkNotNullParameter(str, "<this>");
        if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
            try {
                String ascii = IDN.toASCII(str);
                j.checkNotNullExpressionValue(ascii, "toASCII(host)");
                Locale US = Locale.US;
                j.checkNotNullExpressionValue(US, "US");
                String lowerCase = ascii.toLowerCase(US);
                j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (lowerCase.length() == 0) {
                    return null;
                }
                if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress decodeIpv6 = (p.startsWith$default(str, "[", false, 2, null) && p.endsWith$default(str, "]", false, 2, null)) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
        if (decodeIpv6 == null) {
            return null;
        }
        byte[] address = decodeIpv6.getAddress();
        if (address.length == 16) {
            j.checkNotNullExpressionValue(address, "address");
            return inet6AddressToAscii(address);
        }
        if (address.length == 4) {
            return decodeIpv6.getHostAddress();
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
    }
}
