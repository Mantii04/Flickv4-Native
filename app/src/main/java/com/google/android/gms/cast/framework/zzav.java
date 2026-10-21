package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class zzav extends com.google.android.gms.internal.cast.zzb implements zzaw {
    public static zzaw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
        return queryLocalInterface instanceof zzaw ? (zzaw) queryLocalInterface : new zzau(iBinder, "com.google.android.gms.cast.framework.ISession");
    }
}
