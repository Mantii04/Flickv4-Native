package o4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: o4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1465b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewOnClickListenerC1466c f19134a;

    public C1465b(ViewOnClickListenerC1466c viewOnClickListenerC1466c) {
        this.f19134a = viewOnClickListenerC1466c;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ViewOnClickListenerC1466c viewOnClickListenerC1466c = this.f19134a;
        viewOnClickListenerC1466c.f19136e.setVisibility(4);
        viewOnClickListenerC1466c.setItemCheckmarkAttributes(0.0f);
    }
}
