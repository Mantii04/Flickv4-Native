package com.google.android.gms.cast.framework;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class zzi implements Callable {
    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (CastContext.f9816n) {
            if (CastContext.f9817o == null) {
                throw null;
            }
        }
        return CastContext.f9817o;
    }
}
