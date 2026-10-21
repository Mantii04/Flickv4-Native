package D3;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f888a = {R.attr.state_pressed};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f889b = {R.attr.state_focused};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f890c = {R.attr.state_selected, R.attr.state_pressed};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f891d = {R.attr.state_selected};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f892e = {R.attr.state_enabled, R.attr.state_pressed};

    /* renamed from: f, reason: collision with root package name */
    public static final String f893f = a.class.getSimpleName();

    public static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return D.a.setAlphaComponent(colorForState, Math.min(Color.alpha(colorForState) * 2, 255));
    }

    public static ColorStateList convertToRippleDrawableColor(ColorStateList colorStateList) {
        int[] iArr = f889b;
        return new ColorStateList(new int[][]{f891d, iArr, StateSet.NOTHING}, new int[]{a(colorStateList, f890c), a(colorStateList, iArr), a(colorStateList, f888a)});
    }

    public static ColorStateList sanitizeRippleDrawableColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f892e, 0)) != 0) {
            Log.w(f893f, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean shouldDrawRippleCompat(int[] iArr) {
        boolean z6 = false;
        boolean z7 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z6 = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z7 = true;
            }
        }
        return z6 && z7;
    }
}
