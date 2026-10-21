package x1;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public abstract class M {

    /* renamed from: a, reason: collision with root package name */
    public static final W f20786a;

    /* renamed from: b, reason: collision with root package name */
    public static final K f20787b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f20786a = new X();
        } else {
            f20786a = new W();
        }
        f20787b = new K(Float.class, "translationAlpha");
        new L(Rect.class, "clipBounds");
    }

    public static void a(View view, int i2, int i7, int i8, int i9) {
        f20786a.setLeftTopRightBottom(view, i2, i7, i8, i9);
    }

    public static void b(View view, int i2) {
        f20786a.setTransitionVisibility(view, i2);
    }
}
