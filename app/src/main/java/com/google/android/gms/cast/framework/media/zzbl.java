package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbl implements RemoteMediaClient.MediaChannelResult {

    /* renamed from: b, reason: collision with root package name */
    public final Status f10280b;

    public zzbl(Status status) {
        this.f10280b = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10280b;
    }
}
