package androidx.transition;

import a.AbstractC0373c;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import x1.AbstractC1813o;
import x1.C1800b;
import x1.C1801c;
import x1.C1802d;
import x1.C1803e;
import x1.C1804f;
import x1.C1805g;
import x1.C1806h;
import x1.C1807i;
import x1.I;
import x1.M;

/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: K, reason: collision with root package name */
    public static final String[] f8204K = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: L, reason: collision with root package name */
    public static final C1800b f8205L = new C1800b(PointF.class, "topLeft");

    /* renamed from: M, reason: collision with root package name */
    public static final C1801c f8206M = new C1801c(PointF.class, "bottomRight");

    /* renamed from: N, reason: collision with root package name */
    public static final C1802d f8207N = new C1802d(PointF.class, "bottomRight");

    /* renamed from: O, reason: collision with root package name */
    public static final C1803e f8208O = new C1803e(PointF.class, "topLeft");

    /* renamed from: P, reason: collision with root package name */
    public static final C1804f f8209P = new C1804f(PointF.class, "position");

    public static void m(I i2) {
        View view = i2.f20784b;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap hashMap = i2.f20783a;
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", i2.f20784b.getParent());
    }

    @Override // androidx.transition.e
    public void captureEndValues(I i2) {
        m(i2);
    }

    @Override // androidx.transition.e
    public void captureStartValues(I i2) {
        m(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.e
    public Animator createAnimator(ViewGroup viewGroup, I i2, I i7) {
        int i8;
        ObjectAnimator a7;
        if (i2 == null || i7 == null) {
            return null;
        }
        HashMap hashMap = i2.f20783a;
        HashMap hashMap2 = i7.f20783a;
        ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
        int i9 = rect.left;
        int i10 = rect2.left;
        int i11 = rect.top;
        int i12 = rect2.top;
        int i13 = rect.right;
        int i14 = rect2.right;
        int i15 = rect.bottom;
        int i16 = rect2.bottom;
        int i17 = i13 - i9;
        int i18 = i15 - i11;
        int i19 = i14 - i10;
        int i20 = i16 - i12;
        Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
        Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
        if ((i17 == 0 || i18 == 0) && (i19 == 0 || i20 == 0)) {
            i8 = 0;
        } else {
            i8 = (i9 == i10 && i11 == i12) ? 0 : 1;
            if (i13 != i14 || i15 != i16) {
                i8++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i8++;
        }
        if (i8 <= 0) {
            return null;
        }
        View view = i7.f20784b;
        M.a(view, i9, i11, i13, i15);
        if (i8 != 2) {
            a7 = (i9 == i10 && i11 == i12) ? AbstractC1813o.a(view, f8207N, getPathMotion().getPath(i13, i15, i14, i16)) : AbstractC1813o.a(view, f8208O, getPathMotion().getPath(i9, i11, i10, i12));
        } else if (i17 == i19 && i18 == i20) {
            a7 = AbstractC1813o.a(view, f8209P, getPathMotion().getPath(i9, i11, i10, i12));
        } else {
            C1807i c1807i = new C1807i(view);
            ObjectAnimator a8 = AbstractC1813o.a(c1807i, f8205L, getPathMotion().getPath(i9, i11, i10, i12));
            ObjectAnimator a9 = AbstractC1813o.a(c1807i, f8206M, getPathMotion().getPath(i13, i15, i14, i16));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(a8, a9);
            animatorSet.addListener(new C1805g(c1807i));
            a7 = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            AbstractC0373c.f(viewGroup4, true);
            getRootTransition().addListener(new C1806h(viewGroup4));
        }
        return a7;
    }

    @Override // androidx.transition.e
    public String[] getTransitionProperties() {
        return f8204K;
    }
}
