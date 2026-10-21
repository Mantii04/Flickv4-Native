package A3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes2.dex */
public final class b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DrawerLayout f24a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f25b;

    public b(DrawerLayout drawerLayout, View view) {
        this.f24a = drawerLayout;
        this.f25b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        View view = this.f25b;
        DrawerLayout drawerLayout = this.f24a;
        drawerLayout.closeDrawer(view, false);
        drawerLayout.setScrimColor(-1728053248);
    }
}
