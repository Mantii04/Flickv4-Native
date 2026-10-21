package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class PendingResult<R extends Result> {

    @KeepForSdk
    public interface StatusListener {
        @KeepForSdk
        void onComplete(Status status);
    }

    public abstract void cancel();

    public abstract void setResultCallback(ResultCallback<? super R> resultCallback);
}
