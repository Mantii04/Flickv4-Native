package c4;

import A.i;
import java.io.BufferedReader;
import java.io.Reader;
import java.io.StringReader;

/* renamed from: c4.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0736f {

    /* renamed from: a, reason: collision with root package name */
    public long f8965a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8966b;

    /* renamed from: c, reason: collision with root package name */
    public long f8967c;

    /* renamed from: d, reason: collision with root package name */
    public long f8968d;

    /* renamed from: e, reason: collision with root package name */
    public char f8969e;

    /* renamed from: f, reason: collision with root package name */
    public final Reader f8970f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8971g;

    /* renamed from: h, reason: collision with root package name */
    public long f8972h;

    public C0736f(Reader reader) {
        this.f8970f = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f8966b = false;
        this.f8971g = false;
        this.f8969e = (char) 0;
        this.f8967c = 0L;
        this.f8965a = 1L;
        this.f8972h = 0L;
        this.f8968d = 1L;
    }

    public com.imsdk.a.a.a.b a(String str) {
        StringBuilder o6 = b.c.o(str);
        o6.append(toString());
        return new com.imsdk.a.a.a.b(o6.toString());
    }

    public final Object b(char c7) {
        if (c7 == '\"' || c7 == '\'') {
            return a(c7);
        }
        StringBuilder sb = new StringBuilder();
        while (c7 >= ' ' && ",:]}/\\\"[{;=#".indexOf(c7) < 0) {
            sb.append(c7);
            c7 = c();
        }
        if (!this.f8966b) {
            a();
        }
        String trim = sb.toString().trim();
        if ("".equals(trim)) {
            throw a("Missing value");
        }
        return C0732b.o(trim);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        if (r7.f8969e != '\r') goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char c() {
        /*
            r7 = this;
            boolean r0 = r7.f8971g
            r1 = 0
            if (r0 == 0) goto La
            r7.f8971g = r1
            char r0 = r7.f8969e
            goto L10
        La:
            java.io.Reader r0 = r7.f8970f     // Catch: java.io.IOException -> L42
            int r0 = r0.read()     // Catch: java.io.IOException -> L42
        L10:
            if (r0 > 0) goto L16
            r0 = 1
            r7.f8966b = r0
            return r1
        L16:
            if (r0 <= 0) goto L3e
            long r1 = r7.f8967c
            r3 = 1
            long r1 = r1 + r3
            r7.f8967c = r1
            r1 = 0
            r5 = 13
            if (r0 != r5) goto L31
        L25:
            long r5 = r7.f8968d
            long r5 = r5 + r3
            r7.f8968d = r5
            long r3 = r7.f8965a
            r7.f8972h = r3
        L2e:
            r7.f8965a = r1
            goto L3e
        L31:
            r6 = 10
            if (r0 != r6) goto L3a
            char r6 = r7.f8969e
            if (r6 == r5) goto L2e
            goto L25
        L3a:
            long r1 = r7.f8965a
            long r1 = r1 + r3
            goto L2e
        L3e:
            char r0 = (char) r0
            r7.f8969e = r0
            return r0
        L42:
            r0 = move-exception
            com.imsdk.a.a.a.b r1 = new com.imsdk.a.a.a.b
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.C0736f.c():char");
    }

    public char d() {
        char c7;
        do {
            c7 = c();
            if (c7 == 0) {
                break;
            }
        } while (c7 <= ' ');
        return c7;
    }

    public Object e() {
        char d7 = d();
        if (d7 == '[') {
            a();
            try {
                return new C0731a(this);
            } catch (StackOverflowError e3) {
                throw new com.imsdk.a.a.a.b("JSON Array or Object depth too large to process.", e3);
            }
        }
        if (d7 != '{') {
            return b(d7);
        }
        a();
        try {
            return new C0732b(this);
        } catch (StackOverflowError e7) {
            throw new com.imsdk.a.a.a.b("JSON Array or Object depth too large to process.", e7);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(" at ");
        sb.append(this.f8967c);
        sb.append(" [character ");
        sb.append(this.f8965a);
        sb.append(" line ");
        return i.n(sb, this.f8968d, "]");
    }

    public C0736f(String str) {
        this(new StringReader(str));
    }

    public boolean b() {
        return this.f8966b && !this.f8971g;
    }

    public com.imsdk.a.a.a.b a(String str, Throwable th) {
        StringBuilder o6 = b.c.o(str);
        o6.append(toString());
        return new com.imsdk.a.a.a.b(o6.toString(), th);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0080, code lost:
    
        throw a("Unterminated string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(char r7) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L5:
            char r1 = r6.c()
            if (r1 == 0) goto L7a
            r2 = 10
            if (r1 == r2) goto L7a
            r3 = 13
            if (r1 == r3) goto L7a
            r4 = 92
            if (r1 == r4) goto L22
            if (r1 != r7) goto L1e
            java.lang.String r7 = r0.toString()
            return r7
        L1e:
            r0.append(r1)
            goto L5
        L22:
            char r1 = r6.c()
            r5 = 34
            if (r1 == r5) goto L1e
            r5 = 39
            if (r1 == r5) goto L1e
            r5 = 47
            if (r1 == r5) goto L1e
            if (r1 == r4) goto L1e
            r4 = 98
            if (r1 == r4) goto L77
            r4 = 102(0x66, float:1.43E-43)
            if (r1 == r4) goto L74
            r4 = 110(0x6e, float:1.54E-43)
            if (r1 == r4) goto L70
            r2 = 114(0x72, float:1.6E-43)
            if (r1 == r2) goto L6c
            r2 = 116(0x74, float:1.63E-43)
            if (r1 == r2) goto L69
            r2 = 117(0x75, float:1.64E-43)
            java.lang.String r3 = "Illegal escape."
            if (r1 != r2) goto L64
            r1 = 4
            java.lang.String r1 = r6.a(r1)     // Catch: java.lang.NumberFormatException -> L5e
            r2 = 16
            int r1 = java.lang.Integer.parseInt(r1, r2)     // Catch: java.lang.NumberFormatException -> L5e
            char r1 = (char) r1     // Catch: java.lang.NumberFormatException -> L5e
            r0.append(r1)     // Catch: java.lang.NumberFormatException -> L5e
            goto L5
        L5e:
            r7 = move-exception
            com.imsdk.a.a.a.b r7 = r6.a(r3, r7)
            throw r7
        L64:
            com.imsdk.a.a.a.b r7 = r6.a(r3)
            throw r7
        L69:
            r1 = 9
            goto L1e
        L6c:
            r0.append(r3)
            goto L5
        L70:
            r0.append(r2)
            goto L5
        L74:
            r1 = 12
            goto L1e
        L77:
            r1 = 8
            goto L1e
        L7a:
            java.lang.String r7 = "Unterminated string"
            com.imsdk.a.a.a.b r7 = r6.a(r7)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.C0736f.a(char):java.lang.String");
    }

    public String a(int i2) {
        if (i2 == 0) {
            return "";
        }
        char[] cArr = new char[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            cArr[i7] = c();
            if (b()) {
                throw a("Substring bounds error");
            }
        }
        return new String(cArr);
    }

    public void a() {
        long j7;
        if (!this.f8971g) {
            long j8 = this.f8967c;
            if (j8 > 0) {
                this.f8967c = j8 - 1;
                char c7 = this.f8969e;
                if (c7 != '\r' && c7 != '\n') {
                    long j9 = this.f8965a;
                    if (j9 > 0) {
                        j7 = j9 - 1;
                    }
                    this.f8971g = true;
                    this.f8966b = false;
                    return;
                }
                this.f8968d--;
                j7 = this.f8972h;
                this.f8965a = j7;
                this.f8971g = true;
                this.f8966b = false;
                return;
            }
        }
        throw new com.imsdk.a.a.a.b("Stepping back two steps is not supported");
    }
}
