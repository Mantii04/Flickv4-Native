package com.google.android.gms.cast;

import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzdo implements RemoteMediaPlayer.MediaChannelResult {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Status f10541b;

    public zzdo(Status status) {
        this.f10541b = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10541b;
    }
}
