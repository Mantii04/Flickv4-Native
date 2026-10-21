package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7317b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f7318e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AudioSink.AudioTrackConfig f7319f;

    public /* synthetic */ g(AudioRendererEventListener.EventDispatcher eventDispatcher, AudioSink.AudioTrackConfig audioTrackConfig, int i2) {
        this.f7317b = i2;
        this.f7318e = eventDispatcher;
        this.f7319f = audioTrackConfig;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7317b) {
            case 0:
                this.f7318e.lambda$audioTrackInitialized$10(this.f7319f);
                break;
            default:
                this.f7318e.lambda$audioTrackReleased$11(this.f7319f);
                break;
        }
    }
}
