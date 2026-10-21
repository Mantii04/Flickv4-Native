package l3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f18132a;

    public c(BottomSheetBehavior bottomSheetBehavior) {
        this.f18132a = bottomSheetBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        BottomSheetBehavior bottomSheetBehavior = this.f18132a;
        bottomSheetBehavior.i(5);
        WeakReference weakReference = bottomSheetBehavior.f12488d0;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ((View) bottomSheetBehavior.f12488d0.get()).requestLayout();
    }
}
