package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;

/* loaded from: classes2.dex */
final class zzhj implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final String f11690a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzhh f11691b;

    public zzhj(zzhh zzhhVar, String str) {
        this.f11691b = zzhhVar;
        Preconditions.checkNotNull(str);
        this.f11690a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f11691b.zzj().zzg().zza(this.f11690a, th);
    }
}
