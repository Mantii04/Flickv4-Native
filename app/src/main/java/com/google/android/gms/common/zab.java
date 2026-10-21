package com.google.android.gms.common;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* loaded from: classes.dex */
public final /* synthetic */ class zab implements SuccessContinuation {
    static {
        new zab();
    }

    private /* synthetic */ zab() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        Object obj2 = GoogleApiAvailability.f10561c;
        return Tasks.forResult(null);
    }
}
