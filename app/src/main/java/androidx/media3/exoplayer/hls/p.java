package androidx.media3.exoplayer.hls;

import S0.q;
import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.util.List;
import java.util.Map;
import v0.D;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements HlsExtractorFactory {
    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final HlsMediaChunkExtractor createExtractor(Uri uri, Format format, List list, TimestampAdjuster timestampAdjuster, Map map, D d7, PlayerId playerId) {
        HlsMediaChunkExtractor lambda$static$0;
        lambda$static$0 = MediaParserHlsMediaChunkExtractor.lambda$static$0(uri, format, list, timestampAdjuster, map, d7, playerId);
        return lambda$static$0;
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ HlsExtractorFactory experimentalParseSubtitlesDuringExtraction(boolean z6) {
        return a.a(this, z6);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ HlsExtractorFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        return a.b(this, i2);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ Format getOutputTextFormat(Format format) {
        return a.c(this, format);
    }

    @Override // androidx.media3.exoplayer.hls.HlsExtractorFactory
    public final /* synthetic */ HlsExtractorFactory setSubtitleParserFactory(q qVar) {
        return a.d(this, qVar);
    }
}
