package I2;

import android.graphics.Color;

/* loaded from: classes.dex */
public abstract class a {
    public static int getDarkerColor(int i2) {
        float[] fArr = {0.0f, 0.0f, r2};
        Color.colorToHSV(i2, fArr);
        float f3 = fArr[2];
        float f7 = 0.8f * f3 * f3;
        if (f7 > 1.0f) {
            fArr[2] = 1.0f;
        } else if (f7 < 0.0f) {
            fArr[2] = 0.0f;
        }
        return Color.HSVToColor(fArr);
    }

    public static int getNewColorAlpha(int i2, float f3) {
        return Color.argb(Math.round(Color.alpha(i2) * f3), Color.red(i2), Color.green(i2), Color.blue(i2));
    }
}
