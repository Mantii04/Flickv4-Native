package h3;

import M.AbstractC0181p0;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;

/* loaded from: classes2.dex */
public final class m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final CoordinatorLayout f16538b;

    /* renamed from: e, reason: collision with root package name */
    public final View f16539e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ n f16540f;

    public m(n nVar, CoordinatorLayout coordinatorLayout, View view) {
        this.f16540f = nVar;
        this.f16538b = coordinatorLayout;
        this.f16539e = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        n nVar;
        OverScroller overScroller;
        View view = this.f16539e;
        if (view == null || (overScroller = (nVar = this.f16540f).f16542j) == null) {
            return;
        }
        boolean computeScrollOffset = overScroller.computeScrollOffset();
        CoordinatorLayout coordinatorLayout = this.f16538b;
        if (computeScrollOffset) {
            nVar.c(coordinatorLayout, view, nVar.f16542j.getCurrY());
            AbstractC0181p0.postOnAnimation(view, this);
            return;
        }
        AppBarLayout appBarLayout = (AppBarLayout) view;
        ((AppBarLayout.BaseBehavior) nVar).h(coordinatorLayout, appBarLayout);
        if (appBarLayout.isLiftOnScroll()) {
            appBarLayout.c(appBarLayout.d(AppBarLayout.BaseBehavior.f(coordinatorLayout)));
        }
    }
}
