package j3;

import I3.n;
import M.AbstractC0181p0;
import W.k;
import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* renamed from: j3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1050b extends k {

    /* renamed from: a, reason: collision with root package name */
    public int f16979a;

    /* renamed from: b, reason: collision with root package name */
    public int f16980b = -1;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f16981c;

    public C1050b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f16981c = swipeDismissBehavior;
    }

    @Override // W.k
    public int clampViewPositionHorizontal(View view, int i2, int i7) {
        int width;
        int width2;
        int width3;
        boolean z6 = AbstractC0181p0.getLayoutDirection(view) == 1;
        int i8 = this.f16981c.f12451m;
        if (i8 == 0) {
            if (z6) {
                width = this.f16979a - view.getWidth();
                width2 = this.f16979a;
            } else {
                width = this.f16979a;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i8 != 1) {
            width = this.f16979a - view.getWidth();
            width2 = view.getWidth() + this.f16979a;
        } else if (z6) {
            width = this.f16979a;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f16979a - view.getWidth();
            width2 = this.f16979a;
        }
        return Math.min(Math.max(width, i2), width2);
    }

    @Override // W.k
    public int clampViewPositionVertical(View view, int i2, int i7) {
        return view.getTop();
    }

    @Override // W.k
    public int getViewHorizontalDragRange(View view) {
        return view.getWidth();
    }

    @Override // W.k
    public void onViewCaptured(View view, int i2) {
        this.f16980b = i2;
        this.f16979a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.f16981c;
            swipeDismissBehavior.f12450j = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f12450j = false;
        }
    }

    @Override // W.k
    public void onViewDragStateChanged(int i2) {
        InterfaceC1052d interfaceC1052d = this.f16981c.f12448e;
        if (interfaceC1052d != null) {
            ((n) interfaceC1052d).onDragStateChanged(i2);
        }
    }

    @Override // W.k
    public void onViewPositionChanged(View view, int i2, int i7, int i8, int i9) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f16981c;
        float f3 = width * swipeDismissBehavior.f12453p;
        float width2 = view.getWidth() * swipeDismissBehavior.f12454q;
        float abs = Math.abs(i2 - this.f16979a);
        if (abs <= f3) {
            view.setAlpha(1.0f);
        } else if (abs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f3) / (width2 - f3))), 1.0f));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x004e, code lost:
    
        if (java.lang.Math.abs(r9.getLeft() - r8.f16979a) >= java.lang.Math.round(r9.getWidth() * r2.f12452n)) goto L27;
     */
    @Override // W.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewReleased(android.view.View r9, float r10, float r11) {
        /*
            r8 = this;
            r11 = -1
            r8.f16980b = r11
            int r11 = r9.getWidth()
            r0 = 0
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            com.google.android.material.behavior.SwipeDismissBehavior r2 = r8.f16981c
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L37
            int r5 = M.AbstractC0181p0.getLayoutDirection(r9)
            if (r5 != r3) goto L18
            r5 = r3
            goto L19
        L18:
            r5 = r4
        L19:
            int r6 = r2.f12451m
            r7 = 2
            if (r6 != r7) goto L1f
            goto L50
        L1f:
            if (r6 != 0) goto L2b
            if (r5 == 0) goto L28
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L64
            goto L50
        L28:
            if (r1 <= 0) goto L64
            goto L50
        L2b:
            if (r6 != r3) goto L64
            if (r5 == 0) goto L32
            if (r1 <= 0) goto L64
            goto L50
        L32:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L64
            goto L50
        L37:
            int r1 = r9.getLeft()
            int r5 = r8.f16979a
            int r1 = r1 - r5
            int r5 = r9.getWidth()
            float r5 = (float) r5
            float r6 = r2.f12452n
            float r5 = r5 * r6
            int r5 = java.lang.Math.round(r5)
            int r1 = java.lang.Math.abs(r1)
            if (r1 < r5) goto L64
        L50:
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L5f
            int r10 = r9.getLeft()
            int r0 = r8.f16979a
            if (r10 >= r0) goto L5d
            goto L5f
        L5d:
            int r0 = r0 + r11
            goto L67
        L5f:
            int r10 = r8.f16979a
            int r0 = r10 - r11
            goto L67
        L64:
            int r0 = r8.f16979a
            r3 = r4
        L67:
            W.l r10 = r2.f12447b
            int r11 = r9.getTop()
            boolean r10 = r10.settleCapturedViewAt(r0, r11)
            if (r10 == 0) goto L7c
            j3.e r10 = new j3.e
            r10.<init>(r2, r9, r3)
            M.AbstractC0181p0.postOnAnimation(r9, r10)
            return
        L7c:
            if (r3 == 0) goto L87
            j3.d r10 = r2.f12448e
            if (r10 == 0) goto L87
            I3.n r10 = (I3.n) r10
            r10.onDismiss(r9)
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j3.C1050b.onViewReleased(android.view.View, float, float):void");
    }

    @Override // W.k
    public boolean tryCaptureView(View view, int i2) {
        int i7 = this.f16980b;
        return (i7 == -1 || i7 == i2) && this.f16981c.canSwipeDismissView(view);
    }
}
