package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7326b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f7327e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f7328f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f7329j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f7330m;

    public /* synthetic */ j(Object obj, String str, long j7, long j8, int i2) {
        this.f7326b = i2;
        this.f7330m = obj;
        this.f7327e = str;
        this.f7328f = j7;
        this.f7329j = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7326b) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) this.f7330m).lambda$decoderInitialized$1(this.f7327e, this.f7328f, this.f7329j);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) this.f7330m).lambda$decoderInitialized$1(this.f7327e, this.f7328f, this.f7329j);
                break;
        }
    }
}
