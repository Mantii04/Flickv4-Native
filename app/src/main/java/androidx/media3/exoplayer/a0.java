package androidx.media3.exoplayer;

import androidx.media3.exoplayer.StreamVolumeManager;

/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7230a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7231b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7232c;

    public /* synthetic */ a0(Object obj, int i2, int i7) {
        this.f7230a = i7;
        this.f7231b = obj;
        this.f7232c = i2;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        StreamVolumeManager.StreamVolumeState lambda$increaseVolume$6;
        StreamVolumeManager.StreamVolumeState lambda$decreaseVolume$8;
        StreamVolumeManager.StreamVolumeState lambda$setStreamType$2;
        Integer lambda$setAudioSessionId$14;
        switch (this.f7230a) {
            case 0:
                lambda$increaseVolume$6 = ((StreamVolumeManager) this.f7231b).lambda$increaseVolume$6(this.f7232c, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$increaseVolume$6;
            case 1:
                lambda$decreaseVolume$8 = ((StreamVolumeManager) this.f7231b).lambda$decreaseVolume$8(this.f7232c, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$decreaseVolume$8;
            case 2:
                lambda$setStreamType$2 = ((StreamVolumeManager) this.f7231b).lambda$setStreamType$2(this.f7232c, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$setStreamType$2;
            default:
                lambda$setAudioSessionId$14 = ((ExoPlayerImpl) this.f7231b).lambda$setAudioSessionId$14(this.f7232c, (Integer) obj);
                return lambda$setAudioSessionId$14;
        }
    }
}
