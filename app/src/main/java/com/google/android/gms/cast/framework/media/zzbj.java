package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbj implements RemoteMediaClient.MediaChannelResult {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Status f10276b;

    public zzbj(Status status) {
        this.f10276b = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10276b;
    }
}
