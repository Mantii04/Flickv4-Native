package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements MediaCodecUtil.ScoreProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7442a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f7443b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Format f7444c;

    public /* synthetic */ l(Context context, Format format, int i2) {
        this.f7442a = i2;
        this.f7443b = context;
        this.f7444c = format;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int getScore(Object obj) {
        int lambda$getDecoderInfosSortedByFullFormatSupport$1;
        int lambda$getDecoderInfosSortedByFormatSupport$0;
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) obj;
        switch (this.f7442a) {
            case 0:
                lambda$getDecoderInfosSortedByFullFormatSupport$1 = MediaCodecUtil.lambda$getDecoderInfosSortedByFullFormatSupport$1(this.f7443b, this.f7444c, mediaCodecInfo);
                return lambda$getDecoderInfosSortedByFullFormatSupport$1;
            default:
                lambda$getDecoderInfosSortedByFormatSupport$0 = MediaCodecUtil.lambda$getDecoderInfosSortedByFormatSupport$0(this.f7443b, this.f7444c, mediaCodecInfo);
                return lambda$getDecoderInfosSortedByFormatSupport$0;
        }
    }
}
