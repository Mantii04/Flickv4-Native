package g3;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import p.q;

/* renamed from: g3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0953c {

    /* renamed from: a, reason: collision with root package name */
    public final q f16465a = new q();

    /* renamed from: b, reason: collision with root package name */
    public final q f16466b = new q();

    public static C0953c a(ArrayList arrayList) {
        C0953c c0953c = new C0953c();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Animator animator = (Animator) arrayList.get(i2);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            c0953c.setPropertyValues(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = AbstractC0951a.f16461b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = AbstractC0951a.f16462c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = AbstractC0951a.f16463d;
            }
            C0954d c0954d = new C0954d(startDelay, duration, interpolator);
            c0954d.f16470d = objectAnimator.getRepeatCount();
            c0954d.f16471e = objectAnimator.getRepeatMode();
            c0953c.setTiming(propertyName, c0954d);
        }
        return c0953c;
    }

    public static C0953c createFromAttribute(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        if (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return createFromResource(context, resourceId);
    }

    public static C0953c createFromResource(Context context, int i2) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
            if (loadAnimator instanceof AnimatorSet) {
                return a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return a(arrayList);
        } catch (Exception e3) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i2), e3);
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0953c) {
            return this.f16465a.equals(((C0953c) obj).f16465a);
        }
        return false;
    }

    public int hashCode() {
        return this.f16465a.hashCode();
    }

    public void setPropertyValues(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f16466b.put(str, propertyValuesHolderArr);
    }

    public void setTiming(String str, C0954d c0954d) {
        this.f16465a.put(str, c0954d);
    }

    public String toString() {
        return StringUtils.LF + C0953c.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f16465a + "}\n";
    }
}
