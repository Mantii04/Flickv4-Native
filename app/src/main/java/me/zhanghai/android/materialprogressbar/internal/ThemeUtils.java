package me.zhanghai.android.materialprogressbar.internal;

import android.content.Context;
import android.content.res.TypedArray;

/* loaded from: classes2.dex */
public class ThemeUtils {
    private ThemeUtils() {
    }

    public static int getColorFromAttrRes(int i2, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static float getFloatFromAttrRes(int i2, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
        try {
            return obtainStyledAttributes.getFloat(0, 0.0f);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
