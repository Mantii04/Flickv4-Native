package M;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class K {

    /* renamed from: a, reason: collision with root package name */
    public int f1937a;

    /* renamed from: b, reason: collision with root package name */
    public int f1938b;

    public K(ViewGroup viewGroup) {
    }

    public int getNestedScrollAxes() {
        return this.f1937a | this.f1938b;
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2, int i7) {
        if (i7 == 1) {
            this.f1938b = i2;
        } else {
            this.f1937a = i2;
        }
    }

    public void onStopNestedScroll(View view, int i2) {
        if (i2 == 1) {
            this.f1938b = 0;
        } else {
            this.f1937a = 0;
        }
    }
}
