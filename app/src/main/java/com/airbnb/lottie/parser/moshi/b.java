package com.airbnb.lottie.parser.moshi;

import cz.msebera.android.httpclient.message.BasicHeaderValueFormatter;
import e2.C0853a;
import e6.C0870l;
import e6.InterfaceC0872n;
import java.io.EOFException;
import java.io.IOException;
import okio.ByteString;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: u, reason: collision with root package name */
    public static final ByteString f9078u = ByteString.encodeUtf8("'\\");

    /* renamed from: v, reason: collision with root package name */
    public static final ByteString f9079v = ByteString.encodeUtf8(BasicHeaderValueFormatter.UNSAFE_CHARS);

    /* renamed from: w, reason: collision with root package name */
    public static final ByteString f9080w = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: n, reason: collision with root package name */
    public final InterfaceC0872n f9081n;

    /* renamed from: p, reason: collision with root package name */
    public final C0870l f9082p;

    /* renamed from: q, reason: collision with root package name */
    public int f9083q;

    /* renamed from: r, reason: collision with root package name */
    public long f9084r;

    /* renamed from: s, reason: collision with root package name */
    public int f9085s;

    /* renamed from: t, reason: collision with root package name */
    public String f9086t;

    static {
        ByteString.encodeUtf8("\n\r");
        ByteString.encodeUtf8("*/");
    }

    public b(InterfaceC0872n interfaceC0872n) {
        this.f9075e = new int[32];
        this.f9076f = new String[32];
        this.f9077j = new int[32];
        this.f9083q = 0;
        if (interfaceC0872n == null) {
            throw new NullPointerException("source == null");
        }
        this.f9081n = interfaceC0872n;
        this.f9082p = interfaceC0872n.getBuffer();
        a(6);
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public void beginArray() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 3) {
            a(1);
            this.f9077j[this.f9074b - 1] = 0;
            this.f9083q = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_ARRAY but was " + peek() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public void beginObject() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 1) {
            a(3);
            this.f9083q = 0;
        } else {
            throw new JsonDataException("Expected BEGIN_OBJECT but was " + peek() + " at path " + getPath());
        }
    }

    public final void c() {
        b("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f9083q = 0;
        this.f9075e[0] = 8;
        this.f9074b = 1;
        this.f9082p.clear();
        this.f9081n.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01bb, code lost:
    
        if (r1 == 4) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01be, code lost:
    
        if (r1 != 7) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c0, code lost:
    
        r22.f9085s = r2;
        r9 = 17;
        r22.f9083q = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0195, code lost:
    
        if (f(r10) != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0197, code lost:
    
        if (r1 != 2) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0199, code lost:
    
        if (r4 == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x019f, code lost:
    
        if (r8 != Long.MIN_VALUE) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a1, code lost:
    
        if (r13 == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01a5, code lost:
    
        if (r8 != r17) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01a7, code lost:
    
        if (r13 != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a9, code lost:
    
        if (r13 == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ac, code lost:
    
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ad, code lost:
    
        r22.f9084r = r8;
        r7.skip(r2);
        r9 = 16;
        r22.f9083q = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b8, code lost:
    
        if (r1 == 2) goto L153;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0115 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ed A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d() {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.b.d():int");
    }

    public final int e(String str, C0853a c0853a) {
        int length = c0853a.f13933a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(c0853a.f13933a[i2])) {
                this.f9083q = 0;
                this.f9076f[this.f9074b - 1] = str;
                return i2;
            }
        }
        return -1;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public void endArray() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 != 4) {
            throw new JsonDataException("Expected END_ARRAY but was " + peek() + " at path " + getPath());
        }
        int i7 = this.f9074b;
        this.f9074b = i7 - 1;
        int[] iArr = this.f9077j;
        int i8 = i7 - 2;
        iArr[i8] = iArr[i8] + 1;
        this.f9083q = 0;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public void endObject() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 != 2) {
            throw new JsonDataException("Expected END_OBJECT but was " + peek() + " at path " + getPath());
        }
        int i7 = this.f9074b;
        int i8 = i7 - 1;
        this.f9074b = i8;
        this.f9076f[i8] = null;
        int[] iArr = this.f9077j;
        int i9 = i7 - 2;
        iArr[i9] = iArr[i9] + 1;
        this.f9083q = 0;
    }

    public final boolean f(int i2) {
        if (i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13 || i2 == 32) {
            return false;
        }
        if (i2 != 35) {
            if (i2 == 44) {
                return false;
            }
            if (i2 != 47 && i2 != 61) {
                if (i2 == 123 || i2 == 125 || i2 == 58) {
                    return false;
                }
                if (i2 != 59) {
                    switch (i2) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        throw null;
    }

    public final int g(boolean z6) {
        int i2 = 0;
        while (true) {
            int i7 = i2 + 1;
            InterfaceC0872n interfaceC0872n = this.f9081n;
            if (!interfaceC0872n.request(i7)) {
                if (z6) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j7 = i2;
            C0870l c0870l = this.f9082p;
            byte b7 = c0870l.getByte(j7);
            if (b7 != 10 && b7 != 32 && b7 != 13 && b7 != 9) {
                c0870l.skip(j7);
                if (b7 == 47) {
                    if (interfaceC0872n.request(2L)) {
                        c();
                        throw null;
                    }
                } else if (b7 == 35) {
                    c();
                    throw null;
                }
                return b7;
            }
            i2 = i7;
        }
    }

    public final String h(ByteString byteString) {
        StringBuilder sb = null;
        while (true) {
            long indexOfElement = this.f9081n.indexOfElement(byteString);
            if (indexOfElement == -1) {
                b("Unterminated string");
                throw null;
            }
            C0870l c0870l = this.f9082p;
            if (c0870l.getByte(indexOfElement) != 92) {
                if (sb == null) {
                    String readUtf8 = c0870l.readUtf8(indexOfElement);
                    c0870l.readByte();
                    return readUtf8;
                }
                sb.append(c0870l.readUtf8(indexOfElement));
                c0870l.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(c0870l.readUtf8(indexOfElement));
            c0870l.readByte();
            sb.append(j());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public boolean hasNext() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        return (i2 == 2 || i2 == 4 || i2 == 18) ? false : true;
    }

    public final String i() {
        long indexOfElement = this.f9081n.indexOfElement(f9080w);
        C0870l c0870l = this.f9082p;
        return indexOfElement != -1 ? c0870l.readUtf8(indexOfElement) : c0870l.readUtf8();
    }

    public final char j() {
        int i2;
        InterfaceC0872n interfaceC0872n = this.f9081n;
        if (!interfaceC0872n.request(1L)) {
            b("Unterminated escape sequence");
            throw null;
        }
        C0870l c0870l = this.f9082p;
        byte readByte = c0870l.readByte();
        if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
            return (char) readByte;
        }
        if (readByte == 98) {
            return '\b';
        }
        if (readByte == 102) {
            return '\f';
        }
        if (readByte == 110) {
            return '\n';
        }
        if (readByte == 114) {
            return '\r';
        }
        if (readByte == 116) {
            return '\t';
        }
        if (readByte != 117) {
            b("Invalid escape sequence: \\" + ((char) readByte));
            throw null;
        }
        if (!interfaceC0872n.request(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + getPath());
        }
        char c7 = 0;
        for (int i7 = 0; i7 < 4; i7++) {
            byte b7 = c0870l.getByte(i7);
            char c8 = (char) (c7 << 4);
            if (b7 >= 48 && b7 <= 57) {
                i2 = b7 - 48;
            } else if (b7 >= 97 && b7 <= 102) {
                i2 = b7 - 87;
            } else {
                if (b7 < 65 || b7 > 70) {
                    b("\\u" + c0870l.readUtf8(4L));
                    throw null;
                }
                i2 = b7 - 55;
            }
            c7 = (char) (i2 + c8);
        }
        c0870l.skip(4L);
        return c7;
    }

    public final void k(ByteString byteString) {
        while (true) {
            long indexOfElement = this.f9081n.indexOfElement(byteString);
            if (indexOfElement == -1) {
                b("Unterminated string");
                throw null;
            }
            C0870l c0870l = this.f9082p;
            if (c0870l.getByte(indexOfElement) != 92) {
                c0870l.skip(indexOfElement + 1);
                return;
            } else {
                c0870l.skip(indexOfElement + 1);
                j();
            }
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public boolean nextBoolean() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 5) {
            this.f9083q = 0;
            int[] iArr = this.f9077j;
            int i7 = this.f9074b - 1;
            iArr[i7] = iArr[i7] + 1;
            return true;
        }
        if (i2 == 6) {
            this.f9083q = 0;
            int[] iArr2 = this.f9077j;
            int i8 = this.f9074b - 1;
            iArr2[i8] = iArr2[i8] + 1;
            return false;
        }
        throw new JsonDataException("Expected a boolean but was " + peek() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public double nextDouble() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 16) {
            this.f9083q = 0;
            int[] iArr = this.f9077j;
            int i7 = this.f9074b - 1;
            iArr[i7] = iArr[i7] + 1;
            return this.f9084r;
        }
        if (i2 == 17) {
            this.f9086t = this.f9082p.readUtf8(this.f9085s);
        } else if (i2 == 9) {
            this.f9086t = h(f9079v);
        } else if (i2 == 8) {
            this.f9086t = h(f9078u);
        } else if (i2 == 10) {
            this.f9086t = i();
        } else if (i2 != 11) {
            throw new JsonDataException("Expected a double but was " + peek() + " at path " + getPath());
        }
        this.f9083q = 11;
        try {
            double parseDouble = Double.parseDouble(this.f9086t);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.f9086t = null;
            this.f9083q = 0;
            int[] iArr2 = this.f9077j;
            int i8 = this.f9074b - 1;
            iArr2[i8] = iArr2[i8] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f9086t + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public int nextInt() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 16) {
            long j7 = this.f9084r;
            int i7 = (int) j7;
            if (j7 == i7) {
                this.f9083q = 0;
                int[] iArr = this.f9077j;
                int i8 = this.f9074b - 1;
                iArr[i8] = iArr[i8] + 1;
                return i7;
            }
            throw new JsonDataException("Expected an int but was " + this.f9084r + " at path " + getPath());
        }
        if (i2 == 17) {
            this.f9086t = this.f9082p.readUtf8(this.f9085s);
        } else if (i2 == 9 || i2 == 8) {
            String h7 = i2 == 9 ? h(f9079v) : h(f9078u);
            this.f9086t = h7;
            try {
                int parseInt = Integer.parseInt(h7);
                this.f9083q = 0;
                int[] iArr2 = this.f9077j;
                int i9 = this.f9074b - 1;
                iArr2[i9] = iArr2[i9] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i2 != 11) {
            throw new JsonDataException("Expected an int but was " + peek() + " at path " + getPath());
        }
        this.f9083q = 11;
        try {
            double parseDouble = Double.parseDouble(this.f9086t);
            int i10 = (int) parseDouble;
            if (i10 != parseDouble) {
                throw new JsonDataException("Expected an int but was " + this.f9086t + " at path " + getPath());
            }
            this.f9086t = null;
            this.f9083q = 0;
            int[] iArr3 = this.f9077j;
            int i11 = this.f9074b - 1;
            iArr3[i11] = iArr3[i11] + 1;
            return i10;
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f9086t + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public String nextName() throws IOException {
        String str;
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 14) {
            str = i();
        } else if (i2 == 13) {
            str = h(f9079v);
        } else if (i2 == 12) {
            str = h(f9078u);
        } else {
            if (i2 != 15) {
                throw new JsonDataException("Expected a name but was " + peek() + " at path " + getPath());
            }
            str = this.f9086t;
        }
        this.f9083q = 0;
        this.f9076f[this.f9074b - 1] = str;
        return str;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public String nextString() throws IOException {
        String readUtf8;
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 10) {
            readUtf8 = i();
        } else if (i2 == 9) {
            readUtf8 = h(f9079v);
        } else if (i2 == 8) {
            readUtf8 = h(f9078u);
        } else if (i2 == 11) {
            readUtf8 = this.f9086t;
            this.f9086t = null;
        } else if (i2 == 16) {
            readUtf8 = Long.toString(this.f9084r);
        } else {
            if (i2 != 17) {
                throw new JsonDataException("Expected a string but was " + peek() + " at path " + getPath());
            }
            readUtf8 = this.f9082p.readUtf8(this.f9085s);
        }
        this.f9083q = 0;
        int[] iArr = this.f9077j;
        int i7 = this.f9074b - 1;
        iArr[i7] = iArr[i7] + 1;
        return readUtf8;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public JsonReader$Token peek() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        switch (i2) {
            case 1:
                return JsonReader$Token.f9064f;
            case 2:
                return JsonReader$Token.f9065j;
            case 3:
                return JsonReader$Token.f9062b;
            case 4:
                return JsonReader$Token.f9063e;
            case 5:
            case 6:
                return JsonReader$Token.f9069q;
            case 7:
                return JsonReader$Token.f9070r;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader$Token.f9067n;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader$Token.f9066m;
            case 16:
            case 17:
                return JsonReader$Token.f9068p;
            case 18:
                return JsonReader$Token.f9071s;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public int selectName(C0853a c0853a) throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 < 12 || i2 > 15) {
            return -1;
        }
        if (i2 == 15) {
            return e(this.f9086t, c0853a);
        }
        int select = this.f9081n.select(c0853a.f13934b);
        if (select != -1) {
            this.f9083q = 0;
            this.f9076f[this.f9074b - 1] = c0853a.f13933a[select];
            return select;
        }
        String str = this.f9076f[this.f9074b - 1];
        String nextName = nextName();
        int e3 = e(nextName, c0853a);
        if (e3 == -1) {
            this.f9083q = 15;
            this.f9086t = nextName;
            this.f9076f[this.f9074b - 1] = str;
        }
        return e3;
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public void skipName() throws IOException {
        int i2 = this.f9083q;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 14) {
            long indexOfElement = this.f9081n.indexOfElement(f9080w);
            C0870l c0870l = this.f9082p;
            if (indexOfElement == -1) {
                indexOfElement = c0870l.size();
            }
            c0870l.skip(indexOfElement);
        } else if (i2 == 13) {
            k(f9079v);
        } else if (i2 == 12) {
            k(f9078u);
        } else if (i2 != 15) {
            throw new JsonDataException("Expected a name but was " + peek() + " at path " + getPath());
        }
        this.f9083q = 0;
        this.f9076f[this.f9074b - 1] = "null";
    }

    @Override // com.airbnb.lottie.parser.moshi.a
    public void skipValue() throws IOException {
        int i2 = 0;
        do {
            int i7 = this.f9083q;
            if (i7 == 0) {
                i7 = d();
            }
            if (i7 == 3) {
                a(1);
            } else if (i7 == 1) {
                a(3);
            } else {
                if (i7 == 4) {
                    i2--;
                    if (i2 < 0) {
                        throw new JsonDataException("Expected a value but was " + peek() + " at path " + getPath());
                    }
                    this.f9074b--;
                } else if (i7 == 2) {
                    i2--;
                    if (i2 < 0) {
                        throw new JsonDataException("Expected a value but was " + peek() + " at path " + getPath());
                    }
                    this.f9074b--;
                } else {
                    C0870l c0870l = this.f9082p;
                    if (i7 == 14 || i7 == 10) {
                        long indexOfElement = this.f9081n.indexOfElement(f9080w);
                        if (indexOfElement == -1) {
                            indexOfElement = c0870l.size();
                        }
                        c0870l.skip(indexOfElement);
                    } else if (i7 == 9 || i7 == 13) {
                        k(f9079v);
                    } else if (i7 == 8 || i7 == 12) {
                        k(f9078u);
                    } else if (i7 == 17) {
                        c0870l.skip(this.f9085s);
                    } else if (i7 == 18) {
                        throw new JsonDataException("Expected a value but was " + peek() + " at path " + getPath());
                    }
                }
                this.f9083q = 0;
            }
            i2++;
            this.f9083q = 0;
        } while (i2 != 0);
        int[] iArr = this.f9077j;
        int i8 = this.f9074b - 1;
        iArr[i8] = iArr[i8] + 1;
        this.f9076f[i8] = "null";
    }

    public String toString() {
        return "JsonReader(" + this.f9081n + ")";
    }
}
