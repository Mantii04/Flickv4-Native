package com.google.android.gms.common.util.concurrent;

import android.os.Process;

/* loaded from: classes.dex */
final class zza implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f11053b;

    public zza(Runnable runnable, int i2) {
        this.f11053b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f11053b.run();
    }
}
