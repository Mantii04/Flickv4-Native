package com.google.android.gms.cast.internal;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzk extends zzae {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f10391a;

    public zzk(TaskCompletionSource taskCompletionSource) {
        this.f10391a = taskCompletionSource;
    }

    @Override // com.google.android.gms.cast.internal.zzaf
    public final void zzb(Bundle bundle) {
        this.f10391a.setResult(bundle);
    }
}
