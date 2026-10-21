package H3;

import V3.s;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes2.dex */
public final class b extends s {

    /* renamed from: i, reason: collision with root package name */
    public final SideSheetBehavior f1200i;

    public b(SideSheetBehavior sideSheetBehavior) {
        this.f1200i = sideSheetBehavior;
    }

    @Override // V3.s
    public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // V3.s
    public final float b(int i2) {
        float f3 = this.f1200i.f12802v;
        return (f3 - i2) / (f3 - f());
    }

    @Override // V3.s
    public final int e(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // V3.s
    public final int f() {
        SideSheetBehavior sideSheetBehavior = this.f1200i;
        return Math.max(0, (sideSheetBehavior.f12802v - sideSheetBehavior.f12801u) - sideSheetBehavior.f12804x);
    }

    @Override // V3.s
    public final int g() {
        return this.f1200i.f12802v;
    }

    @Override // V3.s
    public int getParentInnerEdge(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // V3.s
    public final int h() {
        return this.f1200i.f12802v;
    }

    @Override // V3.s
    public final int i() {
        return f();
    }

    @Override // V3.s
    public final int j(View view) {
        return view.getLeft() - this.f1200i.f12804x;
    }

    @Override // V3.s
    public final int k() {
        return 0;
    }

    @Override // V3.s
    public final boolean l(float f3) {
        return f3 < 0.0f;
    }

    @Override // V3.s
    public final boolean m(View view) {
        return view.getLeft() > (f() + this.f1200i.f12802v) / 2;
    }

    @Override // V3.s
    public final boolean n(float f3, float f7) {
        return Math.abs(f3) > Math.abs(f7) && Math.abs(f3) > ((float) 500);
    }

    @Override // V3.s
    public final boolean r(View view, float f3) {
        float right = view.getRight();
        SideSheetBehavior sideSheetBehavior = this.f1200i;
        float abs = Math.abs((sideSheetBehavior.getHideFriction() * f3) + right);
        sideSheetBehavior.getClass();
        return abs > 0.5f;
    }

    @Override // V3.s
    public final void u(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.rightMargin = i2;
    }

    @Override // V3.s
    public final void v(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i7) {
        int i8 = this.f1200i.f12802v;
        if (i2 <= i8) {
            marginLayoutParams.rightMargin = i8 - i2;
        }
    }
}
