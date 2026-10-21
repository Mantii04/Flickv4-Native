package l;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class R0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f17765a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f17766b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f17767c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f17768d;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
            f17765a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f17766b = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f17767c = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f17768d = true;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        }
    }
}
