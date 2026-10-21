package org.apache.commons.lang3.math;

import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public class IEEE754rUtils {
    public static double max(double... dArr) {
        Validate.isTrue(dArr != null, "The Array must not be null", new Object[0]);
        Validate.isTrue(dArr.length != 0, "Array cannot be empty.", new Object[0]);
        double d7 = dArr[0];
        for (int i2 = 1; i2 < dArr.length; i2++) {
            d7 = max(dArr[i2], d7);
        }
        return d7;
    }

    public static double min(double... dArr) {
        Validate.isTrue(dArr != null, "The Array must not be null", new Object[0]);
        Validate.isTrue(dArr.length != 0, "Array cannot be empty.", new Object[0]);
        double d7 = dArr[0];
        for (int i2 = 1; i2 < dArr.length; i2++) {
            d7 = min(dArr[i2], d7);
        }
        return d7;
    }

    public static float max(float... fArr) {
        Validate.isTrue(fArr != null, "The Array must not be null", new Object[0]);
        Validate.isTrue(fArr.length != 0, "Array cannot be empty.", new Object[0]);
        float f3 = fArr[0];
        for (int i2 = 1; i2 < fArr.length; i2++) {
            f3 = max(fArr[i2], f3);
        }
        return f3;
    }

    public static float min(float... fArr) {
        Validate.isTrue(fArr != null, "The Array must not be null", new Object[0]);
        Validate.isTrue(fArr.length != 0, "Array cannot be empty.", new Object[0]);
        float f3 = fArr[0];
        for (int i2 = 1; i2 < fArr.length; i2++) {
            f3 = min(fArr[i2], f3);
        }
        return f3;
    }

    public static double max(double d7, double d8, double d9) {
        return max(max(d7, d8), d9);
    }

    public static double min(double d7, double d8, double d9) {
        return min(min(d7, d8), d9);
    }

    public static double max(double d7, double d8) {
        return Double.isNaN(d7) ? d8 : Double.isNaN(d8) ? d7 : Math.max(d7, d8);
    }

    public static double min(double d7, double d8) {
        return Double.isNaN(d7) ? d8 : Double.isNaN(d8) ? d7 : Math.min(d7, d8);
    }

    public static float max(float f3, float f7, float f8) {
        return max(max(f3, f7), f8);
    }

    public static float min(float f3, float f7, float f8) {
        return min(min(f3, f7), f8);
    }

    public static float max(float f3, float f7) {
        return Float.isNaN(f3) ? f7 : Float.isNaN(f7) ? f3 : Math.max(f3, f7);
    }

    public static float min(float f3, float f7) {
        return Float.isNaN(f3) ? f7 : Float.isNaN(f7) ? f3 : Math.min(f3, f7);
    }
}
