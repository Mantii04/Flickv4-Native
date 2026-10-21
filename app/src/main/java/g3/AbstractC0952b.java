package g3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.List;

/* renamed from: g3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0952b {
    public static void playTogether(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        long j7 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Animator animator = list.get(i2);
            j7 = Math.max(j7, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration(j7);
        list.add(0, ofInt);
        animatorSet.playTogether(list);
    }
}
