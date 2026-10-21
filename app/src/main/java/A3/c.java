package A3;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f26a = Color.alpha(-1728053248);

    public static Animator.AnimatorListener getScrimCloseAnimatorListener(DrawerLayout drawerLayout, View view) {
        return new b(drawerLayout, view);
    }

    public static ValueAnimator.AnimatorUpdateListener getScrimCloseAnimatorUpdateListener(DrawerLayout drawerLayout) {
        return new a(drawerLayout, 0);
    }
}
