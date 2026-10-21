package x3;

import M.AbstractC0181p0;
import M.f1;
import M.o1;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;

/* loaded from: classes2.dex */
public abstract class T {
    public static void doOnApplyWindowInsets(View view, Q q6) {
        AbstractC0181p0.setOnApplyWindowInsetsListener(view, new O(q6, new S(AbstractC0181p0.getPaddingStart(view), view.getPaddingTop(), AbstractC0181p0.getPaddingEnd(view), view.getPaddingBottom())));
        requestApplyInsetsWhenAttached(view);
    }

    public static float dpToPx(Context context, int i2) {
        return TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics());
    }

    public static Integer getBackgroundColor(View view) {
        ColorStateList colorStateListOrNull = t3.c.getColorStateListOrNull(view.getBackground());
        if (colorStateListOrNull != null) {
            return Integer.valueOf(colorStateListOrNull.getDefaultColor());
        }
        return null;
    }

    public static float getParentAbsoluteElevation(View view) {
        float f3 = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f3 += AbstractC0181p0.getElevation((View) parent);
        }
        return f3;
    }

    public static boolean isLayoutRtl(View view) {
        return AbstractC0181p0.getLayoutDirection(view) == 1;
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

    public static void requestApplyInsetsWhenAttached(View view) {
        if (AbstractC0181p0.isAttachedToWindow(view)) {
            AbstractC0181p0.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new P());
        }
    }

    public static void requestFocusAndShowKeyboard(View view, boolean z6) {
        view.requestFocus();
        view.post(new androidx.media3.exoplayer.audio.i(3, view, z6));
    }

    public static void showKeyboard(View view, boolean z6) {
        o1 windowInsetsController;
        if (!z6 || (windowInsetsController = AbstractC0181p0.getWindowInsetsController(view)) == null) {
            ((InputMethodManager) A.h.getSystemService(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
        } else {
            windowInsetsController.show(f1.ime());
        }
    }
}
