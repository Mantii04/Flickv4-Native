package j;

import android.view.InflateException;
import android.view.MenuItem;
import java.lang.reflect.Method;

/* renamed from: j.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class MenuItemOnMenuItemClickListenerC1027j implements MenuItem.OnMenuItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public static final Class[] f16888c = {MenuItem.class};

    /* renamed from: a, reason: collision with root package name */
    public final Object f16889a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f16890b;

    public MenuItemOnMenuItemClickListenerC1027j(Object obj, String str) {
        this.f16889a = obj;
        Class<?> cls = obj.getClass();
        try {
            this.f16890b = cls.getMethod(str, f16888c);
        } catch (Exception e3) {
            StringBuilder t6 = A.i.t("Couldn't resolve menu item onClick handler ", str, " in class ");
            t6.append(cls.getName());
            InflateException inflateException = new InflateException(t6.toString());
            inflateException.initCause(e3);
            throw inflateException;
        }
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Method method = this.f16890b;
        try {
            Class<?> returnType = method.getReturnType();
            Class<?> cls = Boolean.TYPE;
            Object obj = this.f16889a;
            if (returnType == cls) {
                return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
            }
            method.invoke(obj, menuItem);
            return true;
        } catch (Exception e3) {
            throw new RuntimeException(e3);
        }
    }
}
