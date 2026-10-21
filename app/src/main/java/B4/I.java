package B4;

import android.content.Intent;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.cast.ExpandedControlsActivity;

/* loaded from: classes2.dex */
public final class I extends RemoteMediaClient.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f230a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f231b;

    public I(SimpleVideoPlayer simpleVideoPlayer, RemoteMediaClient remoteMediaClient) {
        this.f231b = simpleVideoPlayer;
        this.f230a = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public void onStatusUpdated() {
        SimpleVideoPlayer simpleVideoPlayer = this.f231b;
        simpleVideoPlayer.startActivity(new Intent(simpleVideoPlayer, (Class<?>) ExpandedControlsActivity.class));
        this.f230a.unregisterCallback(this);
    }
}
