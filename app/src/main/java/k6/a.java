package k6;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import org.jsoup.UncheckedIOException;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final char[] f17318a;

    /* renamed from: b, reason: collision with root package name */
    public final Reader f17319b;

    /* renamed from: c, reason: collision with root package name */
    public int f17320c;

    /* renamed from: d, reason: collision with root package name */
    public int f17321d;

    /* renamed from: e, reason: collision with root package name */
    public int f17322e;

    /* renamed from: f, reason: collision with root package name */
    public int f17323f;

    /* renamed from: g, reason: collision with root package name */
    public int f17324g;

    /* renamed from: h, reason: collision with root package name */
    public final String[] f17325h;

    public a(Reader reader, int i2) {
        this.f17325h = new String[512];
        h6.k.notNull(reader);
        h6.k.isTrue(reader.markSupported());
        this.f17319b = reader;
        this.f17318a = new char[i2 > 32768 ? 32768 : i2];
        a();
    }

    public static String b(char[] cArr, String[] strArr, int i2, int i7) {
        if (i7 > 12) {
            return new String(cArr, i2, i7);
        }
        if (i7 < 1) {
            return "";
        }
        int i8 = 0;
        int i9 = i2;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i7) {
            i11 = (i11 * 31) + cArr[i9];
            i10++;
            i9++;
        }
        int length = i11 & (strArr.length - 1);
        String str = strArr[length];
        if (str == null) {
            String str2 = new String(cArr, i2, i7);
            strArr[length] = str2;
            return str2;
        }
        if (i7 == str.length()) {
            int i12 = i2;
            int i13 = i7;
            while (true) {
                int i14 = i13 - 1;
                if (i13 == 0) {
                    return str;
                }
                int i15 = i12 + 1;
                int i16 = i8 + 1;
                if (cArr[i12] != str.charAt(i8)) {
                    break;
                }
                i12 = i15;
                i13 = i14;
                i8 = i16;
            }
        }
        String str3 = new String(cArr, i2, i7);
        strArr[length] = str3;
        return str3;
    }

    public final void a() {
        Reader reader = this.f17319b;
        int i2 = this.f17322e;
        if (i2 < this.f17321d) {
            return;
        }
        try {
            reader.skip(i2);
            reader.mark(32768);
            int read = reader.read(this.f17318a);
            reader.reset();
            if (read != -1) {
                this.f17320c = read;
                this.f17323f += this.f17322e;
                this.f17322e = 0;
                this.f17324g = 0;
                if (read > 24576) {
                    read = 24576;
                }
                this.f17321d = read;
            }
        } catch (IOException e3) {
            throw new UncheckedIOException(e3);
        }
    }

    public void advance() {
        this.f17322e++;
    }

    public final char c() {
        a();
        int i2 = this.f17322e;
        char c7 = i2 >= this.f17320c ? (char) 65535 : this.f17318a[i2];
        this.f17322e = i2 + 1;
        return c7;
    }

    public String consumeTo(char c7) {
        char[] cArr;
        int i2;
        a();
        int i7 = this.f17322e;
        while (true) {
            int i8 = this.f17320c;
            cArr = this.f17318a;
            if (i7 >= i8) {
                i2 = -1;
                break;
            }
            if (c7 == cArr[i7]) {
                i2 = i7 - this.f17322e;
                break;
            }
            i7++;
        }
        String[] strArr = this.f17325h;
        if (i2 != -1) {
            String b7 = b(cArr, strArr, this.f17322e, i2);
            this.f17322e += i2;
            return b7;
        }
        a();
        int i9 = this.f17322e;
        String b8 = b(cArr, strArr, i9, this.f17320c - i9);
        this.f17322e = this.f17320c;
        return b8;
    }

    public String consumeToAny(char... cArr) {
        char[] cArr2;
        a();
        int i2 = this.f17322e;
        int i7 = this.f17320c;
        loop0: while (true) {
            int i8 = this.f17322e;
            cArr2 = this.f17318a;
            if (i8 >= i7) {
                break;
            }
            for (char c7 : cArr) {
                if (cArr2[this.f17322e] == c7) {
                    break loop0;
                }
            }
            this.f17322e++;
        }
        int i9 = this.f17322e;
        return i9 > i2 ? b(cArr2, this.f17325h, i2, i9 - i2) : "";
    }

    public char current() {
        a();
        int i2 = this.f17322e;
        if (i2 >= this.f17320c) {
            return (char) 65535;
        }
        return this.f17318a[i2];
    }

    public final String d() {
        char[] cArr;
        char c7;
        a();
        int i2 = this.f17322e;
        while (true) {
            int i7 = this.f17322e;
            int i8 = this.f17320c;
            cArr = this.f17318a;
            if (i7 >= i8 || (((c7 = cArr[i7]) < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !Character.isLetter(c7)))) {
                break;
            }
            this.f17322e++;
        }
        return b(cArr, this.f17325h, i2, this.f17322e - i2);
    }

    public final String e(char... cArr) {
        char[] cArr2;
        a();
        int i2 = this.f17322e;
        int i7 = this.f17320c;
        while (true) {
            int i8 = this.f17322e;
            cArr2 = this.f17318a;
            if (i8 >= i7 || Arrays.binarySearch(cArr, cArr2[i8]) >= 0) {
                break;
            }
            this.f17322e++;
        }
        int i9 = this.f17322e;
        return i9 > i2 ? b(cArr2, this.f17325h, i2, i9 - i2) : "";
    }

    public final boolean f(String str) {
        a();
        a();
        int length = str.length();
        if (length <= this.f17320c - this.f17322e) {
            for (int i2 = 0; i2 < length; i2++) {
                if (str.charAt(i2) == this.f17318a[this.f17322e + i2]) {
                }
            }
            this.f17322e = str.length() + this.f17322e;
            return true;
        }
        return false;
    }

    public final boolean g(String str) {
        a();
        int length = str.length();
        if (length <= this.f17320c - this.f17322e) {
            for (int i2 = 0; i2 < length; i2++) {
                if (Character.toUpperCase(str.charAt(i2)) == Character.toUpperCase(this.f17318a[this.f17322e + i2])) {
                }
            }
            this.f17322e = str.length() + this.f17322e;
            return true;
        }
        return false;
    }

    public final boolean h(char c7) {
        return !isEmpty() && this.f17318a[this.f17322e] == c7;
    }

    public final boolean i(char... cArr) {
        if (!isEmpty()) {
            a();
            char c7 = this.f17318a[this.f17322e];
            for (char c8 : cArr) {
                if (c8 == c7) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isEmpty() {
        a();
        return this.f17322e >= this.f17320c;
    }

    public final boolean j() {
        if (isEmpty()) {
            return false;
        }
        char c7 = this.f17318a[this.f17322e];
        if (c7 < 'A' || c7 > 'Z') {
            return (c7 >= 'a' && c7 <= 'z') || Character.isLetter(c7);
        }
        return true;
    }

    public final int k(String str) {
        a();
        char charAt = str.charAt(0);
        int i2 = this.f17322e;
        while (i2 < this.f17320c) {
            char[] cArr = this.f17318a;
            if (charAt != cArr[i2]) {
                do {
                    i2++;
                    if (i2 >= this.f17320c) {
                        break;
                    }
                } while (charAt != cArr[i2]);
            }
            int i7 = i2 + 1;
            int length = (str.length() + i7) - 1;
            int i8 = this.f17320c;
            if (i2 < i8 && length <= i8) {
                int i9 = i7;
                for (int i10 = 1; i9 < length && str.charAt(i10) == cArr[i9]; i10++) {
                    i9++;
                }
                if (i9 == length) {
                    return i2 - this.f17322e;
                }
            }
            i2 = i7;
        }
        return -1;
    }

    public final void l() {
        this.f17322e--;
    }

    public int pos() {
        return this.f17323f + this.f17322e;
    }

    public String toString() {
        int i2 = this.f17322e;
        return new String(this.f17318a, i2, this.f17320c - i2);
    }

    public a(Reader reader) {
        this(reader, 32768);
    }

    public a(String str) {
        this(new StringReader(str), str.length());
    }
}
