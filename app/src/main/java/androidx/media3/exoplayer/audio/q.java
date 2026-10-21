package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7334b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7335e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7336f;

    public /* synthetic */ q(int i2, Object obj, Object obj2) {
        this.f7334b = i2;
        this.f7335e = obj;
        this.f7336f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7334b) {
            case 0:
                ((AudioTrackAudioOutput.OnRoutingChangedListenerApi24) this.f7335e).lambda$onRoutingChanged$0((AudioDeviceInfo) this.f7336f);
                break;
            case 1:
                ((AudioTrackAudioOutput.OnRoutingChangedListenerApi24) this.f7335e).lambda$onRoutingChanged$1((AudioRouting) this.f7336f);
                break;
            case 2:
                ((AudioRendererEventListener.EventDispatcher) this.f7335e).lambda$audioCodecParametersChanged$13((CodecParameters) this.f7336f);
                break;
            default:
                ((AudioRendererEventListener.EventDispatcher) this.f7335e).lambda$decoderReleased$5((String) this.f7336f);
                break;
        }
    }
}
