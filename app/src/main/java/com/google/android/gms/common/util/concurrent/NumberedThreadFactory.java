package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@KeepForSdk
/* loaded from: classes.dex */
public class NumberedThreadFactory implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final String f11050b;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f11051e = new AtomicInteger();

    /* renamed from: f, reason: collision with root package name */
    public final ThreadFactory f11052f = Executors.defaultThreadFactory();

    @KeepForSdk
    public NumberedThreadFactory(String str) {
        Preconditions.checkNotNull(str, "Name must not be null");
        this.f11050b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f11052f.newThread(new zza(runnable, 0));
        newThread.setName(this.f11050b + "[" + this.f11051e.getAndIncrement() + "]");
        return newThread;
    }
}
