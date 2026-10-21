package com.google.android.gms.flags;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public final class Singletons {
    static {
        new Singletons();
        synchronized (Singletons.class) {
        }
    }

    private Singletons() {
        new FlagRegistry();
        new zzb();
    }
}
