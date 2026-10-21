package g0;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0467i0;
import androidx.fragment.app.C;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode$Flag;
import androidx.fragment.app.strictmode.FragmentTagUsageViolation;
import androidx.fragment.app.strictmode.GetRetainInstanceUsageViolation;
import androidx.fragment.app.strictmode.GetTargetFragmentRequestCodeUsageViolation;
import androidx.fragment.app.strictmode.GetTargetFragmentUsageViolation;
import androidx.fragment.app.strictmode.SetRetainInstanceUsageViolation;
import androidx.fragment.app.strictmode.SetUserVisibleHintViolation;
import androidx.fragment.app.strictmode.Violation;
import androidx.fragment.app.strictmode.WrongFragmentContainerViolation;
import java.util.Set;
import kotlin.jvm.internal.j;
import v5.u;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final C0940c f16394a = C0940c.f16391c;

    public static C0940c a(C c7) {
        while (c7 != null) {
            if (c7.isAdded()) {
                AbstractC0467i0 parentFragmentManager = c7.getParentFragmentManager();
                j.checkNotNullExpressionValue(parentFragmentManager, "declaringFragment.parentFragmentManager");
                if (parentFragmentManager.getStrictModePolicy() != null) {
                    C0940c strictModePolicy = parentFragmentManager.getStrictModePolicy();
                    j.checkNotNull(strictModePolicy);
                    return strictModePolicy;
                }
            }
            c7 = c7.getParentFragment();
        }
        return f16394a;
    }

    public static void b(C0940c c0940c, Violation violation) {
        C fragment = violation.getFragment();
        String name = fragment.getClass().getName();
        if (c0940c.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6307b)) {
            Log.d("FragmentStrictMode", "Policy violation in ".concat(name), violation);
        }
        c0940c.getListener$fragment_release();
        if (c0940c.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6308e)) {
            flix.com.vision.activities.leanback.fragment.a aVar = new flix.com.vision.activities.leanback.fragment.a(12, name, violation);
            if (!fragment.isAdded()) {
                aVar.run();
                throw null;
            }
            Handler handler = fragment.getParentFragmentManager().getHost().getHandler();
            j.checkNotNullExpressionValue(handler, "fragment.parentFragmentManager.host.handler");
            if (j.areEqual(handler.getLooper(), Looper.myLooper())) {
                aVar.run();
                throw null;
            }
            handler.post(aVar);
        }
    }

    public static void c(Violation violation) {
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(violation.getFragment().getClass().getName()), violation);
        }
    }

    public static boolean d(C0940c c0940c, Class cls, Class cls2) {
        Set<Class<? extends Violation>> set = c0940c.getMAllowedViolations$fragment_release().get(cls.getName());
        if (set == null) {
            return true;
        }
        if (j.areEqual(cls2.getSuperclass(), Violation.class) || !u.contains(set, cls2.getSuperclass())) {
            return !set.contains(cls2);
        }
        return false;
    }

    public static final void onFragmentReuse(C fragment, String previousFragmentId) {
        j.checkNotNullParameter(fragment, "fragment");
        j.checkNotNullParameter(previousFragmentId, "previousFragmentId");
        FragmentReuseViolation fragmentReuseViolation = new FragmentReuseViolation(fragment, previousFragmentId);
        c(fragmentReuseViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6309f) && d(a7, fragment.getClass(), FragmentReuseViolation.class)) {
            b(a7, fragmentReuseViolation);
        }
    }

    public static final void onFragmentTagUsage(C fragment, ViewGroup viewGroup) {
        j.checkNotNullParameter(fragment, "fragment");
        FragmentTagUsageViolation fragmentTagUsageViolation = new FragmentTagUsageViolation(fragment, viewGroup);
        c(fragmentTagUsageViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6310j) && d(a7, fragment.getClass(), FragmentTagUsageViolation.class)) {
            b(a7, fragmentTagUsageViolation);
        }
    }

    public static final void onGetRetainInstanceUsage(C fragment) {
        j.checkNotNullParameter(fragment, "fragment");
        GetRetainInstanceUsageViolation getRetainInstanceUsageViolation = new GetRetainInstanceUsageViolation(fragment);
        c(getRetainInstanceUsageViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6311m) && d(a7, fragment.getClass(), GetRetainInstanceUsageViolation.class)) {
            b(a7, getRetainInstanceUsageViolation);
        }
    }

    public static final void onGetTargetFragmentRequestCodeUsage(C fragment) {
        j.checkNotNullParameter(fragment, "fragment");
        GetTargetFragmentRequestCodeUsageViolation getTargetFragmentRequestCodeUsageViolation = new GetTargetFragmentRequestCodeUsageViolation(fragment);
        c(getTargetFragmentRequestCodeUsageViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6313p) && d(a7, fragment.getClass(), GetTargetFragmentRequestCodeUsageViolation.class)) {
            b(a7, getTargetFragmentRequestCodeUsageViolation);
        }
    }

    public static final void onGetTargetFragmentUsage(C fragment) {
        j.checkNotNullParameter(fragment, "fragment");
        GetTargetFragmentUsageViolation getTargetFragmentUsageViolation = new GetTargetFragmentUsageViolation(fragment);
        c(getTargetFragmentUsageViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6313p) && d(a7, fragment.getClass(), GetTargetFragmentUsageViolation.class)) {
            b(a7, getTargetFragmentUsageViolation);
        }
    }

    public static final void onSetRetainInstanceUsage(C fragment) {
        j.checkNotNullParameter(fragment, "fragment");
        SetRetainInstanceUsageViolation setRetainInstanceUsageViolation = new SetRetainInstanceUsageViolation(fragment);
        c(setRetainInstanceUsageViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6311m) && d(a7, fragment.getClass(), SetRetainInstanceUsageViolation.class)) {
            b(a7, setRetainInstanceUsageViolation);
        }
    }

    public static final void onSetUserVisibleHint(C fragment, boolean z6) {
        j.checkNotNullParameter(fragment, "fragment");
        SetUserVisibleHintViolation setUserVisibleHintViolation = new SetUserVisibleHintViolation(fragment, z6);
        c(setUserVisibleHintViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6312n) && d(a7, fragment.getClass(), SetUserVisibleHintViolation.class)) {
            b(a7, setUserVisibleHintViolation);
        }
    }

    public static final void onWrongFragmentContainer(C fragment, ViewGroup container) {
        j.checkNotNullParameter(fragment, "fragment");
        j.checkNotNullParameter(container, "container");
        WrongFragmentContainerViolation wrongFragmentContainerViolation = new WrongFragmentContainerViolation(fragment, container);
        c(wrongFragmentContainerViolation);
        C0940c a7 = a(fragment);
        if (a7.getFlags$fragment_release().contains(FragmentStrictMode$Flag.f6314q) && d(a7, fragment.getClass(), WrongFragmentContainerViolation.class)) {
            b(a7, wrongFragmentContainerViolation);
        }
    }
}
