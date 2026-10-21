package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

@KeepForSdk
/* loaded from: classes.dex */
public class NamedThreadFactory implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final String f11048b;

    /* renamed from: e, reason: collision with root package name */
    public final ThreadFactory f11049e = Executors.defaultThreadFactory();

    @KeepForSdk
    public NamedThreadFactory(String str) {
        Preconditions.checkNotNull(str, "Name must not be null");
        this.f11048b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f11049e.newThread(new zza(runnable, 0));
        newThread.setName(this.f11048b);
        return newThread;
    }
}
