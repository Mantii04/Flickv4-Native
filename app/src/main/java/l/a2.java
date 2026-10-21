package l;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes.dex */
public abstract class a2 {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f17841a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f17842b = {-16842910};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f17843c = {R.attr.state_focused};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f17844d = {R.attr.state_pressed};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f17845e = {R.attr.state_checked};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f17846f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f17847g = new int[1];

    public static void checkAppCompatTheme(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int getDisabledThemeAttrColor(Context context, int i2) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i2);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(f17842b, themeAttrColorStateList.getDefaultColor());
        }
        ThreadLocal threadLocal = f17841a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f3 = typedValue.getFloat();
        return D.a.setAlphaComponent(getThemeAttrColor(context, i2), Math.round(Color.alpha(r4) * f3));
    }

    public static int getThemeAttrColor(Context context, int i2) {
        int[] iArr = f17847g;
        iArr[0] = i2;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList getThemeAttrColorStateList(Context context, int i2) {
        int[] iArr = f17847g;
        iArr[0] = i2;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
