package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7320b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f7321e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Exception f7322f;

    public /* synthetic */ h(AudioRendererEventListener.EventDispatcher eventDispatcher, Exception exc, int i2) {
        this.f7320b = i2;
        this.f7321e = eventDispatcher;
        this.f7322f = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7320b) {
            case 0:
                this.f7321e.lambda$audioCodecError$9(this.f7322f);
                break;
            default:
                this.f7321e.lambda$audioSinkError$8(this.f7322f);
                break;
        }
    }
}
