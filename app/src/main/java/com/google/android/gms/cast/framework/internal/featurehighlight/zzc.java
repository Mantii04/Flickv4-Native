package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.View;

/* loaded from: classes.dex */
final class zzc implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzh f9905a;

    public zzc(zzh zzhVar) {
        this.f9905a = zzhVar;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        zzh zzhVar = this.f9905a;
        zzhVar.zzk();
        zzhVar.removeOnLayoutChangeListener(this);
    }
}
