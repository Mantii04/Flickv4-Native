package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zap implements PendingResult.StatusListener {
    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        if (status.isSuccess()) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            throw null;
        }
        ApiExceptionUtil.fromStatus(status);
        throw null;
    }
}
