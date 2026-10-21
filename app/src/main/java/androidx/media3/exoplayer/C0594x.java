package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayerImpl;
import androidx.media3.exoplayer.StreamVolumeManager;

/* renamed from: androidx.media3.exoplayer.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0594x implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7599a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7600b;

    public /* synthetic */ C0594x(int i2, int i7) {
        this.f7599a = i7;
        this.f7600b = i2;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        Integer lambda$setAudioSessionId$13;
        Integer lambda$onAudioSessionIdChanged$2;
        Integer lambda$onAudioSessionIdChanged$3;
        StreamVolumeManager.StreamVolumeState lambda$setVolume$3;
        StreamVolumeManager.StreamVolumeState lambda$setStreamType$1;
        switch (this.f7599a) {
            case 0:
                lambda$setAudioSessionId$13 = ExoPlayerImpl.lambda$setAudioSessionId$13(this.f7600b, (Integer) obj);
                return lambda$setAudioSessionId$13;
            case 1:
                lambda$onAudioSessionIdChanged$2 = ExoPlayerImpl.ComponentListener.lambda$onAudioSessionIdChanged$2(this.f7600b, (Integer) obj);
                return lambda$onAudioSessionIdChanged$2;
            case 2:
                lambda$onAudioSessionIdChanged$3 = ExoPlayerImpl.ComponentListener.lambda$onAudioSessionIdChanged$3(this.f7600b, (Integer) obj);
                return lambda$onAudioSessionIdChanged$3;
            case 3:
                lambda$setVolume$3 = StreamVolumeManager.lambda$setVolume$3(this.f7600b, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$setVolume$3;
            default:
                lambda$setStreamType$1 = StreamVolumeManager.lambda$setStreamType$1(this.f7600b, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$setStreamType$1;
        }
    }
}
