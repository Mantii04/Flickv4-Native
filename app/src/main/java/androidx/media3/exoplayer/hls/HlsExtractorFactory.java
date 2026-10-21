package androidx.media3.exoplayer.hls;

import S0.q;
import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import v0.D;

@UnstableApi
/* loaded from: classes.dex */
public interface HlsExtractorFactory {

    @Deprecated
    public static final HlsExtractorFactory DEFAULT = new DefaultHlsExtractorFactory();

    HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List<Format> list, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, D d7, PlayerId playerId) throws IOException;

    HlsExtractorFactory experimentalParseSubtitlesDuringExtraction(boolean z6);

    HlsExtractorFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2);

    Format getOutputTextFormat(Format format);

    HlsExtractorFactory setSubtitleParserFactory(q qVar);
}
