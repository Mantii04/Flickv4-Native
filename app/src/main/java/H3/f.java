package H3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SideSheetBehavior f1209a;

    public f(SideSheetBehavior sideSheetBehavior) {
        this.f1209a = sideSheetBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        SideSheetBehavior sideSheetBehavior = this.f1209a;
        sideSheetBehavior.a(5);
        WeakReference weakReference = sideSheetBehavior.f12805y;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((View) sideSheetBehavior.f12805y.get()).requestLayout();
    }
}
