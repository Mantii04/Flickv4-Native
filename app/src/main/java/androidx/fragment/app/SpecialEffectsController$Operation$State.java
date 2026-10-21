package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class SpecialEffectsController$Operation$State {

    /* renamed from: b, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$State f6160b;

    /* renamed from: e, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$State f6161e;

    /* renamed from: f, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$State f6162f;

    /* renamed from: j, reason: collision with root package name */
    public static final SpecialEffectsController$Operation$State f6163j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ SpecialEffectsController$Operation$State[] f6164m;

    static {
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = new SpecialEffectsController$Operation$State("REMOVED", 0);
        f6160b = specialEffectsController$Operation$State;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = new SpecialEffectsController$Operation$State("VISIBLE", 1);
        f6161e = specialEffectsController$Operation$State2;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State3 = new SpecialEffectsController$Operation$State("GONE", 2);
        f6162f = specialEffectsController$Operation$State3;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State4 = new SpecialEffectsController$Operation$State("INVISIBLE", 3);
        f6163j = specialEffectsController$Operation$State4;
        f6164m = new SpecialEffectsController$Operation$State[]{specialEffectsController$Operation$State, specialEffectsController$Operation$State2, specialEffectsController$Operation$State3, specialEffectsController$Operation$State4};
    }

    public static SpecialEffectsController$Operation$State d(int i2) {
        if (i2 == 0) {
            return f6161e;
        }
        if (i2 == 4) {
            return f6163j;
        }
        if (i2 == 8) {
            return f6162f;
        }
        throw new IllegalArgumentException(A.i.f(i2, "Unknown visibility "));
    }

    public static SpecialEffectsController$Operation$State e(View view) {
        return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? f6163j : d(view.getVisibility());
    }

    public static SpecialEffectsController$Operation$State valueOf(String str) {
        return (SpecialEffectsController$Operation$State) Enum.valueOf(SpecialEffectsController$Operation$State.class, str);
    }

    public static SpecialEffectsController$Operation$State[] values() {
        return (SpecialEffectsController$Operation$State[]) f6164m.clone();
    }

    public final void b(View view) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (AbstractC0467i0.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (ordinal == 1) {
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (ordinal == 2) {
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (ordinal != 3) {
            return;
        }
        if (AbstractC0467i0.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }
}
