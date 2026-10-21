package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;

/* loaded from: classes.dex */
public final class zag<ResultT> extends zac {

    /* renamed from: b, reason: collision with root package name */
    public final TaskApiCall f10799b;

    /* renamed from: c, reason: collision with root package name */
    public final TaskCompletionSource f10800c;

    /* renamed from: d, reason: collision with root package name */
    public final StatusExceptionMapper f10801d;

    public zag(int i2, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i2);
        this.f10800c = taskCompletionSource;
        this.f10799b = taskApiCall;
        this.f10801d = statusExceptionMapper;
        if (i2 == 2 && taskApiCall.shouldAutoResolveMissingFeatures()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zaa(zabq<?> zabqVar) {
        return this.f10799b.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zab(zabq<?> zabqVar) {
        return this.f10799b.zab();
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Status status) {
        this.f10800c.trySetException(this.f10801d.getException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(Exception exc) {
        this.f10800c.trySetException(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabq<?> zabqVar) throws DeadObjectException {
        TaskCompletionSource<ResultT> taskCompletionSource = this.f10800c;
        try {
            this.f10799b.doExecute(zabqVar.zaf(), taskCompletionSource);
        } catch (DeadObjectException e3) {
            throw e3;
        } catch (RemoteException e7) {
            zad(zai.a(e7));
        } catch (RuntimeException e8) {
            taskCompletionSource.trySetException(e8);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zag(zaad zaadVar, boolean z6) {
        Boolean valueOf = Boolean.valueOf(z6);
        Map map = zaadVar.f10680b;
        TaskCompletionSource taskCompletionSource = this.f10800c;
        map.put(taskCompletionSource, valueOf);
        taskCompletionSource.getTask().addOnCompleteListener(new zaac(zaadVar, taskCompletionSource));
    }
}
