package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzz implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzw f12353b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Callable f12354e;

    public zzz(zzw zzwVar, Callable callable) {
        this.f12353b = zzwVar;
        this.f12354e = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw zzwVar = this.f12353b;
        try {
            zzwVar.zzb(this.f12354e.call());
        } catch (Exception e3) {
            zzwVar.zza(e3);
        } catch (Throwable th) {
            zzwVar.zza(new RuntimeException(th));
        }
    }
}
