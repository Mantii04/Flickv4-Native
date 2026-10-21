package com.google.android.gms.internal.cast;

import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Status;

/* loaded from: classes2.dex */
final class zzdm implements CastRemoteDisplay.CastRemoteDisplaySessionResult {
    private final Status zza;
    private final Display zzb;

    public zzdm(Status status) {
        this.zza = status;
        this.zzb = null;
    }

    public final Display getPresentationDisplay() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }

    public zzdm(Display display) {
        this.zza = Status.f10605m;
        this.zzb = display;
    }
}
