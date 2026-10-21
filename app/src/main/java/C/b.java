package C;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final float[][] f303a = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: b, reason: collision with root package name */
    public static final float[][] f304b = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: c, reason: collision with root package name */
    public static final float[] f305c = {95.047f, 100.0f, 108.883f};

    /* renamed from: d, reason: collision with root package name */
    public static final float[][] f306d = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* renamed from: e, reason: collision with root package name */
    public static final Object f307e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public static Method f308f;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f309g;

    public static int a(float f3) {
        if (f3 < 1.0f) {
            return -16777216;
        }
        if (f3 > 99.0f) {
            return -1;
        }
        float f7 = (f3 + 16.0f) / 116.0f;
        float f8 = f3 > 8.0f ? f7 * f7 * f7 : f3 / 903.2963f;
        float f9 = f7 * f7 * f7;
        boolean z6 = f9 > 0.008856452f;
        float f10 = z6 ? f9 : ((f7 * 116.0f) - 16.0f) / 903.2963f;
        if (!z6) {
            f9 = ((f7 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f305c;
        return D.a.XYZToColor(f10 * fArr[0], f8 * fArr[1], f9 * fArr[2]);
    }

    public static float b(int i2) {
        float f3 = i2 / 255.0f;
        return (f3 <= 0.04045f ? f3 / 12.92f : (float) Math.pow((f3 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    public static float c() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }
}
