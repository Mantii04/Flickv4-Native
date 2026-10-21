package C;

import android.graphics.Color;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final float f297a;

    /* renamed from: b, reason: collision with root package name */
    public final float f298b;

    /* renamed from: c, reason: collision with root package name */
    public final float f299c;

    /* renamed from: d, reason: collision with root package name */
    public final float f300d;

    /* renamed from: e, reason: collision with root package name */
    public final float f301e;

    /* renamed from: f, reason: collision with root package name */
    public final float f302f;

    public a(float f3, float f7, float f8, float f9, float f10, float f11) {
        this.f297a = f3;
        this.f298b = f7;
        this.f299c = f8;
        this.f300d = f9;
        this.f301e = f10;
        this.f302f = f11;
    }

    public static a a(int i2) {
        w wVar = w.f338k;
        float b7 = b.b(Color.red(i2));
        float b8 = b.b(Color.green(i2));
        float b9 = b.b(Color.blue(i2));
        float[][] fArr = b.f306d;
        float[] fArr2 = fArr[0];
        float f3 = (fArr2[2] * b9) + (fArr2[1] * b8) + (fArr2[0] * b7);
        float[] fArr3 = fArr[1];
        float f7 = (fArr3[2] * b9) + (fArr3[1] * b8) + (fArr3[0] * b7);
        float[] fArr4 = fArr[2];
        float f8 = (b9 * fArr4[2]) + (b8 * fArr4[1]) + (b7 * fArr4[0]);
        float[][] fArr5 = b.f303a;
        float[] fArr6 = fArr5[0];
        float f9 = (fArr6[2] * f8) + (fArr6[1] * f7) + (fArr6[0] * f3);
        float[] fArr7 = fArr5[1];
        float f10 = (fArr7[2] * f8) + (fArr7[1] * f7) + (fArr7[0] * f3);
        float[] fArr8 = fArr5[2];
        float f11 = (f8 * fArr8[2]) + (f7 * fArr8[1]) + (f3 * fArr8[0]);
        float[] fArr9 = wVar.f345g;
        float f12 = fArr9[0] * f9;
        float f13 = fArr9[1] * f10;
        float f14 = fArr9[2] * f11;
        float abs = Math.abs(f12);
        float f15 = wVar.f346h;
        float pow = (float) Math.pow((abs * f15) / 100.0d, 0.42d);
        float pow2 = (float) Math.pow((Math.abs(f13) * f15) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f14) * f15) / 100.0d, 0.42d);
        float signum = ((Math.signum(f12) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f13) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f14) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d7 = signum3;
        float f16 = ((float) (((signum2 * (-12.0d)) + (signum * 11.0d)) + d7)) / 11.0f;
        float f17 = ((float) ((signum + signum2) - (d7 * 2.0d))) / 9.0f;
        float f18 = signum2 * 20.0f;
        float f19 = ((21.0f * signum3) + ((signum * 20.0f) + f18)) / 20.0f;
        float f20 = (((signum * 40.0f) + f18) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f17, f16)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f21 = atan2;
        float f22 = (3.1415927f * f21) / 180.0f;
        float f23 = f20 * wVar.f340b;
        float f24 = wVar.f339a;
        float f25 = wVar.f342d;
        float pow4 = ((float) Math.pow(f23 / f24, wVar.f348j * f25)) * 100.0f;
        Math.sqrt(pow4 / 100.0f);
        float f26 = f24 + 4.0f;
        float pow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, wVar.f344f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) f21) < 20.14d ? f21 + 360.0f : f21) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * wVar.f343e) * wVar.f341c) * ((float) Math.sqrt((f17 * f17) + (f16 * f16)))) / (f19 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow4 / 100.0d));
        float f27 = wVar.f347i * pow5;
        Math.sqrt((r3 * f25) / f26);
        float f28 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((f27 * 0.0228f) + 1.0f)) * 43.85965f;
        double d8 = f22;
        return new a(f21, pow5, pow4, f28, log * ((float) Math.cos(d8)), log * ((float) Math.sin(d8)));
    }

    public static a b(float f3, float f7, float f8) {
        w wVar = w.f338k;
        float f9 = wVar.f342d;
        Math.sqrt(f3 / 100.0d);
        float f10 = wVar.f339a + 4.0f;
        float f11 = wVar.f347i * f7;
        Math.sqrt(((f7 / ((float) Math.sqrt(r1))) * wVar.f342d) / f10);
        float f12 = (1.7f * f3) / ((0.007f * f3) + 1.0f);
        float log = ((float) Math.log((f11 * 0.0228d) + 1.0d)) * 43.85965f;
        double d7 = (3.1415927f * f8) / 180.0f;
        return new a(f8, f7, f3, f12, log * ((float) Math.cos(d7)), log * ((float) Math.sin(d7)));
    }

    public static int toColor(float f3, float f7, float f8) {
        float f9;
        float f10;
        float f11;
        float f12;
        float cbrt;
        float f13;
        float f14;
        w wVar = w.f338k;
        float f15 = f7;
        if (f15 < 1.0d || Math.round(f8) <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || Math.round(f8) >= 100.0d) {
            return b.a(f8);
        }
        float f16 = 0.0f;
        float min = f3 < 0.0f ? 0.0f : Math.min(360.0f, f3);
        float f17 = f15;
        float f18 = 0.0f;
        a aVar = null;
        boolean z6 = true;
        while (Math.abs(f18 - f15) >= 0.4f) {
            float f19 = 100.0f;
            float f20 = 1000.0f;
            float f21 = f16;
            float f22 = 100.0f;
            float f23 = 1000.0f;
            a aVar2 = null;
            while (true) {
                if (Math.abs(f21 - f22) <= 0.01f) {
                    f9 = min;
                    f10 = f15;
                    f11 = f16;
                    break;
                }
                f11 = f16;
                float f24 = ((f22 - f21) / 2.0f) + f21;
                int c7 = b(f24, f17, min).c(w.f338k);
                float b7 = b.b(Color.red(c7));
                float b8 = b.b(Color.green(c7));
                float b9 = b.b(Color.blue(c7));
                float[] fArr = b.f306d[1];
                float f25 = ((b9 * fArr[2]) + ((b8 * fArr[1]) + (b7 * fArr[0]))) / f19;
                if (f25 <= 0.008856452f) {
                    cbrt = f25 * 903.2963f;
                    f12 = f20;
                } else {
                    f12 = f20;
                    cbrt = (((float) Math.cbrt(f25)) * 116.0f) - 16.0f;
                }
                float abs = Math.abs(f8 - cbrt);
                if (abs < 0.2f) {
                    a a7 = a(c7);
                    f10 = f15;
                    a b10 = b(a7.f299c, a7.f298b, min);
                    f9 = min;
                    float f26 = a7.f300d - b10.f300d;
                    float f27 = a7.f301e - b10.f301e;
                    float f28 = a7.f302f - b10.f302f;
                    float f29 = (f28 * f28) + (f27 * f27) + (f26 * f26);
                    f13 = f24;
                    double sqrt = Math.sqrt(f29);
                    f14 = cbrt;
                    float pow = (float) (Math.pow(sqrt, 0.63d) * 1.41d);
                    if (pow <= 1.0f) {
                        f23 = pow;
                        f12 = abs;
                        aVar2 = a7;
                    }
                } else {
                    f9 = min;
                    f10 = f15;
                    f13 = f24;
                    f14 = cbrt;
                }
                if (f12 == f11 && f23 == f11) {
                    break;
                }
                if (f14 < f8) {
                    f21 = f13;
                } else {
                    f22 = f13;
                }
                f16 = f11;
                f20 = f12;
                f15 = f10;
                min = f9;
                f19 = 100.0f;
            }
            if (!z6) {
                if (aVar2 == null) {
                    f15 = f17;
                } else {
                    f18 = f17;
                    aVar = aVar2;
                    f15 = f10;
                }
                f17 = ((f15 - f18) / 2.0f) + f18;
                f16 = f11;
            } else {
                if (aVar2 != null) {
                    return aVar2.c(wVar);
                }
                f17 = ((f10 - f18) / 2.0f) + f18;
                z6 = false;
                f16 = f11;
                f15 = f10;
            }
            min = f9;
        }
        return aVar == null ? b.a(f8) : aVar.c(wVar);
    }

    public final int c(w wVar) {
        float f3;
        float f7 = this.f298b;
        double d7 = f7;
        float f8 = this.f299c;
        if (d7 != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            double d8 = f8;
            if (d8 != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                f3 = f7 / ((float) Math.sqrt(d8 / 100.0d));
                float pow = (float) Math.pow(f3 / Math.pow(1.64d - Math.pow(0.29d, wVar.f344f), 0.73d), 1.1111111111111112d);
                double d9 = (this.f297a * 3.1415927f) / 180.0f;
                float cos = ((float) (Math.cos(2.0d + d9) + 3.8d)) * 0.25f;
                float pow2 = wVar.f339a * ((float) Math.pow(f8 / 100.0d, (1.0d / wVar.f342d) / wVar.f348j));
                float f9 = cos * 3846.1538f * wVar.f343e * wVar.f341c;
                float f10 = pow2 / wVar.f340b;
                float sin = (float) Math.sin(d9);
                float cos2 = (float) Math.cos(d9);
                float f11 = (((0.305f + f10) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (f9 * 23.0f)));
                float f12 = cos2 * f11;
                float f13 = f11 * sin;
                float f14 = f10 * 460.0f;
                float f15 = ((288.0f * f13) + ((451.0f * f12) + f14)) / 1403.0f;
                float f16 = ((f14 - (891.0f * f12)) - (261.0f * f13)) / 1403.0f;
                float f17 = ((f14 - (f12 * 220.0f)) - (f13 * 6300.0f)) / 1403.0f;
                float max = (float) Math.max(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, (Math.abs(f15) * 27.13d) / (400.0d - Math.abs(f15)));
                float signum = Math.signum(f15);
                float f18 = 100.0f / wVar.f346h;
                float pow3 = signum * f18 * ((float) Math.pow(max, 2.380952380952381d));
                float signum2 = Math.signum(f16) * f18 * ((float) Math.pow((float) Math.max(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, (Math.abs(f16) * 27.13d) / (400.0d - Math.abs(f16))), 2.380952380952381d));
                float signum3 = Math.signum(f17) * f18 * ((float) Math.pow((float) Math.max(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, (Math.abs(f17) * 27.13d) / (400.0d - Math.abs(f17))), 2.380952380952381d));
                float[] fArr = wVar.f345g;
                float f19 = pow3 / fArr[0];
                float f20 = signum2 / fArr[1];
                float f21 = signum3 / fArr[2];
                float[][] fArr2 = b.f304b;
                float[] fArr3 = fArr2[0];
                float f22 = (fArr3[2] * f21) + (fArr3[1] * f20) + (fArr3[0] * f19);
                float[] fArr4 = fArr2[1];
                float f23 = (fArr4[2] * f21) + (fArr4[1] * f20) + (fArr4[0] * f19);
                float[] fArr5 = fArr2[2];
                return D.a.XYZToColor(f22, f23, (f21 * fArr5[2]) + (f20 * fArr5[1]) + (f19 * fArr5[0]));
            }
        }
        f3 = 0.0f;
        float pow4 = (float) Math.pow(f3 / Math.pow(1.64d - Math.pow(0.29d, wVar.f344f), 0.73d), 1.1111111111111112d);
        double d92 = (this.f297a * 3.1415927f) / 180.0f;
        float cos3 = ((float) (Math.cos(2.0d + d92) + 3.8d)) * 0.25f;
        float pow22 = wVar.f339a * ((float) Math.pow(f8 / 100.0d, (1.0d / wVar.f342d) / wVar.f348j));
        float f92 = cos3 * 3846.1538f * wVar.f343e * wVar.f341c;
        float f102 = pow22 / wVar.f340b;
        float sin2 = (float) Math.sin(d92);
        float cos22 = (float) Math.cos(d92);
        float f112 = (((0.305f + f102) * 23.0f) * pow4) / (((pow4 * 108.0f) * sin2) + (((11.0f * pow4) * cos22) + (f92 * 23.0f)));
        float f122 = cos22 * f112;
        float f132 = f112 * sin2;
        float f142 = f102 * 460.0f;
        float f152 = ((288.0f * f132) + ((451.0f * f122) + f142)) / 1403.0f;
        float f162 = ((f142 - (891.0f * f122)) - (261.0f * f132)) / 1403.0f;
        float f172 = ((f142 - (f122 * 220.0f)) - (f132 * 6300.0f)) / 1403.0f;
        float max2 = (float) Math.max(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, (Math.abs(f152) * 27.13d) / (400.0d - Math.abs(f152)));
        float signum4 = Math.signum(f152);
        float f182 = 100.0f / wVar.f346h;
        float pow32 = signum4 * f182 * ((float) Math.pow(max2, 2.380952380952381d));
        float signum22 = Math.signum(f162) * f182 * ((float) Math.pow((float) Math.max(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, (Math.abs(f162) * 27.13d) / (400.0d - Math.abs(f162))), 2.380952380952381d));
        float signum32 = Math.signum(f172) * f182 * ((float) Math.pow((float) Math.max(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, (Math.abs(f172) * 27.13d) / (400.0d - Math.abs(f172))), 2.380952380952381d));
        float[] fArr6 = wVar.f345g;
        float f192 = pow32 / fArr6[0];
        float f202 = signum22 / fArr6[1];
        float f212 = signum32 / fArr6[2];
        float[][] fArr22 = b.f304b;
        float[] fArr32 = fArr22[0];
        float f222 = (fArr32[2] * f212) + (fArr32[1] * f202) + (fArr32[0] * f192);
        float[] fArr42 = fArr22[1];
        float f232 = (fArr42[2] * f212) + (fArr42[1] * f202) + (fArr42[0] * f192);
        float[] fArr52 = fArr22[2];
        return D.a.XYZToColor(f222, f232, (f212 * fArr52[2]) + (f202 * fArr52[1]) + (f192 * fArr52[0]));
    }
}
