package M;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.InputDevice;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
import java.util.Objects;

/* renamed from: M.t0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0188t0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f2072a;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f2072a = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception unused) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    public static float a(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f2072a) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception unused) {
                Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static float getScaledHorizontalScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? AbstractC0183q0.a(viewConfiguration) : a(viewConfiguration, context);
    }

    public static int getScaledHoverSlop(ViewConfiguration viewConfiguration) {
        return Build.VERSION.SDK_INT >= 28 ? AbstractC0184r0.a(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
    }

    public static int getScaledMaximumFlingVelocity(Context context, ViewConfiguration viewConfiguration, int i2, int i7, int i8) {
        int dimensionPixelSize;
        if (Build.VERSION.SDK_INT >= 34) {
            return AbstractC0186s0.a(viewConfiguration, i2, i7, i8);
        }
        InputDevice device = InputDevice.getDevice(i2);
        if (!((device == null || device.getMotionRange(i7, i8) == null) ? false : true)) {
            return Integer.MIN_VALUE;
        }
        Resources resources = context.getResources();
        int identifier = (i8 == 4194304 && i7 == 26) ? resources.getIdentifier("config_viewMaxRotaryEncoderFlingVelocity", "dimen", "android") : -1;
        Objects.requireNonNull(viewConfiguration);
        if (identifier == -1) {
            return viewConfiguration.getScaledMaximumFlingVelocity();
        }
        if (identifier == 0 || (dimensionPixelSize = resources.getDimensionPixelSize(identifier)) < 0) {
            return Integer.MIN_VALUE;
        }
        return dimensionPixelSize;
    }

    public static int getScaledMinimumFlingVelocity(Context context, ViewConfiguration viewConfiguration, int i2, int i7, int i8) {
        int dimensionPixelSize;
        if (Build.VERSION.SDK_INT >= 34) {
            return AbstractC0186s0.b(viewConfiguration, i2, i7, i8);
        }
        InputDevice device = InputDevice.getDevice(i2);
        if (!((device == null || device.getMotionRange(i7, i8) == null) ? false : true)) {
            return androidx.media3.common.util.Log.LOG_LEVEL_OFF;
        }
        Resources resources = context.getResources();
        int identifier = (i8 == 4194304 && i7 == 26) ? resources.getIdentifier("config_viewMinRotaryEncoderFlingVelocity", "dimen", "android") : -1;
        Objects.requireNonNull(viewConfiguration);
        return identifier != -1 ? (identifier == 0 || (dimensionPixelSize = resources.getDimensionPixelSize(identifier)) < 0) ? androidx.media3.common.util.Log.LOG_LEVEL_OFF : dimensionPixelSize : viewConfiguration.getScaledMinimumFlingVelocity();
    }

    public static float getScaledVerticalScrollFactor(ViewConfiguration viewConfiguration, Context context) {
        return Build.VERSION.SDK_INT >= 26 ? AbstractC0183q0.b(viewConfiguration) : a(viewConfiguration, context);
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration viewConfiguration, Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC0184r0.b(viewConfiguration);
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
        return identifier != 0 && resources.getBoolean(identifier);
    }
}
