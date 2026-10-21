package L2;

import N2.q;
import android.animation.Animator;
import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public abstract class a {
    public static boolean isRunning(q... qVarArr) {
        for (q qVar : qVarArr) {
            if (qVar.isRunning()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isStarted(ValueAnimator valueAnimator) {
        return valueAnimator != null && valueAnimator.isStarted();
    }

    public static void start(Animator animator) {
        if (animator == null || animator.isStarted()) {
            return;
        }
        animator.start();
    }

    public static void stop(q... qVarArr) {
        for (q qVar : qVarArr) {
            qVar.stop();
        }
    }

    public static boolean isRunning(ValueAnimator valueAnimator) {
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public static void start(q... qVarArr) {
        for (q qVar : qVarArr) {
            qVar.start();
        }
    }
}
