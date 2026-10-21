package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT;
    public static final MediaCodecSelector PREFER_SOFTWARE;

    static {
        final int i2 = 0;
        DEFAULT = new MediaCodecSelector() { // from class: androidx.media3.exoplayer.mediacodec.i
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
            public final List getDecoderInfos(String str, boolean z6, boolean z7) {
                List decoderInfosSortedBySoftwareOnly;
                switch (i2) {
                    case 0:
                        return MediaCodecUtil.getDecoderInfos(str, z6, z7);
                    default:
                        decoderInfosSortedBySoftwareOnly = MediaCodecUtil.getDecoderInfosSortedBySoftwareOnly(MediaCodecSelector.DEFAULT.getDecoderInfos(str, z6, z7));
                        return decoderInfosSortedBySoftwareOnly;
                }
            }
        };
        final int i7 = 1;
        PREFER_SOFTWARE = new MediaCodecSelector() { // from class: androidx.media3.exoplayer.mediacodec.i
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
            public final List getDecoderInfos(String str, boolean z6, boolean z7) {
                List decoderInfosSortedBySoftwareOnly;
                switch (i7) {
                    case 0:
                        return MediaCodecUtil.getDecoderInfos(str, z6, z7);
                    default:
                        decoderInfosSortedBySoftwareOnly = MediaCodecUtil.getDecoderInfosSortedBySoftwareOnly(MediaCodecSelector.DEFAULT.getDecoderInfos(str, z6, z7));
                        return decoderInfosSortedBySoftwareOnly;
                }
            }
        };
    }

    List<MediaCodecInfo> getDecoderInfos(String str, boolean z6, boolean z7) throws MediaCodecUtil.DecoderQueryException;
}
