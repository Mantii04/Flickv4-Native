package o4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: o4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1464a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewOnClickListenerC1466c f19133a;

    public C1464a(ViewOnClickListenerC1466c viewOnClickListenerC1466c) {
        this.f19133a = viewOnClickListenerC1466c;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f19133a.setItemCheckmarkAttributes(1.0f);
    }
}
