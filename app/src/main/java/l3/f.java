package l3;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class f extends W.k {

    /* renamed from: a, reason: collision with root package name */
    public long f18136a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f18137b;

    public f(BottomSheetBehavior bottomSheetBehavior) {
        this.f18137b = bottomSheetBehavior;
    }

    @Override // W.k
    public int clampViewPositionHorizontal(View view, int i2, int i7) {
        return view.getLeft();
    }

    @Override // W.k
    public int clampViewPositionVertical(View view, int i2, int i7) {
        return G.a.clamp(i2, this.f18137b.getExpandedOffset(), getViewVerticalDragRange(view));
    }

    @Override // W.k
    public int getViewVerticalDragRange(View view) {
        int i2 = BottomSheetBehavior.f12457o0;
        BottomSheetBehavior bottomSheetBehavior = this.f18137b;
        return (bottomSheetBehavior.isHideable() && bottomSheetBehavior.isHideableWhenDragging()) ? bottomSheetBehavior.f12487c0 : bottomSheetBehavior.f12473P;
    }

    @Override // W.k
    public void onViewDragStateChanged(int i2) {
        if (i2 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f18137b;
            if (bottomSheetBehavior.f12477T) {
                bottomSheetBehavior.i(1);
            }
        }
    }

    @Override // W.k
    public void onViewPositionChanged(View view, int i2, int i7, int i8, int i9) {
        this.f18137b.d(i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        if (r5.shouldExpandOnUpwardDrag(r0, (r10 * 100.0f) / r5.f12487c0) != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        if (r10 > r5.f12471N) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0083, code lost:
    
        if (java.lang.Math.abs(r9.getTop() - r5.getExpandedOffset()) < java.lang.Math.abs(r9.getTop() - r5.f12471N)) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
    
        if (r5.shouldSkipHalfExpandedStateWhenDragging() == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d0, code lost:
    
        if (java.lang.Math.abs(r10 - r5.f12470M) < java.lang.Math.abs(r10 - r5.f12473P)) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e8, code lost:
    
        if (r5.shouldSkipHalfExpandedStateWhenDragging() != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00fe, code lost:
    
        if (r5.shouldSkipHalfExpandedStateWhenDragging() == false) goto L63;
     */
    @Override // W.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewReleased(android.view.View r9, float r10, float r11) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l3.f.onViewReleased(android.view.View, float, float):void");
    }

    @Override // W.k
    public boolean tryCaptureView(View view, int i2) {
        BottomSheetBehavior bottomSheetBehavior = this.f18137b;
        int i7 = bottomSheetBehavior.f12478U;
        if (i7 == 1 || bottomSheetBehavior.f12498k0) {
            return false;
        }
        if (i7 == 3 && bottomSheetBehavior.f12495i0 == i2) {
            WeakReference weakReference = bottomSheetBehavior.f12490e0;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        this.f18136a = System.currentTimeMillis();
        WeakReference weakReference2 = bottomSheetBehavior.f12488d0;
        return weakReference2 != null && weakReference2.get() == view;
    }
}
