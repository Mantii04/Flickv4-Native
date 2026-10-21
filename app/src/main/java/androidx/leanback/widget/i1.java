package androidx.leanback.widget;

import android.view.View;

/* loaded from: classes.dex */
public abstract class i1 {

    /* renamed from: a, reason: collision with root package name */
    public static final g1 f6806a = new g1();

    public static Object addDynamicShadow(View view, float f3, float f7, int i2) {
        if (i2 > 0) {
            G0.setClipToRoundedOutline(view, true, i2);
        } else {
            view.setOutlineProvider(f6806a);
        }
        h1 h1Var = new h1();
        h1Var.f6798a = view;
        h1Var.f6799b = f3;
        h1Var.f6800c = f7;
        view.setZ(f3);
        return h1Var;
    }

    public static void setShadowFocusLevel(Object obj, float f3) {
        h1 h1Var = (h1) obj;
        View view = h1Var.f6798a;
        float f7 = h1Var.f6799b;
        view.setZ(((h1Var.f6800c - f7) * f3) + f7);
    }
}
