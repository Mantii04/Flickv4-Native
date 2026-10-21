package com.google.android.gms.cast.internal;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzm extends zzae {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f10393a;

    public zzm(TaskCompletionSource taskCompletionSource) {
        this.f10393a = taskCompletionSource;
    }

    @Override // com.google.android.gms.cast.internal.zzaf
    public final void zzb(Bundle bundle) {
        this.f10393a.setResult(bundle);
    }
}
