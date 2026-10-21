package com.google.android.gms.cast.framework.media.widget;

import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzp implements RemoteMediaClient.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10247a;

    public /* synthetic */ zzp(ExpandedControllerActivity expandedControllerActivity) {
        this.f10247a = expandedControllerActivity;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void onAdBreakStatusUpdated() {
        int i2 = ExpandedControllerActivity.f10160Y;
        this.f10247a.j();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void onMetadataUpdated() {
        int i2 = ExpandedControllerActivity.f10160Y;
        this.f10247a.i();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void onPreloadStatusUpdated() {
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void onQueueStatusUpdated() {
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void onSendingRemoteMediaRequest() {
        ExpandedControllerActivity expandedControllerActivity = this.f10247a;
        expandedControllerActivity.f10164D.setText(expandedControllerActivity.getResources().getString(R.string.cast_expanded_controller_loading));
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void onStatusUpdated() {
        int i2 = ExpandedControllerActivity.f10160Y;
        ExpandedControllerActivity expandedControllerActivity = this.f10247a;
        RemoteMediaClient e3 = expandedControllerActivity.e();
        if (e3 == null || !e3.hasMediaSession()) {
            if (expandedControllerActivity.f10181U) {
                return;
            }
            expandedControllerActivity.finish();
        } else {
            expandedControllerActivity.f10181U = false;
            expandedControllerActivity.h();
            expandedControllerActivity.j();
        }
    }
}
