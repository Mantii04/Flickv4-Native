package H3;

import V3.s;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes2.dex */
public final class a extends s {

    /* renamed from: i, reason: collision with root package name */
    public final SideSheetBehavior f1199i;

    public a(SideSheetBehavior sideSheetBehavior) {
        this.f1199i = sideSheetBehavior;
    }

    @Override // V3.s
    public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // V3.s
    public final float b(int i2) {
        float g7 = g();
        return (i2 - g7) / (f() - g7);
    }

    @Override // V3.s
    public final int e(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // V3.s
    public final int f() {
        SideSheetBehavior sideSheetBehavior = this.f1199i;
        return Math.max(0, sideSheetBehavior.f12803w + sideSheetBehavior.f12804x);
    }

    @Override // V3.s
    public final int g() {
        SideSheetBehavior sideSheetBehavior = this.f1199i;
        return (-sideSheetBehavior.f12801u) - sideSheetBehavior.f12804x;
    }

    @Override // V3.s
    public int getParentInnerEdge(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override // V3.s
    public final int h() {
        return this.f1199i.f12804x;
    }

    @Override // V3.s
    public final int i() {
        return -this.f1199i.f12801u;
    }

    @Override // V3.s
    public final int j(View view) {
        return view.getRight() + this.f1199i.f12804x;
    }

    @Override // V3.s
    public final int k() {
        return 1;
    }

    @Override // V3.s
    public final boolean l(float f3) {
        return f3 > 0.0f;
    }

    @Override // V3.s
    public final boolean m(View view) {
        return view.getRight() < (f() - g()) / 2;
    }

    @Override // V3.s
    public final boolean n(float f3, float f7) {
        return Math.abs(f3) > Math.abs(f7) && Math.abs(f3) > ((float) 500);
    }

    @Override // V3.s
    public final boolean r(View view, float f3) {
        float left = view.getLeft();
        SideSheetBehavior sideSheetBehavior = this.f1199i;
        float abs = Math.abs((sideSheetBehavior.getHideFriction() * f3) + left);
        sideSheetBehavior.getClass();
        return abs > 0.5f;
    }

    @Override // V3.s
    public final void u(ViewGroup.MarginLayoutParams marginLayoutParams, int i2) {
        marginLayoutParams.leftMargin = i2;
    }

    @Override // V3.s
    public final void v(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i7) {
        if (i2 <= this.f1199i.f12802v) {
            marginLayoutParams.leftMargin = i7;
        }
    }
}
