package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class zzal extends com.google.android.gms.internal.cast.zzb implements zzam {
    public static zzam zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
        return queryLocalInterface instanceof zzam ? (zzam) queryLocalInterface : new zzak(iBinder, "com.google.android.gms.cast.framework.ICastSession");
    }
}
