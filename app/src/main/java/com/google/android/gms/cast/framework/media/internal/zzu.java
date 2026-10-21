package com.google.android.gms.cast.framework.media.internal;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzu extends RemoteMediaClient.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzv f10096a;

    public /* synthetic */ zzu(zzv zzvVar) {
        this.f10096a = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onAdBreakStatusUpdated() {
        this.f10096a.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onMetadataUpdated() {
        this.f10096a.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onPreloadStatusUpdated() {
        this.f10096a.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onQueueStatusUpdated() {
        this.f10096a.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onStatusUpdated() {
        this.f10096a.zzl(false);
    }
}
