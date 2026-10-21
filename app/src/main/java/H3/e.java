package H3;

import W.k;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes2.dex */
public final class e extends k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SideSheetBehavior f1208a;

    public e(SideSheetBehavior sideSheetBehavior) {
        this.f1208a = sideSheetBehavior;
    }

    @Override // W.k
    public int clampViewPositionHorizontal(View view, int i2, int i7) {
        SideSheetBehavior sideSheetBehavior = this.f1208a;
        return G.a.clamp(i2, sideSheetBehavior.f12790b.i(), sideSheetBehavior.f12790b.h());
    }

    @Override // W.k
    public int clampViewPositionVertical(View view, int i2, int i7) {
        return view.getTop();
    }

    @Override // W.k
    public int getViewHorizontalDragRange(View view) {
        SideSheetBehavior sideSheetBehavior = this.f1208a;
        return sideSheetBehavior.f12801u + sideSheetBehavior.f12804x;
    }

    @Override // W.k
    public void onViewDragStateChanged(int i2) {
        if (i2 == 1) {
            SideSheetBehavior sideSheetBehavior = this.f1208a;
            if (sideSheetBehavior.f12796p) {
                sideSheetBehavior.a(1);
            }
        }
    }

    @Override // W.k
    public void onViewPositionChanged(View view, int i2, int i7, int i8, int i9) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        SideSheetBehavior sideSheetBehavior = this.f1208a;
        View coplanarSiblingView = sideSheetBehavior.getCoplanarSiblingView();
        if (coplanarSiblingView != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) coplanarSiblingView.getLayoutParams()) != null) {
            sideSheetBehavior.f12790b.v(marginLayoutParams, view.getLeft(), view.getRight());
            coplanarSiblingView.setLayoutParams(marginLayoutParams);
        }
        LinkedHashSet linkedHashSet = sideSheetBehavior.f12788E;
        if (linkedHashSet.isEmpty()) {
            return;
        }
        sideSheetBehavior.f12790b.b(i2);
        Iterator it = linkedHashSet.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        if (java.lang.Math.abs(r4 - r0.getExpandedOffset()) < java.lang.Math.abs(r4 - r0.f12790b.g())) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (r0.f12790b.m(r3) == false) goto L19;
     */
    @Override // W.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewReleased(android.view.View r3, float r4, float r5) {
        /*
            r2 = this;
            com.google.android.material.sidesheet.SideSheetBehavior r0 = r2.f1208a
            V3.s r1 = r0.f12790b
            boolean r1 = r1.l(r4)
            if (r1 == 0) goto Lb
            goto L51
        Lb:
            V3.s r1 = r0.f12790b
            boolean r1 = r1.r(r3, r4)
            if (r1 == 0) goto L24
            V3.s r1 = r0.f12790b
            boolean r4 = r1.n(r4, r5)
            if (r4 != 0) goto L53
            V3.s r4 = r0.f12790b
            boolean r4 = r4.m(r3)
            if (r4 == 0) goto L51
            goto L53
        L24:
            r1 = 0
            int r1 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r1 == 0) goto L36
            float r4 = java.lang.Math.abs(r4)
            float r5 = java.lang.Math.abs(r5)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L36
            goto L53
        L36:
            int r4 = r3.getLeft()
            int r5 = r0.getExpandedOffset()
            int r5 = r4 - r5
            int r5 = java.lang.Math.abs(r5)
            V3.s r1 = r0.f12790b
            int r1 = r1.g()
            int r4 = r4 - r1
            int r4 = java.lang.Math.abs(r4)
            if (r5 >= r4) goto L53
        L51:
            r4 = 3
            goto L54
        L53:
            r4 = 5
        L54:
            boolean r5 = r0.shouldSkipSmoothAnimation()
            r0.c(r3, r5, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: H3.e.onViewReleased(android.view.View, float, float):void");
    }

    @Override // W.k
    public boolean tryCaptureView(View view, int i2) {
        WeakReference weakReference;
        SideSheetBehavior sideSheetBehavior = this.f1208a;
        return (sideSheetBehavior.f12797q == 1 || (weakReference = sideSheetBehavior.f12805y) == null || weakReference.get() != view) ? false : true;
    }
}
