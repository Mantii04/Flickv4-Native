package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzla extends zzg {

    /* renamed from: c, reason: collision with root package name */
    public final zzlx f12000c;

    /* renamed from: d, reason: collision with root package name */
    public zzfq f12001d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Boolean f12002e;

    /* renamed from: f, reason: collision with root package name */
    public final zzld f12003f;

    /* renamed from: g, reason: collision with root package name */
    public final zzms f12004g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f12005h;

    /* renamed from: i, reason: collision with root package name */
    public final zzlm f12006i;

    public zzla(zzho zzhoVar) {
        super(zzhoVar);
        this.f12005h = new ArrayList();
        this.f12004g = new zzms(zzhoVar.zzb());
        this.f12000c = new zzlx(this);
        this.f12003f = new zzld(this, zzhoVar);
        this.f12006i = new zzlm(this, zzhoVar);
    }

    public final void a(zzfq zzfqVar, AbstractSafeParcelable abstractSafeParcelable, zzn zznVar) {
        int i2;
        zzt();
        zzu();
        int i7 = 100;
        int i8 = 0;
        while (i8 < 1001 && i7 == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> zza = zzh().zza(100);
            if (zza != null) {
                arrayList.addAll(zza);
                i2 = zza.size();
            } else {
                i2 = 0;
            }
            if (abstractSafeParcelable != null && i2 < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzbf) {
                    try {
                        zzfqVar.zza((zzbf) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e3) {
                        zzj().zzg().zza("Failed to send event to the service", e3);
                    }
                } else if (abstractSafeParcelable2 instanceof zzno) {
                    try {
                        zzfqVar.zza((zzno) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e7) {
                        zzj().zzg().zza("Failed to send user property to the service", e7);
                    }
                } else if (abstractSafeParcelable2 instanceof zzac) {
                    try {
                        zzfqVar.zza((zzac) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e8) {
                        zzj().zzg().zza("Failed to send conditional user property to the service", e8);
                    }
                } else {
                    zzj().zzg().zza("Discarding data. Unrecognized parcel type.");
                }
            }
            i8++;
            i7 = i2;
        }
    }

    public final void b(Runnable runnable) {
        zzt();
        if (zzah()) {
            runnable.run();
            return;
        }
        ArrayList arrayList = this.f12005h;
        if (arrayList.size() >= 1000) {
            zzj().zzg().zza("Discarding data. Max runnable queue size reached");
            return;
        }
        arrayList.add(runnable);
        this.f12006i.zza(60000L);
        zzad();
    }

    public final boolean c() {
        zzt();
        zzu();
        return !d() || zzq().zzg() >= ((Integer) zzbh.f11343n0.zza(null)).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzla.d():boolean");
    }

    public final void e() {
        zzt();
        zzgd zzp = zzj().zzp();
        ArrayList arrayList = this.f12005h;
        zzp.zza("Processing queued up service tasks", Integer.valueOf(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((Runnable) it.next()).run();
            } catch (RuntimeException e3) {
                zzj().zzg().zza("Task exception while flushing queue", e3);
            }
        }
        arrayList.clear();
        this.f12006i.a();
    }

    public final void f() {
        zzt();
        this.f12004g.zzb();
        this.f12003f.zza(((Long) zzbh.f11282K.zza(null)).longValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02a3  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzn g(boolean r48) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzla.g(boolean):com.google.android.gms.measurement.internal.zzn");
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final zzal zzaa() {
        zzt();
        zzu();
        zzfq zzfqVar = this.f12001d;
        if (zzfqVar == null) {
            zzad();
            zzj().zzc().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzn g7 = g(false);
        Preconditions.checkNotNull(g7);
        try {
            zzal zza = zzfqVar.zza(g7);
            f();
            return zza;
        } catch (RemoteException e3) {
            zzj().zzg().zza("Failed to get consents; remote exception", e3);
            return null;
        }
    }

    public final void zzac() {
        zzt();
        zzu();
        zzn g7 = g(true);
        zzh().zzab();
        b(new zzll(this, g7));
    }

    public final void zzad() {
        zzt();
        zzu();
        if (zzah()) {
            return;
        }
        boolean d7 = d();
        zzlx zzlxVar = this.f12000c;
        if (d7) {
            zzlxVar.zza();
            return;
        }
        if (zze().zzx()) {
            return;
        }
        List<ResolveInfo> queryIntentServices = zza().getPackageManager().queryIntentServices(new Intent().setClassName(zza(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            zzj().zzg().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        Intent intent = new Intent("com.google.android.gms.measurement.START");
        intent.setComponent(new ComponentName(zza(), "com.google.android.gms.measurement.AppMeasurementService"));
        zzlxVar.zza(intent);
    }

    public final void zzae() {
        zzt();
        zzu();
        zzlx zzlxVar = this.f12000c;
        zzlxVar.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(zza(), zzlxVar);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f12001d = null;
    }

    public final void zzaf() {
        zzt();
        zzu();
        zzn g7 = g(false);
        zzh().zzaa();
        b(new zzlg(this, g7));
    }

    public final void zzag() {
        zzt();
        zzu();
        b(new zzlo(this, g(true)));
    }

    public final boolean zzah() {
        zzt();
        zzu();
        return this.f12001d != null;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzfv zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zzfu zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzd
    public final /* bridge */ /* synthetic */ zziy zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzd, com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zzz() {
        return false;
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar) {
        zzt();
        zzu();
        b(new zzli(this, g(false), zzdiVar));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzt();
        zzu();
        b(new zzlj(this, atomicReference, g(false)));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, String str, String str2) {
        zzt();
        zzu();
        b(new zzlv(this, str, str2, g(false), zzdiVar));
    }

    public final void zza(AtomicReference<List<zzac>> atomicReference, String str, String str2, String str3) {
        zzt();
        zzu();
        b(new zzls(this, atomicReference, str, str2, str3, g(false)));
    }

    public final void zza(AtomicReference<List<zzmv>> atomicReference, Bundle bundle) {
        zzt();
        zzu();
        b(new zzle(this, atomicReference, g(false), bundle));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, String str, String str2, boolean z6) {
        zzt();
        zzu();
        b(new zzlc(this, str, str2, g(false), z6, zzdiVar));
    }

    public final void zza(AtomicReference<List<zzno>> atomicReference, String str, String str2, String str3, boolean z6) {
        zzt();
        zzu();
        b(new zzlu(this, atomicReference, str, str2, str3, g(false), z6));
    }

    public final void zza(zzbf zzbfVar, String str) {
        Preconditions.checkNotNull(zzbfVar);
        zzt();
        zzu();
        b(new zzlq(this, g(true), zzh().zza(zzbfVar), zzbfVar, str));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, zzbf zzbfVar, String str) {
        zzt();
        zzu();
        if (zzq().zza(12451000) != 0) {
            zzj().zzu().zza("Not bundling data. Service unavailable or out of date");
            zzq().zza(zzdiVar, new byte[0]);
        } else {
            b(new zzlp(this, zzbfVar, str, zzdiVar));
        }
    }

    public final void zza(zzac zzacVar) {
        Preconditions.checkNotNull(zzacVar);
        zzt();
        zzu();
        b(new zzlt(this, g(true), zzh().zza(zzacVar), new zzac(zzacVar), zzacVar));
    }

    public final void zza(boolean z6) {
        zzt();
        zzu();
        if (z6) {
            zzh().zzaa();
        }
        if (c()) {
            b(new zzlr(this, g(false)));
        }
    }

    public final void zza(zzks zzksVar) {
        zzt();
        zzu();
        b(new zzlk(this, zzksVar));
    }

    public final void zza(Bundle bundle) {
        zzt();
        zzu();
        b(new zzln(this, g(false), bundle));
    }

    public final void zza(zzfq zzfqVar) {
        zzt();
        Preconditions.checkNotNull(zzfqVar);
        this.f12001d = zzfqVar;
        f();
        e();
    }

    public final void zza(zzno zznoVar) {
        zzt();
        zzu();
        b(new zzlh(this, g(true), zzh().zza(zznoVar), zznoVar));
    }
}
