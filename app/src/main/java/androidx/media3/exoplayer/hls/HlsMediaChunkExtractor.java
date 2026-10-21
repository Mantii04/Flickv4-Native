package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import v0.D;
import v0.F;

@UnstableApi
/* loaded from: classes.dex */
public interface HlsMediaChunkExtractor {
    void init(F f3);

    boolean isPackedAudioExtractor();

    boolean isReusable();

    void onTruncatedSegmentParsed();

    boolean read(D d7) throws IOException;

    HlsMediaChunkExtractor recreate();
}
