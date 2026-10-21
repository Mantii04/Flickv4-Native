package x;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public int[] f20704a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f20705b;

    /* renamed from: c, reason: collision with root package name */
    public int f20706c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f20707d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f20708e;

    /* renamed from: f, reason: collision with root package name */
    public int f20709f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f20710g;

    /* renamed from: h, reason: collision with root package name */
    public String[] f20711h;

    /* renamed from: i, reason: collision with root package name */
    public int f20712i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f20713j;

    /* renamed from: k, reason: collision with root package name */
    public boolean[] f20714k;

    /* renamed from: l, reason: collision with root package name */
    public int f20715l;

    public final void a(float f3, int i2) {
        int i7 = this.f20709f;
        int[] iArr = this.f20707d;
        if (i7 >= iArr.length) {
            this.f20707d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f20708e;
            this.f20708e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f20707d;
        int i8 = this.f20709f;
        iArr2[i8] = i2;
        float[] fArr2 = this.f20708e;
        this.f20709f = i8 + 1;
        fArr2[i8] = f3;
    }

    public final void b(int i2, int i7) {
        int i8 = this.f20706c;
        int[] iArr = this.f20704a;
        if (i8 >= iArr.length) {
            this.f20704a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f20705b;
            this.f20705b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f20704a;
        int i9 = this.f20706c;
        iArr3[i9] = i2;
        int[] iArr4 = this.f20705b;
        this.f20706c = i9 + 1;
        iArr4[i9] = i7;
    }

    public final void c(int i2, String str) {
        int i7 = this.f20712i;
        int[] iArr = this.f20710g;
        if (i7 >= iArr.length) {
            this.f20710g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f20711h;
            this.f20711h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f20710g;
        int i8 = this.f20712i;
        iArr2[i8] = i2;
        String[] strArr2 = this.f20711h;
        this.f20712i = i8 + 1;
        strArr2[i8] = str;
    }

    public final void d(int i2, boolean z6) {
        int i7 = this.f20715l;
        int[] iArr = this.f20713j;
        if (i7 >= iArr.length) {
            this.f20713j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f20714k;
            this.f20714k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f20713j;
        int i8 = this.f20715l;
        iArr2[i8] = i2;
        boolean[] zArr2 = this.f20714k;
        this.f20715l = i8 + 1;
        zArr2[i8] = z6;
    }
}
