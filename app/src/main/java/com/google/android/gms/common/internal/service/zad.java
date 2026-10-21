package com.google.android.gms.common.internal.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes.dex */
final class zad extends zaa {

    /* renamed from: a, reason: collision with root package name */
    public final BaseImplementation.ResultHolder f10907a;

    public zad(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.f10907a = resultHolder;
    }

    @Override // com.google.android.gms.common.internal.service.zaa, com.google.android.gms.common.internal.service.zak
    public final void zab(int i2) throws RemoteException {
        this.f10907a.setResult(new Status(i2));
    }
}
