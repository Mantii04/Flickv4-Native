package x1;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class O {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f20788a = true;

    /* renamed from: b, reason: collision with root package name */
    public static Field f20789b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f20790c;

    @SuppressLint({"NewApi"})
    public float getTransitionAlpha(View view) {
        if (f20788a) {
            try {
                return N.a(view);
            } catch (NoSuchMethodError unused) {
                f20788a = false;
            }
        }
        return view.getAlpha();
    }

    @SuppressLint({"NewApi"})
    public void setTransitionAlpha(View view, float f3) {
        if (f20788a) {
            try {
                N.b(view, f3);
                return;
            } catch (NoSuchMethodError unused) {
                f20788a = false;
            }
        }
        view.setAlpha(f3);
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public void setTransitionVisibility(View view, int i2) {
        if (!f20790c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f20789b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            f20790c = true;
        }
        Field field = f20789b;
        if (field != null) {
            try {
                f20789b.setInt(view, i2 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public void clearNonTransitionAlpha(View view) {
    }

    public void saveNonTransitionAlpha(View view) {
    }
}
