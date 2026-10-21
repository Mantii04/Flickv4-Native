package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zai {

    /* renamed from: a, reason: collision with root package name */
    public final int f10803a;

    public zai(int i2) {
        this.f10803a = i2;
    }

    public static /* bridge */ /* synthetic */ Status a(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void zad(Status status);

    public abstract void zae(Exception exc);

    public abstract void zaf(zabq<?> zabqVar) throws DeadObjectException;

    public abstract void zag(zaad zaadVar, boolean z6);
}
