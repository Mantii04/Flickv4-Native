package M;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.PathInterpolator;
import androidx.core.R;
import h0.C0958a;
import java.util.List;

/* loaded from: classes.dex */
public final class O0 extends R0 {

    /* renamed from: e, reason: collision with root package name */
    public static final PathInterpolator f1955e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

    /* renamed from: f, reason: collision with root package name */
    public static final C0958a f1956f = new C0958a();

    /* renamed from: g, reason: collision with root package name */
    public static final DecelerateInterpolator f1957g = new DecelerateInterpolator();

    public static void a(S0 s02, View view) {
        J0 f3 = f(view);
        if (f3 != null) {
            f3.onEnd(s02);
            if (f3.getDispatchMode() == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                a(s02, viewGroup.getChildAt(i2));
            }
        }
    }

    public static void b(View view, S0 s02, WindowInsets windowInsets, boolean z6) {
        J0 f3 = f(view);
        if (f3 != null) {
            f3.f1935a = windowInsets;
            if (!z6) {
                f3.onPrepare(s02);
                z6 = f3.getDispatchMode() == 0;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                b(viewGroup.getChildAt(i2), s02, windowInsets, z6);
            }
        }
    }

    public static void c(View view, h1 h1Var, List list) {
        J0 f3 = f(view);
        if (f3 != null) {
            h1Var = f3.onProgress(h1Var, list);
            if (f3.getDispatchMode() == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                c(viewGroup.getChildAt(i2), h1Var, list);
            }
        }
    }

    public static void d(View view, S0 s02, I0 i02) {
        J0 f3 = f(view);
        if (f3 != null) {
            f3.onStart(s02, i02);
            if (f3.getDispatchMode() == 0) {
                return;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                d(viewGroup.getChildAt(i2), s02, i02);
            }
        }
    }

    public static WindowInsets e(View view, WindowInsets windowInsets) {
        return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    public static J0 f(View view) {
        Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
        if (tag instanceof N0) {
            return ((N0) tag).f1950a;
        }
        return null;
    }
}
