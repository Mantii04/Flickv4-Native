package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import x1.C1812n;

/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: a, reason: collision with root package name */
    public static final C0 f6349a = new C0();

    /* renamed from: b, reason: collision with root package name */
    public static final E0 f6350b;

    static {
        E0 e02;
        try {
            e02 = (E0) C1812n.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            e02 = null;
        }
        f6350b = e02;
    }

    public static void a(int i2, ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i2);
        }
    }
}
