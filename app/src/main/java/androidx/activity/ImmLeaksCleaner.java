package androidx.activity;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements androidx.lifecycle.r {

    /* renamed from: e, reason: collision with root package name */
    public static int f4838e;

    /* renamed from: f, reason: collision with root package name */
    public static Field f4839f;

    /* renamed from: j, reason: collision with root package name */
    public static Field f4840j;

    /* renamed from: m, reason: collision with root package name */
    public static Field f4841m;

    /* renamed from: b, reason: collision with root package name */
    public ComponentActivity f4842b;

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_DESTROY) {
            return;
        }
        if (f4838e == 0) {
            try {
                f4838e = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f4840j = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f4841m = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f4839f = declaredField3;
                declaredField3.setAccessible(true);
                f4838e = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f4838e == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f4842b.getSystemService("input_method");
            try {
                Object obj = f4839f.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        View view = (View) f4840j.get(inputMethodManager);
                        if (view != null) {
                            if (!view.isAttachedToWindow()) {
                                f4841m.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            }
                        }
                    } catch (IllegalAccessException unused2) {
                    } catch (ClassCastException unused3) {
                    } catch (IllegalAccessException unused4) {
                    } finally {
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
