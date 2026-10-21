package androidx.media3.exoplayer;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.ExoPlayerImpl;
import androidx.media3.exoplayer.MediaPeriodHolder;
import androidx.media3.exoplayer.StreamVolumeManager;
import java.util.List;

/* renamed from: androidx.media3.exoplayer.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0589s implements ListenerSet.Event, MediaPeriodHolder.Factory, BackgroundThreadStateHandler.StateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7466b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7467e;

    public /* synthetic */ C0589s(Object obj, int i2) {
        this.f7466b = i2;
        this.f7467e = obj;
    }

    @Override // androidx.media3.exoplayer.MediaPeriodHolder.Factory
    public MediaPeriodHolder create(MediaPeriodInfo mediaPeriodInfo, long j7) {
        MediaPeriodHolder createMediaPeriodHolder;
        createMediaPeriodHolder = ((ExoPlayerImplInternal) this.f7467e).createMediaPeriodHolder(mediaPeriodInfo, j7);
        return createMediaPeriodHolder;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f7466b) {
            case 0:
                ((Player.Listener) obj).onMediaMetadataChanged((MediaMetadata) this.f7467e);
                break;
            case 1:
                ((Player.Listener) obj).onAudioAttributesChanged((AudioAttributes) this.f7467e);
                break;
            case 2:
                ((Player.Listener) obj).onTrackSelectionParametersChanged((TrackSelectionParameters) this.f7467e);
                break;
            case 3:
                ((Player.Listener) obj).onCues((CueGroup) this.f7467e);
                break;
            case 4:
                ((ExoPlayerImpl.ComponentListener) this.f7467e).lambda$onMetadata$6((Player.Listener) obj);
                break;
            case 5:
                ((Player.Listener) obj).onMetadata((Metadata) this.f7467e);
                break;
            case 6:
                ((Player.Listener) obj).onCues((List<Cue>) this.f7467e);
                break;
            case 7:
                ((Player.Listener) obj).onVideoSizeChanged((VideoSize) this.f7467e);
                break;
            default:
                ((Player.Listener) obj).onDeviceInfoChanged((DeviceInfo) this.f7467e);
                break;
        }
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public void onStateChanged(Object obj, Object obj2) {
        ((StreamVolumeManager) this.f7467e).onStreamVolumeStateChanged((StreamVolumeManager.StreamVolumeState) obj, (StreamVolumeManager.StreamVolumeState) obj2);
    }
}
