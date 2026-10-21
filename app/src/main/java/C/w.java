package C;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: k, reason: collision with root package name */
    public static final w f338k;

    /* renamed from: a, reason: collision with root package name */
    public final float f339a;

    /* renamed from: b, reason: collision with root package name */
    public final float f340b;

    /* renamed from: c, reason: collision with root package name */
    public final float f341c;

    /* renamed from: d, reason: collision with root package name */
    public final float f342d;

    /* renamed from: e, reason: collision with root package name */
    public final float f343e;

    /* renamed from: f, reason: collision with root package name */
    public final float f344f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f345g;

    /* renamed from: h, reason: collision with root package name */
    public final float f346h;

    /* renamed from: i, reason: collision with root package name */
    public final float f347i;

    /* renamed from: j, reason: collision with root package name */
    public final float f348j;

    static {
        float[] fArr = b.f305c;
        float c7 = (float) ((b.c() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f303a;
        float f3 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f7 = fArr3[0] * f3;
        float f8 = fArr[1];
        float f9 = (fArr3[1] * f8) + f7;
        float f10 = fArr[2];
        float f11 = (fArr3[2] * f10) + f9;
        float[] fArr4 = fArr2[1];
        float f12 = (fArr4[2] * f10) + (fArr4[1] * f8) + (fArr4[0] * f3);
        float[] fArr5 = fArr2[2];
        float f13 = (f10 * fArr5[2]) + (f8 * fArr5[1]) + (f3 * fArr5[0]);
        float f14 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float exp = (1.0f - (((float) Math.exp(((-c7) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d7 = exp;
        if (d7 > 1.0d) {
            exp = 1.0f;
        } else if (d7 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            exp = 0.0f;
        }
        float f15 = 1.0f / ((5.0f * c7) + 1.0f);
        float f16 = f15 * f15 * f15 * f15;
        float f17 = 1.0f - f16;
        float cbrt = (0.1f * f17 * f17 * ((float) Math.cbrt(c7 * 5.0d))) + (f16 * c7);
        float c8 = b.c() / fArr[1];
        double d8 = c8;
        float sqrt = ((float) Math.sqrt(d8)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d8, 0.2d));
        float[] fArr6 = {(float) Math.pow(((r9[0] * cbrt) * f11) / 100.0d, 0.42d), (float) Math.pow(((r9[1] * cbrt) * f12) / 100.0d, 0.42d), (float) Math.pow(((r9[2] * cbrt) * f13) / 100.0d, 0.42d)};
        float f18 = fArr6[0];
        float f19 = (f18 * 400.0f) / (f18 + 27.13f);
        float f20 = fArr6[1];
        float f21 = (f20 * 400.0f) / (f20 + 27.13f);
        float f22 = fArr6[2];
        float[] fArr7 = {f19, f21, (400.0f * f22) / (f22 + 27.13f)};
        f338k = new w(c8, ((fArr7[2] * 0.05f) + (fArr7[0] * 2.0f) + fArr7[1]) * pow, pow, pow, f14, 1.0f, new float[]{(((100.0f / f11) * exp) + 1.0f) - exp, (((100.0f / f12) * exp) + 1.0f) - exp, (((100.0f / f13) * exp) + 1.0f) - exp}, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public w(float f3, float f7, float f8, float f9, float f10, float f11, float[] fArr, float f12, float f13, float f14) {
        this.f344f = f3;
        this.f339a = f7;
        this.f340b = f8;
        this.f341c = f9;
        this.f342d = f10;
        this.f343e = f11;
        this.f345g = fArr;
        this.f346h = f12;
        this.f347i = f13;
        this.f348j = f14;
    }
}
