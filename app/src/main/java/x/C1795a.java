package x;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.m;
import u.l;
import v.C1713b;
import v.InterfaceC1714c;

/* renamed from: x.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1795a implements InterfaceC1714c {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f20694a;

    /* renamed from: b, reason: collision with root package name */
    public int f20695b;

    /* renamed from: c, reason: collision with root package name */
    public int f20696c;

    /* renamed from: d, reason: collision with root package name */
    public int f20697d;

    /* renamed from: e, reason: collision with root package name */
    public int f20698e;

    /* renamed from: f, reason: collision with root package name */
    public int f20699f;

    /* renamed from: g, reason: collision with root package name */
    public int f20700g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f20701h;

    public C1795a(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f20701h = constraintLayout;
        this.f20694a = constraintLayout2;
    }

    public static boolean a(int i2, int i7, int i8) {
        if (i2 == i7) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i2);
        View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i7);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i8 == size;
        }
        return false;
    }

    public void captureLayoutInfo(int i2, int i7, int i8, int i9, int i10, int i11) {
        this.f20695b = i8;
        this.f20696c = i9;
        this.f20697d = i10;
        this.f20698e = i11;
        this.f20699f = i2;
        this.f20700g = i7;
    }

    public final void didMeasures() {
        ConstraintLayout constraintLayout = this.f20694a;
        int childCount = constraintLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            constraintLayout.getChildAt(i2);
        }
        int size = constraintLayout.f5296e.size();
        if (size > 0) {
            for (int i7 = 0; i7 < size; i7++) {
                ((androidx.constraintlayout.widget.c) constraintLayout.f5296e.get(i7)).updatePostMeasure(constraintLayout);
            }
        }
    }

    @SuppressLint({"WrongCall"})
    public final void measure(u.e eVar, C1713b c1713b) {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int baseline;
        int max;
        int max2;
        int i2;
        int i7;
        if (eVar == null) {
            return;
        }
        if (eVar.getVisibility() == 8 && !eVar.isInPlaceholder()) {
            c1713b.f20334e = 0;
            c1713b.f20335f = 0;
            c1713b.f20336g = 0;
            return;
        }
        if (eVar.getParent() == null) {
            return;
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = c1713b.f20330a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = c1713b.f20331b;
        int i8 = c1713b.f20332c;
        int i9 = c1713b.f20333d;
        int i10 = this.f20695b + this.f20696c;
        int i11 = this.f20697d;
        View view = (View) eVar.getCompanionWidget();
        int ordinal = constraintWidget$DimensionBehaviour.ordinal();
        if (ordinal == 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
        } else if (ordinal == 1) {
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f20699f, i11, -2);
        } else if (ordinal != 2) {
            makeMeasureSpec = ordinal != 3 ? 0 : ViewGroup.getChildMeasureSpec(this.f20699f, eVar.getHorizontalMargin() + i11, -1);
        } else {
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f20699f, i11, -2);
            boolean z6 = eVar.f20136r == 1;
            int i12 = c1713b.f20339j;
            if (i12 == 1 || i12 == 2) {
                boolean z7 = view.getMeasuredHeight() == eVar.getHeight();
                if (c1713b.f20339j == 2 || !z6 || ((z6 && z7) || eVar.isResolvedHorizontally())) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(eVar.getWidth(), 1073741824);
                }
            }
        }
        int ordinal2 = constraintWidget$DimensionBehaviour2.ordinal();
        if (ordinal2 == 0) {
            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
        } else if (ordinal2 == 1) {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f20700g, i10, -2);
        } else if (ordinal2 != 2) {
            makeMeasureSpec2 = ordinal2 != 3 ? 0 : ViewGroup.getChildMeasureSpec(this.f20700g, eVar.getVerticalMargin() + i10, -1);
        } else {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f20700g, i10, -2);
            boolean z8 = eVar.f20137s == 1;
            int i13 = c1713b.f20339j;
            if (i13 == 1 || i13 == 2) {
                boolean z9 = view.getMeasuredWidth() == eVar.getWidth();
                if (c1713b.f20339j == 2 || !z8 || ((z8 && z9) || eVar.isResolvedVertically())) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(eVar.getHeight(), 1073741824);
                }
            }
        }
        u.f fVar = (u.f) eVar.getParent();
        ConstraintLayout constraintLayout = this.f20701h;
        if (fVar != null && l.enabled(constraintLayout.f5303r, 256) && view.getMeasuredWidth() == eVar.getWidth() && view.getMeasuredWidth() < fVar.getWidth() && view.getMeasuredHeight() == eVar.getHeight() && view.getMeasuredHeight() < fVar.getHeight() && view.getBaseline() == eVar.getBaselineDistance() && !eVar.isMeasureRequested() && a(eVar.getLastHorizontalMeasureSpec(), makeMeasureSpec, eVar.getWidth()) && a(eVar.getLastVerticalMeasureSpec(), makeMeasureSpec2, eVar.getHeight())) {
            c1713b.f20334e = eVar.getWidth();
            c1713b.f20335f = eVar.getHeight();
            c1713b.f20336g = eVar.getBaselineDistance();
            return;
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5241f;
        boolean z10 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3;
        boolean z11 = constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.f5242j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.f5239b;
        boolean z12 = constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 || constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour5;
        boolean z13 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4 || constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour5;
        boolean z14 = z10 && eVar.f20100X > 0.0f;
        boolean z15 = z11 && eVar.f20100X > 0.0f;
        if (view == null) {
            return;
        }
        androidx.constraintlayout.widget.e eVar2 = (androidx.constraintlayout.widget.e) view.getLayoutParams();
        int i14 = c1713b.f20339j;
        if (i14 != 1 && i14 != 2 && z10 && eVar.f20136r == 0 && z11 && eVar.f20137s == 0) {
            i7 = -1;
            baseline = 0;
            max = 0;
            max2 = 0;
        } else {
            if ((view instanceof m) && (eVar instanceof u.m)) {
                ((m) view).onMeasure((u.m) eVar, makeMeasureSpec, makeMeasureSpec2);
            } else {
                view.measure(makeMeasureSpec, makeMeasureSpec2);
            }
            eVar.setLastMeasureSpec(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            baseline = view.getBaseline();
            int i15 = eVar.f20139u;
            max = i15 > 0 ? Math.max(i15, measuredWidth) : measuredWidth;
            int i16 = eVar.f20140v;
            if (i16 > 0) {
                max = Math.min(i16, max);
            }
            int i17 = eVar.f20142x;
            max2 = i17 > 0 ? Math.max(i17, measuredHeight) : measuredHeight;
            boolean z16 = z13;
            int i18 = eVar.f20143y;
            if (i18 > 0) {
                max2 = Math.min(i18, max2);
            }
            if (!l.enabled(constraintLayout.f5303r, 1)) {
                if (z14 && z12) {
                    max = (int) ((max2 * eVar.f20100X) + 0.5f);
                } else if (z15 && z16) {
                    max2 = (int) ((max / eVar.f20100X) + 0.5f);
                }
            }
            if (measuredWidth != max || measuredHeight != max2) {
                if (measuredWidth != max) {
                    i2 = 1073741824;
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
                } else {
                    i2 = 1073741824;
                }
                if (measuredHeight != max2) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(max2, i2);
                }
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                eVar.setLastMeasureSpec(makeMeasureSpec, makeMeasureSpec2);
                max = view.getMeasuredWidth();
                max2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            }
            i7 = -1;
        }
        boolean z17 = baseline != i7;
        c1713b.f20338i = (max == c1713b.f20332c && max2 == c1713b.f20333d) ? false : true;
        if (eVar2.f5362c0) {
            z17 = true;
        }
        if (z17 && baseline != -1 && eVar.getBaselineDistance() != baseline) {
            c1713b.f20338i = true;
        }
        c1713b.f20334e = max;
        c1713b.f20335f = max2;
        c1713b.f20337h = z17;
        c1713b.f20336g = baseline;
    }
}
