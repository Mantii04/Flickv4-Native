package M;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class T0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f1972a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f1973b;

    /* renamed from: c, reason: collision with root package name */
    public static final Field f1974c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f1975d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f1972a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f1973b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f1974c = declaredField3;
            declaredField3.setAccessible(true);
            f1975d = true;
        } catch (ReflectiveOperationException e3) {
            Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e3.getMessage(), e3);
        }
    }

    public static h1 getRootWindowInsets(View view) {
        if (!f1975d || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            Object obj = f1972a.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            Rect rect = (Rect) f1973b.get(obj);
            Rect rect2 = (Rect) f1974c.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            h1 build = new U0().setStableInsets(D.c.of(rect)).setSystemWindowInsets(D.c.of(rect2)).build();
            build.f2030a.p(build);
            build.f2030a.d(view.getRootView());
            return build;
        } catch (IllegalAccessException e3) {
            Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e3.getMessage(), e3);
            return null;
        }
    }
}
