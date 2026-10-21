package D;

import android.graphics.Color;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f806a = new ThreadLocal();

    public static void RGBToHSL(int i2, int i7, int i8, float[] fArr) {
        float f3;
        float abs;
        float f7 = i2 / 255.0f;
        float f8 = i7 / 255.0f;
        float f9 = i8 / 255.0f;
        float max = Math.max(f7, Math.max(f8, f9));
        float min = Math.min(f7, Math.min(f8, f9));
        float f10 = max - min;
        float f11 = (max + min) / 2.0f;
        if (max == min) {
            f3 = 0.0f;
            abs = 0.0f;
        } else {
            f3 = max == f7 ? ((f8 - f9) / f10) % 6.0f : max == f8 ? ((f9 - f7) / f10) + 2.0f : 4.0f + ((f7 - f8) / f10);
            abs = f10 / (1.0f - Math.abs((2.0f * f11) - 1.0f));
        }
        float f12 = (f3 * 60.0f) % 360.0f;
        if (f12 < 0.0f) {
            f12 += 360.0f;
        }
        fArr[0] = f12 < 0.0f ? 0.0f : Math.min(f12, 360.0f);
        fArr[1] = abs < 0.0f ? 0.0f : Math.min(abs, 1.0f);
        fArr[2] = f11 >= 0.0f ? Math.min(f11, 1.0f) : 0.0f;
    }

    public static void RGBToXYZ(int i2, int i7, int i8, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d7 = i2 / 255.0d;
        double pow = d7 < 0.04045d ? d7 / 12.92d : Math.pow((d7 + 0.055d) / 1.055d, 2.4d);
        double d8 = i7 / 255.0d;
        double pow2 = d8 < 0.04045d ? d8 / 12.92d : Math.pow((d8 + 0.055d) / 1.055d, 2.4d);
        double d9 = i8 / 255.0d;
        double pow3 = d9 < 0.04045d ? d9 / 12.92d : Math.pow((d9 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * pow3) + (0.3576d * pow2) + (0.4124d * pow)) * 100.0d;
        dArr[1] = ((0.0722d * pow3) + (0.7152d * pow2) + (0.2126d * pow)) * 100.0d;
        dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
    }

    public static int XYZToColor(double d7, double d8, double d9) {
        double d10 = (((-0.4986d) * d9) + (((-1.5372d) * d8) + (3.2406d * d7))) / 100.0d;
        double d11 = ((0.0415d * d9) + ((1.8758d * d8) + ((-0.9689d) * d7))) / 100.0d;
        double d12 = ((1.057d * d9) + (((-0.204d) * d8) + (0.0557d * d7))) / 100.0d;
        double pow = d10 > 0.0031308d ? (Math.pow(d10, 0.4166666666666667d) * 1.055d) - 0.055d : d10 * 12.92d;
        double pow2 = d11 > 0.0031308d ? (Math.pow(d11, 0.4166666666666667d) * 1.055d) - 0.055d : d11 * 12.92d;
        double pow3 = d12 > 0.0031308d ? (Math.pow(d12, 0.4166666666666667d) * 1.055d) - 0.055d : d12 * 12.92d;
        int round = (int) Math.round(pow * 255.0d);
        int min = round < 0 ? 0 : Math.min(round, 255);
        int round2 = (int) Math.round(pow2 * 255.0d);
        int min2 = round2 < 0 ? 0 : Math.min(round2, 255);
        int round3 = (int) Math.round(pow3 * 255.0d);
        return Color.rgb(min, min2, round3 >= 0 ? Math.min(round3, 255) : 0);
    }

    public static int a(int i2, int i7, int i8, int i9, int i10) {
        if (i10 == 0) {
            return 0;
        }
        return A.i.a(255, i7, i8 * i9, (i2 * 255) * i7) / (i10 * 255);
    }

    public static int blendARGB(int i2, int i7, float f3) {
        float f7 = 1.0f - f3;
        return Color.argb((int) ((Color.alpha(i7) * f3) + (Color.alpha(i2) * f7)), (int) ((Color.red(i7) * f3) + (Color.red(i2) * f7)), (int) ((Color.green(i7) * f3) + (Color.green(i2) * f7)), (int) ((Color.blue(i7) * f3) + (Color.blue(i2) * f7)));
    }

    public static double calculateContrast(int i2, int i7) {
        if (Color.alpha(i7) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i7));
        }
        if (Color.alpha(i2) < 255) {
            i2 = compositeColors(i2, i7);
        }
        double calculateLuminance = calculateLuminance(i2) + 0.05d;
        double calculateLuminance2 = calculateLuminance(i7) + 0.05d;
        return Math.max(calculateLuminance, calculateLuminance2) / Math.min(calculateLuminance, calculateLuminance2);
    }

    public static double calculateLuminance(int i2) {
        ThreadLocal threadLocal = f806a;
        double[] dArr = (double[]) threadLocal.get();
        if (dArr == null) {
            dArr = new double[3];
            threadLocal.set(dArr);
        }
        colorToXYZ(i2, dArr);
        return dArr[1] / 100.0d;
    }

    public static int calculateMinimumAlpha(int i2, int i7, float f3) {
        int i8 = 255;
        if (Color.alpha(i7) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i7));
        }
        double d7 = f3;
        if (calculateContrast(setAlphaComponent(i2, 255), i7) < d7) {
            return -1;
        }
        int i9 = 0;
        for (int i10 = 0; i10 <= 10 && i8 - i9 > 1; i10++) {
            int i11 = (i9 + i8) / 2;
            if (calculateContrast(setAlphaComponent(i2, i11), i7) < d7) {
                i9 = i11;
            } else {
                i8 = i11;
            }
        }
        return i8;
    }

    public static void colorToHSL(int i2, float[] fArr) {
        RGBToHSL(Color.red(i2), Color.green(i2), Color.blue(i2), fArr);
    }

    public static void colorToXYZ(int i2, double[] dArr) {
        RGBToXYZ(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
    }

    public static int compositeColors(int i2, int i7) {
        int alpha = Color.alpha(i7);
        int alpha2 = Color.alpha(i2);
        int i8 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i8, a(Color.red(i2), alpha2, Color.red(i7), alpha, i8), a(Color.green(i2), alpha2, Color.green(i7), alpha, i8), a(Color.blue(i2), alpha2, Color.blue(i7), alpha, i8));
    }

    public static int setAlphaComponent(int i2, int i7) {
        if (i7 < 0 || i7 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i2 & 16777215) | (i7 << 24);
    }
}
