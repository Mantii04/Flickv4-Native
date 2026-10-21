package l3;

import com.google.android.material.bottomsheet.BottomSheetBehavior;
import x3.Q;

/* loaded from: classes2.dex */
public final class e implements Q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f18134a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f18135b;

    public e(BottomSheetBehavior bottomSheetBehavior, boolean z6) {
        this.f18135b = bottomSheetBehavior;
        this.f18134a = z6;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public M.h1 onApplyWindowInsets(android.view.View r12, M.h1 r13, x3.S r14) {
        /*
            r11 = this;
            int r0 = M.f1.systemBars()
            D.c r0 = r13.getInsets(r0)
            int r1 = M.f1.mandatorySystemGestures()
            D.c r1 = r13.getInsets(r1)
            int r2 = r0.f809b
            com.google.android.material.bottomsheet.BottomSheetBehavior r3 = r11.f18135b
            r3.f12463F = r2
            boolean r2 = x3.T.isLayoutRtl(r12)
            int r4 = r12.getPaddingBottom()
            int r5 = r12.getPaddingLeft()
            int r6 = r12.getPaddingRight()
            boolean r7 = r3.f12512x
            if (r7 == 0) goto L35
            int r4 = r13.getSystemWindowInsetBottom()
            r3.f12462E = r4
            int r4 = r14.f20894c
            int r7 = r3.f12462E
            int r4 = r4 + r7
        L35:
            boolean r7 = r3.f12513y
            int r8 = r0.f808a
            if (r7 == 0) goto L43
            if (r2 == 0) goto L40
            int r5 = r14.f20893b
            goto L42
        L40:
            int r5 = r14.f20892a
        L42:
            int r5 = r5 + r8
        L43:
            boolean r7 = r3.f12514z
            int r9 = r0.f810c
            if (r7 == 0) goto L52
            if (r2 == 0) goto L4e
            int r14 = r14.f20892a
            goto L50
        L4e:
            int r14 = r14.f20893b
        L50:
            int r6 = r14 + r9
        L52:
            android.view.ViewGroup$LayoutParams r14 = r12.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r14 = (android.view.ViewGroup.MarginLayoutParams) r14
            boolean r2 = r3.f12459B
            r7 = 0
            r10 = 1
            if (r2 == 0) goto L66
            int r2 = r14.leftMargin
            if (r2 == r8) goto L66
            r14.leftMargin = r8
            r2 = r10
            goto L67
        L66:
            r2 = r7
        L67:
            boolean r8 = r3.f12460C
            if (r8 == 0) goto L72
            int r8 = r14.rightMargin
            if (r8 == r9) goto L72
            r14.rightMargin = r9
            r2 = r10
        L72:
            boolean r8 = r3.f12461D
            if (r8 == 0) goto L7f
            int r8 = r14.topMargin
            int r0 = r0.f809b
            if (r8 == r0) goto L7f
            r14.topMargin = r0
            goto L80
        L7f:
            r10 = r2
        L80:
            if (r10 == 0) goto L85
            r12.setLayoutParams(r14)
        L85:
            int r14 = r12.getPaddingTop()
            r12.setPadding(r5, r14, r6, r4)
            boolean r12 = r11.f18134a
            if (r12 == 0) goto L94
            int r14 = r1.f811d
            r3.f12510v = r14
        L94:
            boolean r14 = r3.f12512x
            if (r14 != 0) goto L9c
            if (r12 == 0) goto L9b
            goto L9c
        L9b:
            return r13
        L9c:
            r3.o(r7)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: l3.e.onApplyWindowInsets(android.view.View, M.h1, x3.S):M.h1");
    }
}
