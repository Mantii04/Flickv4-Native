package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final /* synthetic */ class zzbi implements RemoteCall {
    static {
        new zzbi();
    }

    private /* synthetic */ zzbi() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        Logger logger = zzbt.f10508F;
        ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzl();
        ((TaskCompletionSource) obj2).setResult(null);
    }
}
