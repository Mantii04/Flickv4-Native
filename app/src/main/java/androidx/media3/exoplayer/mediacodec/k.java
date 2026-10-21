package androidx.media3.exoplayer.mediacodec;

import android.os.Bundle;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements MediaCodecUtil.ScoreProvider, LoudnessCodecController.LoudnessParameterUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7441a;

    public /* synthetic */ k(int i2) {
        this.f7441a = i2;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public int getScore(Object obj) {
        int lambda$getDecoderInfosSortedBySoftwareOnly$2;
        int lambda$applyWorkarounds$3;
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) obj;
        switch (this.f7441a) {
            case 0:
                lambda$getDecoderInfosSortedBySoftwareOnly$2 = MediaCodecUtil.lambda$getDecoderInfosSortedBySoftwareOnly$2(mediaCodecInfo);
                return lambda$getDecoderInfosSortedBySoftwareOnly$2;
            default:
                lambda$applyWorkarounds$3 = MediaCodecUtil.lambda$applyWorkarounds$3(mediaCodecInfo);
                return lambda$applyWorkarounds$3;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.LoudnessCodecController.LoudnessParameterUpdateListener
    public Bundle onLoudnessParameterUpdate(Bundle bundle) {
        return e.a(bundle);
    }
}
