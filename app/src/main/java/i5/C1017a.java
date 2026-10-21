package i5;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewGroup;
import io.github.giangpham96.expandable_textview.ExpandableTextView;
import kotlin.jvm.internal.j;

/* renamed from: i5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1017a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandableTextView f16750a;

    public C1017a(ExpandableTextView expandableTextView) {
        this.f16750a = expandableTextView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animation) {
        j.checkNotNullParameter(animation, "animation");
        super.onAnimationEnd(animation);
        ExpandableTextView expandableTextView = this.f16750a;
        expandableTextView.setText(expandableTextView.getCollapsed() ? expandableTextView.f16767z : expandableTextView.getOriginalText());
        ViewGroup.LayoutParams layoutParams = expandableTextView.getLayoutParams();
        expandableTextView.getLayoutParams().height = -2;
        expandableTextView.setLayoutParams(layoutParams);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animation) {
        j.checkNotNullParameter(animation, "animation");
        super.onAnimationStart(animation);
        ExpandableTextView expandableTextView = this.f16750a;
        expandableTextView.f16762u = !expandableTextView.getCollapsed();
        expandableTextView.setText(expandableTextView.getOriginalText());
    }
}
