package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes2.dex */
final class zzhm<V> extends FutureTask<V> implements Comparable<zzhm<V>> {

    /* renamed from: b, reason: collision with root package name */
    public final long f11696b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11697e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11698f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ zzhh f11699j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhm(zzhh zzhhVar, Runnable runnable, boolean z6, String str) {
        super(com.google.android.gms.internal.measurement.zzcy.zza().zza(runnable), null);
        this.f11699j = zzhhVar;
        Preconditions.checkNotNull(str);
        long andIncrement = zzhh.f11679k.getAndIncrement();
        this.f11696b = andIncrement;
        this.f11698f = str;
        this.f11697e = z6;
        if (andIncrement == Long.MAX_VALUE) {
            zzhhVar.zzj().zzg().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        zzhm zzhmVar = (zzhm) obj;
        boolean z6 = zzhmVar.f11697e;
        boolean z7 = this.f11697e;
        if (z7 != z6) {
            return z7 ? -1 : 1;
        }
        long j7 = zzhmVar.f11696b;
        long j8 = this.f11696b;
        if (j8 < j7) {
            return -1;
        }
        if (j8 > j7) {
            return 1;
        }
        this.f11699j.zzj().zzm().zza("Two tasks share the same index. index", Long.valueOf(j8));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.f11699j.zzj().zzg().zza(this.f11698f, th);
        if ((th instanceof zzhk) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhm(zzhh zzhhVar, Callable callable, boolean z6) {
        super(com.google.android.gms.internal.measurement.zzcy.zza().zza(callable));
        this.f11699j = zzhhVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        long andIncrement = zzhh.f11679k.getAndIncrement();
        this.f11696b = andIncrement;
        this.f11698f = "Task exception on worker thread";
        this.f11697e = z6;
        if (andIncrement == Long.MAX_VALUE) {
            zzhhVar.zzj().zzg().zza("Tasks index overflow");
        }
    }
}
