package o4;

import android.graphics.Color;

/* renamed from: o4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1467d {
    public static int getRippleColor(int i2) {
        float[] fArr = new float[3];
        Color.colorToHSV(i2, fArr);
        fArr[2] = fArr[2] * 0.5f;
        return Color.HSVToColor(fArr);
    }

    public static boolean isColorDark(int i2) {
        return (((double) Color.blue(i2)) * 0.114d) + ((((double) Color.green(i2)) * 0.587d) + (((double) Color.red(i2)) * 0.299d)) < 160.0d;
    }
}
