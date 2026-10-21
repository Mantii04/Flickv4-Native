package flix.com.vision.models;

/* loaded from: classes2.dex */
public class C4876a {
    private final int f14363a;

    public C4876a(String str, int i2) {
        int i7 = 30;
        for (int i8 = 0; i8 < 30; i8++) {
            try {
                i7 ^= Integer.parseInt(str) + i8;
            } catch (Exception unused) {
                this.f14363a = i2;
                return;
            }
        }
        this.f14363a = i7;
    }

    public int m18760a() {
        return this.f14363a;
    }
}
