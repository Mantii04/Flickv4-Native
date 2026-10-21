package androidx.leanback.widget;

import android.content.res.Resources;
import android.view.View;

/* renamed from: androidx.leanback.widget.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0541z {

    /* renamed from: a, reason: collision with root package name */
    public final int f6933a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6934b;

    public C0541z(int i2, boolean z6) {
        boolean z7 = true;
        if (i2 != 0) {
            if ((i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? 0 : androidx.leanback.R.fraction.lb_focus_zoom_factor_xsmall : androidx.leanback.R.fraction.lb_focus_zoom_factor_large : androidx.leanback.R.fraction.lb_focus_zoom_factor_medium : androidx.leanback.R.fraction.lb_focus_zoom_factor_small) <= 0) {
                z7 = false;
            }
        }
        if (!z7) {
            throw new IllegalArgumentException("Unhandled zoom index");
        }
        this.f6933a = i2;
        this.f6934b = z6;
    }

    public final A a(View view) {
        float fraction;
        A a7 = (A) view.getTag(androidx.leanback.R.id.lb_focus_animator);
        if (a7 == null) {
            Resources resources = view.getResources();
            int i2 = this.f6933a;
            if (i2 == 0) {
                fraction = 1.0f;
            } else {
                fraction = resources.getFraction(i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? 0 : androidx.leanback.R.fraction.lb_focus_zoom_factor_xsmall : androidx.leanback.R.fraction.lb_focus_zoom_factor_large : androidx.leanback.R.fraction.lb_focus_zoom_factor_medium : androidx.leanback.R.fraction.lb_focus_zoom_factor_small, 1, 1);
            }
            a7 = new A(view, fraction, this.f6934b);
            view.setTag(androidx.leanback.R.id.lb_focus_animator, a7);
        }
        return a7;
    }

    public void onInitializeView(View view) {
        a(view).a(false, true);
    }

    public void onItemFocused(View view, boolean z6) {
        view.setSelected(z6);
        a(view).a(z6, false);
    }
}
