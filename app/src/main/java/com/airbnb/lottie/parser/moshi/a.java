package com.airbnb.lottie.parser.moshi;

import A.i;
import e2.C0853a;
import e6.InterfaceC0872n;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes.dex */
public abstract class a implements Closeable {

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f9073m = new String[128];

    /* renamed from: b, reason: collision with root package name */
    public int f9074b;

    /* renamed from: e, reason: collision with root package name */
    public int[] f9075e;

    /* renamed from: f, reason: collision with root package name */
    public String[] f9076f;

    /* renamed from: j, reason: collision with root package name */
    public int[] f9077j;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f9073m[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = f9073m;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static a of(InterfaceC0872n interfaceC0872n) {
        return new b(interfaceC0872n);
    }

    public final void a(int i2) {
        int i7 = this.f9074b;
        int[] iArr = this.f9075e;
        if (i7 == iArr.length) {
            if (i7 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
            this.f9075e = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f9076f;
            this.f9076f = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f9077j;
            this.f9077j = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f9075e;
        int i8 = this.f9074b;
        this.f9074b = i8 + 1;
        iArr3[i8] = i2;
    }

    public final void b(String str) {
        StringBuilder s6 = i.s(str, " at path ");
        s6.append(getPath());
        throw new JsonEncodingException(s6.toString());
    }

    public abstract void beginArray() throws IOException;

    public abstract void beginObject() throws IOException;

    public abstract void endArray() throws IOException;

    public abstract void endObject() throws IOException;

    public final String getPath() {
        int i2 = this.f9074b;
        int[] iArr = this.f9075e;
        String[] strArr = this.f9076f;
        int[] iArr2 = this.f9077j;
        StringBuilder sb = new StringBuilder("$");
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = iArr[i7];
            if (i8 == 1 || i8 == 2) {
                sb.append('[');
                sb.append(iArr2[i7]);
                sb.append(']');
            } else if (i8 == 3 || i8 == 4 || i8 == 5) {
                sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
                String str = strArr[i7];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public abstract boolean hasNext() throws IOException;

    public abstract boolean nextBoolean() throws IOException;

    public abstract double nextDouble() throws IOException;

    public abstract int nextInt() throws IOException;

    public abstract String nextName() throws IOException;

    public abstract String nextString() throws IOException;

    public abstract JsonReader$Token peek() throws IOException;

    public abstract int selectName(C0853a c0853a) throws IOException;

    public abstract void skipName() throws IOException;

    public abstract void skipValue() throws IOException;
}
