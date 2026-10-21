package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
final class zzf extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f9909a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzh f9910b;

    public zzf(zzh zzhVar, Runnable runnable) {
        this.f9910b = zzhVar;
        this.f9909a = runnable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zzh zzhVar = this.f9910b;
        zzhVar.setVisibility(8);
        zzhVar.f9918p = null;
        this.f9909a.run();
    }
}
