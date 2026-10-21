package f2;

/* renamed from: f2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0921b {
    public static float a(float f3) {
        return f3 <= 0.04045f ? f3 / 12.92f : (float) Math.pow((f3 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float b(float f3) {
        return f3 <= 0.0031308f ? f3 * 12.92f : (float) ((Math.pow(f3, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int evaluate(float f3, int i2, int i7) {
        if (i2 == i7) {
            return i2;
        }
        float f7 = ((i2 >> 24) & 255) / 255.0f;
        float f8 = ((i7 >> 24) & 255) / 255.0f;
        float a7 = a(((i2 >> 16) & 255) / 255.0f);
        float a8 = a(((i2 >> 8) & 255) / 255.0f);
        float a9 = a((i2 & 255) / 255.0f);
        float a10 = a(((i7 >> 16) & 255) / 255.0f);
        float a11 = a(((i7 >> 8) & 255) / 255.0f);
        float a12 = a((i7 & 255) / 255.0f);
        float a13 = b.c.a(f8, f7, f3, f7);
        float a14 = b.c.a(a10, a7, f3, a7);
        float a15 = b.c.a(a11, a8, f3, a8);
        float a16 = b.c.a(a12, a9, f3, a9);
        float b7 = b(a14) * 255.0f;
        float b8 = b(a15) * 255.0f;
        return Math.round(b(a16) * 255.0f) | (Math.round(b7) << 16) | (Math.round(a13 * 255.0f) << 24) | (Math.round(b8) << 8);
    }
}
