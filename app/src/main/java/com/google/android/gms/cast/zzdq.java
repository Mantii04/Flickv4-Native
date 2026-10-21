package com.google.android.gms.cast;

import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzdq implements RemoteMediaPlayer.MediaChannelResult {

    /* renamed from: b, reason: collision with root package name */
    public final Status f10542b;

    public zzdq(Status status) {
        this.f10542b = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10542b;
    }
}
