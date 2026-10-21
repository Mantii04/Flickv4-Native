package l;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class P0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f17758a = {R.attr.state_checked};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f17759b = new int[0];

    /* renamed from: c, reason: collision with root package name */
    public static final Rect f17760c = new Rect();

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 29 || i2 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f17758a);
        } else {
            drawable.setState(f17759b);
        }
        drawable.setState(state);
    }

    public static boolean canSafelyMutateDrawable(Drawable drawable) {
        return true;
    }

    public static Rect getOpticalBounds(Drawable drawable) {
        int i2;
        int i7;
        int i8;
        int i9;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            Insets a7 = O0.a(drawable);
            i2 = a7.left;
            i7 = a7.top;
            i8 = a7.right;
            i9 = a7.bottom;
            return new Rect(i2, i7, i8, i9);
        }
        Drawable unwrap = E.c.unwrap(drawable);
        if (i10 >= 29) {
            boolean z6 = N0.f17744a;
        } else if (N0.f17744a) {
            try {
                Object invoke = N0.f17745b.invoke(unwrap, new Object[0]);
                if (invoke != null) {
                    return new Rect(N0.f17746c.getInt(invoke), N0.f17747d.getInt(invoke), N0.f17748e.getInt(invoke), N0.f17749f.getInt(invoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f17760c;
    }

    public static PorterDuff.Mode parseTintMode(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
