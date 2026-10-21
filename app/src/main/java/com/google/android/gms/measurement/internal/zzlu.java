package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzlu implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f12061b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f12062e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f12063f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f12064j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zzn f12065m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ boolean f12066n;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ zzla f12067p;

    public zzlu(zzla zzlaVar, AtomicReference atomicReference, String str, String str2, String str3, zzn zznVar, boolean z6) {
        this.f12061b = atomicReference;
        this.f12062e = str;
        this.f12063f = str2;
        this.f12064j = str3;
        this.f12065m = zznVar;
        this.f12066n = z6;
        this.f12067p = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar;
        zzfq zzfqVar;
        synchronized (this.f12061b) {
            try {
                zzlaVar = this.f12067p;
                zzfqVar = zzlaVar.f12001d;
            } catch (RemoteException e3) {
                this.f12067p.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzgb.zza(this.f12062e), this.f12063f, e3);
                this.f12061b.set(Collections.EMPTY_LIST);
            } finally {
                this.f12061b.notify();
            }
            if (zzfqVar == null) {
                zzlaVar.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzgb.zza(this.f12062e), this.f12063f, this.f12064j);
                this.f12061b.set(Collections.EMPTY_LIST);
                return;
            }
            if (TextUtils.isEmpty(this.f12062e)) {
                Preconditions.checkNotNull(this.f12065m);
                this.f12061b.set(zzfqVar.zza(this.f12063f, this.f12064j, this.f12066n, this.f12065m));
            } else {
                this.f12061b.set(zzfqVar.zza(this.f12062e, this.f12063f, this.f12064j, this.f12066n));
            }
            this.f12067p.f();
        }
    }
}
