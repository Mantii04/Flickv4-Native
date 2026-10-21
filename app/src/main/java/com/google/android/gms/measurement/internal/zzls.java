package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzls implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f12051b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f12052e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f12053f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f12054j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zzn f12055m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ zzla f12056n;

    public zzls(zzla zzlaVar, AtomicReference atomicReference, String str, String str2, String str3, zzn zznVar) {
        this.f12051b = atomicReference;
        this.f12052e = str;
        this.f12053f = str2;
        this.f12054j = str3;
        this.f12055m = zznVar;
        this.f12056n = zzlaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzla zzlaVar;
        zzfq zzfqVar;
        synchronized (this.f12051b) {
            try {
                zzlaVar = this.f12056n;
                zzfqVar = zzlaVar.f12001d;
            } catch (RemoteException e3) {
                this.f12056n.zzj().zzg().zza("(legacy) Failed to get conditional properties; remote exception", zzgb.zza(this.f12052e), this.f12053f, e3);
                this.f12051b.set(Collections.EMPTY_LIST);
            } finally {
                this.f12051b.notify();
            }
            if (zzfqVar == null) {
                zzlaVar.zzj().zzg().zza("(legacy) Failed to get conditional properties; not connected to service", zzgb.zza(this.f12052e), this.f12053f, this.f12054j);
                this.f12051b.set(Collections.EMPTY_LIST);
                return;
            }
            if (TextUtils.isEmpty(this.f12052e)) {
                Preconditions.checkNotNull(this.f12055m);
                this.f12051b.set(zzfqVar.zza(this.f12053f, this.f12054j, this.f12055m));
            } else {
                this.f12051b.set(zzfqVar.zza(this.f12052e, this.f12053f, this.f12054j));
            }
            this.f12056n.f();
        }
    }
}
