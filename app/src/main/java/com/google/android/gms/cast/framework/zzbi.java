package com.google.android.gms.cast.framework;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzbi extends zzbd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Session f10318a;

    public /* synthetic */ zzbi(Session session) {
        this.f10318a = session;
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final long zzb() {
        return this.f10318a.getSessionRemainingTimeMs();
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final IObjectWrapper zzc() {
        return ObjectWrapper.wrap(this.f10318a);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzd(boolean z6) {
        this.f10318a.end(z6);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zze(Bundle bundle) {
        this.f10318a.onResuming(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzf(Bundle bundle) {
        this.f10318a.onStarting(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzg(Bundle bundle) {
        this.f10318a.resume(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzh(Bundle bundle) {
        this.f10318a.start(bundle);
    }

    @Override // com.google.android.gms.cast.framework.zzbe
    public final void zzi(Bundle bundle) {
        this.f10318a.zzk(bundle);
    }
}
