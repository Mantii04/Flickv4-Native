package cz.msebera.android.httpclient.conn.ssl;

import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes2.dex */
public final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    public DistinguishedNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.dn = name;
        this.length = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        return new java.lang.String(r1, r2, r8.cur - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String escapedAV() {
        /*
            r8 = this;
            int r0 = r8.pos
            r8.beg = r0
            r8.end = r0
        L6:
            int r0 = r8.pos
            int r1 = r8.length
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.chars
            int r2 = r8.beg
            int r3 = r8.end
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.chars
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L5c
            if (r2 == r5) goto L51
            r5 = 92
            if (r2 == r5) goto L3e
            if (r2 == r4) goto L51
            if (r2 == r3) goto L51
            int r3 = r8.end
            int r4 = r3 + 1
            r8.end = r4
            r1[r3] = r2
            int r0 = r0 + 1
            r8.pos = r0
            goto L6
        L3e:
            int r0 = r8.end
            int r2 = r0 + 1
            r8.end = r2
            char r2 = r8.getEscaped()
            r1[r0] = r2
            int r0 = r8.pos
            int r0 = r0 + 1
            r8.pos = r0
            goto L6
        L51:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.beg
            int r3 = r8.end
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5c:
            int r2 = r8.end
            r8.cur = r2
            int r0 = r0 + 1
            r8.pos = r0
            int r0 = r2 + 1
            r8.end = r0
            r1[r2] = r6
        L6a:
            int r0 = r8.pos
            int r1 = r8.length
            if (r0 >= r1) goto L83
            char[] r2 = r8.chars
            char r7 = r2[r0]
            if (r7 != r6) goto L83
            int r1 = r8.end
            int r7 = r1 + 1
            r8.end = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.pos = r0
            goto L6a
        L83:
            if (r0 == r1) goto L8f
            char[] r1 = r8.chars
            char r0 = r1[r0]
            if (r0 == r3) goto L8f
            if (r0 == r4) goto L8f
            if (r0 != r5) goto L6
        L8f:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.chars
            int r2 = r8.beg
            int r3 = r8.cur
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.conn.ssl.DistinguishedNameParser.escapedAV():java.lang.String");
    }

    private int getByte(int i2) {
        int i7;
        int i8;
        int i9 = i2 + 1;
        if (i9 >= this.length) {
            throw new IllegalStateException("Malformed DN: " + this.dn);
        }
        char[] cArr = this.chars;
        char c7 = cArr[i2];
        if (c7 >= '0' && c7 <= '9') {
            i7 = c7 - '0';
        } else if (c7 >= 'a' && c7 <= 'f') {
            i7 = c7 - 'W';
        } else {
            if (c7 < 'A' || c7 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            i7 = c7 - '7';
        }
        char c8 = cArr[i9];
        if (c8 >= '0' && c8 <= '9') {
            i8 = c8 - '0';
        } else if (c8 >= 'a' && c8 <= 'f') {
            i8 = c8 - 'W';
        } else {
            if (c8 < 'A' || c8 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            i8 = c8 - '7';
        }
        return (i7 << 4) + i8;
    }

    private char getEscaped() {
        int i2 = this.pos + 1;
        this.pos = i2;
        if (i2 == this.length) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        char c7 = this.chars[i2];
        if (c7 == ' ' || c7 == '%' || c7 == '\\' || c7 == '_' || c7 == '\"' || c7 == '#') {
            return c7;
        }
        switch (c7) {
            case '*':
            case '+':
            case ',':
                return c7;
            default:
                switch (c7) {
                    case ';':
                    case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    case '=':
                    case '>':
                        return c7;
                    default:
                        return getUTF8();
                }
        }
    }

    private char getUTF8() {
        int i2;
        int i7;
        int i8 = getByte(this.pos);
        this.pos++;
        if (i8 < 128) {
            return (char) i8;
        }
        if (i8 < 192 || i8 > 247) {
            return '?';
        }
        if (i8 <= 223) {
            i2 = i8 & 31;
            i7 = 1;
        } else if (i8 <= 239) {
            i2 = i8 & 15;
            i7 = 2;
        } else {
            i2 = i8 & 7;
            i7 = 3;
        }
        for (int i9 = 0; i9 < i7; i9++) {
            int i10 = this.pos;
            int i11 = i10 + 1;
            this.pos = i11;
            if (i11 == this.length || this.chars[i11] != '\\') {
                return '?';
            }
            int i12 = i10 + 2;
            this.pos = i12;
            int i13 = getByte(i12);
            this.pos++;
            if ((i13 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (i13 & 63);
        }
        return (char) i2;
    }

    private String hexAV() {
        int i2;
        char[] cArr;
        char c7;
        int i7 = this.pos;
        if (i7 + 4 >= this.length) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        this.beg = i7;
        this.pos = i7 + 1;
        while (true) {
            i2 = this.pos;
            if (i2 == this.length || (c7 = (cArr = this.chars)[i2]) == '+' || c7 == ',' || c7 == ';') {
                break;
            }
            if (c7 == ' ') {
                this.end = i2;
                this.pos = i2 + 1;
                while (true) {
                    int i8 = this.pos;
                    if (i8 >= this.length || this.chars[i8] != ' ') {
                        break;
                    }
                    this.pos = i8 + 1;
                }
            } else {
                if (c7 >= 'A' && c7 <= 'F') {
                    cArr[i2] = (char) (c7 + TokenParser.SP);
                }
                this.pos = i2 + 1;
            }
        }
        this.end = i2;
        int i9 = this.end;
        int i10 = this.beg;
        int i11 = i9 - i10;
        if (i11 < 5 || (i11 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        int i12 = i11 / 2;
        byte[] bArr = new byte[i12];
        int i13 = i10 + 1;
        for (int i14 = 0; i14 < i12; i14++) {
            bArr[i14] = (byte) getByte(i13);
            i13 += 2;
        }
        return new String(this.chars, this.beg, i11);
    }

    private String nextAT() {
        int i2;
        int i7;
        int i8;
        int i9;
        char c7;
        int i10;
        int i11;
        char c8;
        char c9;
        while (true) {
            i2 = this.pos;
            i7 = this.length;
            if (i2 >= i7 || this.chars[i2] != ' ') {
                break;
            }
            this.pos = i2 + 1;
        }
        if (i2 == i7) {
            return null;
        }
        this.beg = i2;
        this.pos = i2 + 1;
        while (true) {
            i8 = this.pos;
            i9 = this.length;
            if (i8 >= i9 || (c9 = this.chars[i8]) == '=' || c9 == ' ') {
                break;
            }
            this.pos = i8 + 1;
        }
        if (i8 >= i9) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        this.end = i8;
        if (this.chars[i8] == ' ') {
            while (true) {
                i10 = this.pos;
                i11 = this.length;
                if (i10 >= i11 || (c8 = this.chars[i10]) == '=' || c8 != ' ') {
                    break;
                }
                this.pos = i10 + 1;
            }
            if (this.chars[i10] != '=' || i10 == i11) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
        }
        this.pos++;
        while (true) {
            int i12 = this.pos;
            if (i12 >= this.length || this.chars[i12] != ' ') {
                break;
            }
            this.pos = i12 + 1;
        }
        int i13 = this.end;
        int i14 = this.beg;
        if (i13 - i14 > 4) {
            char[] cArr = this.chars;
            if (cArr[i14 + 3] == '.' && (((c7 = cArr[i14]) == 'O' || c7 == 'o') && ((cArr[i14 + 1] == 'I' || cArr[i14 + 1] == 'i') && (cArr[i14 + 2] == 'D' || cArr[i14 + 2] == 'd')))) {
                this.beg = i14 + 4;
            }
        }
        char[] cArr2 = this.chars;
        int i15 = this.beg;
        return new String(cArr2, i15, i13 - i15);
    }

    private String quotedAV() {
        int i2 = this.pos + 1;
        this.pos = i2;
        this.beg = i2;
        this.end = i2;
        while (true) {
            int i7 = this.pos;
            if (i7 == this.length) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
            char[] cArr = this.chars;
            char c7 = cArr[i7];
            if (c7 == '\"') {
                this.pos = i7 + 1;
                while (true) {
                    int i8 = this.pos;
                    if (i8 >= this.length || this.chars[i8] != ' ') {
                        break;
                    }
                    this.pos = i8 + 1;
                }
                char[] cArr2 = this.chars;
                int i9 = this.beg;
                return new String(cArr2, i9, this.end - i9);
            }
            if (c7 == '\\') {
                cArr[this.end] = getEscaped();
            } else {
                cArr[this.end] = c7;
            }
            this.pos++;
            this.end++;
        }
    }

    public String findMostSpecific(String str) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String nextAT = nextAT();
        if (nextAT == null) {
            return null;
        }
        do {
            int i2 = this.pos;
            if (i2 == this.length) {
                return null;
            }
            char c7 = this.chars[i2];
            String escapedAV = c7 != '\"' ? c7 != '#' ? (c7 == '+' || c7 == ',' || c7 == ';') ? "" : escapedAV() : hexAV() : quotedAV();
            if (str.equalsIgnoreCase(nextAT)) {
                return escapedAV;
            }
            int i7 = this.pos;
            if (i7 >= this.length) {
                return null;
            }
            char c8 = this.chars[i7];
            if (c8 != ',' && c8 != ';' && c8 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            this.pos = i7 + 1;
            nextAT = nextAT();
        } while (nextAT != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }

    public List<String> getAllMostSpecificFirst(String str) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        List<String> list = Collections.EMPTY_LIST;
        String nextAT = nextAT();
        if (nextAT == null) {
            return list;
        }
        do {
            int i2 = this.pos;
            if (i2 >= this.length) {
                return list;
            }
            char c7 = this.chars[i2];
            String escapedAV = c7 != '\"' ? c7 != '#' ? (c7 == '+' || c7 == ',' || c7 == ';') ? "" : escapedAV() : hexAV() : quotedAV();
            if (str.equalsIgnoreCase(nextAT)) {
                if (list.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(escapedAV);
            }
            int i7 = this.pos;
            if (i7 >= this.length) {
                return list;
            }
            char c8 = this.chars[i7];
            if (c8 != ',' && c8 != ';' && c8 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            this.pos = i7 + 1;
            nextAT = nextAT();
        } while (nextAT != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }
}
