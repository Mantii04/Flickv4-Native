package S;

import M.C0152b;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public final class o extends C0152b {
    @Override // M.C0152b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        N.r.setMaxScrollX(accessibilityEvent, nestedScrollView.getScrollX());
        N.r.setMaxScrollY(accessibilityEvent, nestedScrollView.getScrollRange());
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        int scrollRange;
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        nVar.setClassName(ScrollView.class.getName());
        if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
            return;
        }
        nVar.setScrollable(true);
        if (nestedScrollView.getScrollY() > 0) {
            nVar.addAction(N.h.f2125i);
            nVar.addAction(N.h.f2129m);
        }
        if (nestedScrollView.getScrollY() < scrollRange) {
            nVar.addAction(N.h.f2124h);
            nVar.addAction(N.h.f2131o);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        if (r6 != 16908346) goto L30;
     */
    @Override // M.C0152b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean performAccessibilityAction(android.view.View r5, int r6, android.os.Bundle r7) {
        /*
            r4 = this;
            boolean r7 = super.performAccessibilityAction(r5, r6, r7)
            r0 = 1
            if (r7 == 0) goto L8
            return r0
        L8:
            androidx.core.widget.NestedScrollView r5 = (androidx.core.widget.NestedScrollView) r5
            boolean r7 = r5.isEnabled()
            r1 = 0
            if (r7 != 0) goto L13
            goto L95
        L13:
            int r7 = r5.getHeight()
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            android.graphics.Matrix r3 = r5.getMatrix()
            boolean r3 = r3.isIdentity()
            if (r3 == 0) goto L30
            boolean r3 = r5.getGlobalVisibleRect(r2)
            if (r3 == 0) goto L30
            int r7 = r2.height()
        L30:
            r2 = 4096(0x1000, float:5.74E-42)
            if (r6 == r2) goto L6a
            r2 = 8192(0x2000, float:1.14794E-41)
            if (r6 == r2) goto L43
            r2 = 16908344(0x1020038, float:2.3877386E-38)
            if (r6 == r2) goto L43
            r2 = 16908346(0x102003a, float:2.3877392E-38)
            if (r6 == r2) goto L6a
            goto L95
        L43:
            int r6 = r5.getPaddingBottom()
            int r7 = r7 - r6
            int r6 = r5.getPaddingTop()
            int r7 = r7 - r6
            int r6 = r5.getScrollY()
            int r6 = r6 - r7
            int r6 = java.lang.Math.max(r6, r1)
            int r7 = r5.getScrollY()
            if (r6 == r7) goto L95
            int r7 = r5.getScrollX()
            int r1 = r1 - r7
            int r7 = r5.getScrollY()
            int r6 = r6 - r7
            r5.i(r1, r6, r0)
            return r0
        L6a:
            int r6 = r5.getPaddingBottom()
            int r7 = r7 - r6
            int r6 = r5.getPaddingTop()
            int r7 = r7 - r6
            int r6 = r5.getScrollY()
            int r6 = r6 + r7
            int r7 = r5.getScrollRange()
            int r6 = java.lang.Math.min(r6, r7)
            int r7 = r5.getScrollY()
            if (r6 == r7) goto L95
            int r7 = r5.getScrollX()
            int r1 = r1 - r7
            int r7 = r5.getScrollY()
            int r6 = r6 - r7
            r5.i(r1, r6, r0)
            return r0
        L95:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: S.o.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
    }
}
