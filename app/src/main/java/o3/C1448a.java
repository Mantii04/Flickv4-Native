package o3;

/* renamed from: o3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1448a {

    /* renamed from: a, reason: collision with root package name */
    public final int f19082a;

    /* renamed from: b, reason: collision with root package name */
    public final float f19083b;

    /* renamed from: c, reason: collision with root package name */
    public int f19084c;

    /* renamed from: d, reason: collision with root package name */
    public int f19085d;

    /* renamed from: e, reason: collision with root package name */
    public final float f19086e;

    /* renamed from: f, reason: collision with root package name */
    public final float f19087f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19088g;

    /* renamed from: h, reason: collision with root package name */
    public final float f19089h;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
    
        if (r6 > r3.f19083b) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
    
        if (r3.f19087f <= r3.f19083b) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1448a(int r4, float r5, float r6, float r7, int r8, float r9, int r10, float r11, int r12, float r13) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.C1448a.<init>(int, float, float, float, int, float, int, float, int, float):void");
    }

    public static C1448a a(float f3, float f7, float f8, float f9, int[] iArr, float f10, int[] iArr2, float f11, int[] iArr3) {
        C1448a c1448a = null;
        int i2 = 1;
        for (int i7 : iArr3) {
            int length = iArr2.length;
            int i8 = 0;
            while (i8 < length) {
                int i9 = iArr2[i8];
                int length2 = iArr.length;
                int i10 = 0;
                while (i10 < length2) {
                    int i11 = length;
                    int i12 = i8;
                    int i13 = i2;
                    int i14 = length2;
                    int i15 = i10;
                    C1448a c1448a2 = new C1448a(i13, f7, f8, f9, iArr[i10], f10, i9, f11, i7, f3);
                    float f12 = c1448a2.f19089h;
                    if (c1448a == null || f12 < c1448a.f19089h) {
                        if (f12 == 0.0f) {
                            return c1448a2;
                        }
                        c1448a = c1448a2;
                    }
                    int i16 = i13 + 1;
                    i10 = i15 + 1;
                    i8 = i12;
                    i2 = i16;
                    length = i11;
                    length2 = i14;
                }
                i8++;
                i2 = i2;
                length = length;
            }
        }
        return c1448a;
    }

    public String toString() {
        return "Arrangement [priority=" + this.f19082a + ", smallCount=" + this.f19084c + ", smallSize=" + this.f19083b + ", mediumCount=" + this.f19085d + ", mediumSize=" + this.f19086e + ", largeCount=" + this.f19088g + ", largeSize=" + this.f19087f + ", cost=" + this.f19089h + "]";
    }
}
