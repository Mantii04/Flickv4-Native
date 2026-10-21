package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7307b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f7308e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DecoderCounters f7309f;

    public /* synthetic */ d(AudioRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i2) {
        this.f7307b = i2;
        this.f7308e = eventDispatcher;
        this.f7309f = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7307b) {
            case 0:
                this.f7308e.lambda$enabled$0(this.f7309f);
                break;
            default:
                this.f7308e.lambda$disabled$6(this.f7309f);
                break;
        }
    }
}
