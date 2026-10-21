package r3;

import A.h;
import C3.c;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;

/* renamed from: r3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1595a {
    public static int compositeARGBWithAlpha(int i2, int i7) {
        return D.a.setAlphaComponent(i2, (Color.alpha(i2) * i7) / 255);
    }

    public static int getColor(View view, int i2) {
        Context context = view.getContext();
        TypedValue resolveTypedValueOrThrow = c.resolveTypedValueOrThrow(view, i2);
        int i7 = resolveTypedValueOrThrow.resourceId;
        return i7 != 0 ? h.getColor(context, i7) : resolveTypedValueOrThrow.data;
    }

    public static Integer getColorOrNull(Context context, int i2) {
        TypedValue resolve = c.resolve(context, i2);
        if (resolve == null) {
            return null;
        }
        int i7 = resolve.resourceId;
        return Integer.valueOf(i7 != 0 ? h.getColor(context, i7) : resolve.data);
    }

    public static ColorStateList getColorStateListOrNull(Context context, int i2) {
        TypedValue resolve = c.resolve(context, i2);
        if (resolve == null) {
            return null;
        }
        int i7 = resolve.resourceId;
        if (i7 != 0) {
            return h.getColorStateList(context, i7);
        }
        int i8 = resolve.data;
        if (i8 != 0) {
            return ColorStateList.valueOf(i8);
        }
        return null;
    }

    public static boolean isColorLight(int i2) {
        return i2 != 0 && D.a.calculateLuminance(i2) > 0.5d;
    }

    public static int layer(View view, int i2, int i7, float f3) {
        return layer(getColor(view, i2), getColor(view, i7), f3);
    }

    public static int layer(int i2, int i7, float f3) {
        return layer(i2, D.a.setAlphaComponent(i7, Math.round(Color.alpha(i7) * f3)));
    }

    public static int getColor(Context context, int i2, String str) {
        TypedValue resolveTypedValueOrThrow = c.resolveTypedValueOrThrow(context, i2, str);
        int i7 = resolveTypedValueOrThrow.resourceId;
        if (i7 != 0) {
            return h.getColor(context, i7);
        }
        return resolveTypedValueOrThrow.data;
    }

    public static int layer(int i2, int i7) {
        return D.a.compositeColors(i7, i2);
    }

    public static int getColor(View view, int i2, int i7) {
        return getColor(view.getContext(), i2, i7);
    }

    public static int getColor(Context context, int i2, int i7) {
        Integer colorOrNull = getColorOrNull(context, i2);
        return colorOrNull != null ? colorOrNull.intValue() : i7;
    }
}
