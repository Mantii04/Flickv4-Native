package androidx.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import x1.I;
import x1.Z;

/* loaded from: classes.dex */
public abstract class g extends e {

    /* renamed from: L, reason: collision with root package name */
    public static final String[] f8244L = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: K, reason: collision with root package name */
    public int f8245K = 3;

    public static void m(I i2) {
        int visibility = i2.f20784b.getVisibility();
        HashMap hashMap = i2.f20783a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = i2.f20784b;
        hashMap.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static x1.Z n(x1.I r8, x1.I r9) {
        /*
            x1.Z r0 = new x1.Z
            r0.<init>()
            r1 = 0
            r0.f20801a = r1
            r0.f20802b = r1
            r2 = 0
            r3 = -1
            java.lang.String r4 = "android:visibility:parent"
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.f20783a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.f20803c = r7
            java.lang.Object r6 = r6.get(r4)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f20805e = r6
            goto L33
        L2f:
            r0.f20803c = r3
            r0.f20805e = r2
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.f20783a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r2 = r6.get(r5)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.f20804d = r2
            java.lang.Object r2 = r6.get(r4)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f20806f = r2
            goto L56
        L52:
            r0.f20804d = r3
            r0.f20806f = r2
        L56:
            r2 = 1
            if (r8 == 0) goto L8a
            if (r9 == 0) goto L8a
            int r8 = r0.f20803c
            int r9 = r0.f20804d
            if (r8 != r9) goto L68
            android.view.ViewGroup r3 = r0.f20805e
            android.view.ViewGroup r4 = r0.f20806f
            if (r3 != r4) goto L68
            goto L9f
        L68:
            if (r8 == r9) goto L78
            if (r8 != 0) goto L71
            r0.f20802b = r1
            r0.f20801a = r2
            return r0
        L71:
            if (r9 != 0) goto L9f
            r0.f20802b = r2
            r0.f20801a = r2
            return r0
        L78:
            android.view.ViewGroup r8 = r0.f20806f
            if (r8 != 0) goto L81
            r0.f20802b = r1
            r0.f20801a = r2
            return r0
        L81:
            android.view.ViewGroup r8 = r0.f20805e
            if (r8 != 0) goto L9f
            r0.f20802b = r2
            r0.f20801a = r2
            return r0
        L8a:
            if (r8 != 0) goto L95
            int r8 = r0.f20804d
            if (r8 != 0) goto L95
            r0.f20802b = r2
            r0.f20801a = r2
            return r0
        L95:
            if (r9 != 0) goto L9f
            int r8 = r0.f20803c
            if (r8 != 0) goto L9f
            r0.f20802b = r1
            r0.f20801a = r2
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.g.n(x1.I, x1.I):x1.Z");
    }

    @Override // androidx.transition.e
    public void captureEndValues(I i2) {
        m(i2);
    }

    @Override // androidx.transition.e
    public void captureStartValues(I i2) {
        m(i2);
    }

    @Override // androidx.transition.e
    public Animator createAnimator(ViewGroup viewGroup, I i2, I i7) {
        Z n7 = n(i2, i7);
        if (!n7.f20801a) {
            return null;
        }
        if (n7.f20805e == null && n7.f20806f == null) {
            return null;
        }
        return n7.f20802b ? onAppear(viewGroup, i2, n7.f20803c, i7, n7.f20804d) : onDisappear(viewGroup, i2, n7.f20803c, i7, n7.f20804d);
    }

    @Override // androidx.transition.e
    public String[] getTransitionProperties() {
        return f8244L;
    }

    @Override // androidx.transition.e
    public boolean isTransitionRequired(I i2, I i7) {
        if (i2 == null && i7 == null) {
            return false;
        }
        if (i2 != null && i7 != null && i7.f20783a.containsKey("android:visibility:visibility") != i2.f20783a.containsKey("android:visibility:visibility")) {
            return false;
        }
        Z n7 = n(i2, i7);
        if (n7.f20801a) {
            return n7.f20803c == 0 || n7.f20804d == 0;
        }
        return false;
    }

    public abstract Animator onAppear(ViewGroup viewGroup, View view, I i2, I i7);

    public Animator onAppear(ViewGroup viewGroup, I i2, int i7, I i8, int i9) {
        if ((this.f8245K & 1) != 1 || i8 == null) {
            return null;
        }
        View view = i8.f20784b;
        if (i2 == null) {
            View view2 = (View) view.getParent();
            if (n(g(view2, false), getTransitionValues(view2, false)).f20801a) {
                return null;
            }
        }
        return onAppear(viewGroup, view, i2, i8);
    }

    public abstract Animator onDisappear(ViewGroup viewGroup, View view, I i2, I i7);

    /* JADX WARN: Removed duplicated region for block: B:13:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator onDisappear(android.view.ViewGroup r22, x1.I r23, int r24, x1.I r25, int r26) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.g.onDisappear(android.view.ViewGroup, x1.I, int, x1.I, int):android.animation.Animator");
    }

    public void setMode(int i2) {
        if ((i2 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f8245K = i2;
    }
}
