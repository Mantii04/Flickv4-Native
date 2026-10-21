package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
abstract class zad<T> extends zac {

    /* renamed from: b, reason: collision with root package name */
    public final TaskCompletionSource f10787b;

    public zad(int i2, TaskCompletionSource<T> taskCompletionSource) {
        super(i2);
        this.f10787b = taskCompletionSource;
    }

    public abstract void zac(zabq<?> zabqVar) throws RemoteException;

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Status status) {
        this.f10787b.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(Exception exc) {
        this.f10787b.trySetException(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabq<?> zabqVar) throws DeadObjectException {
        try {
            zac(zabqVar);
        } catch (DeadObjectException e3) {
            zad(zai.a(e3));
            throw e3;
        } catch (RemoteException e7) {
            zad(zai.a(e7));
        } catch (RuntimeException e8) {
            this.f10787b.trySetException(e8);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public void zag(zaad zaadVar, boolean z6) {
    }
}
