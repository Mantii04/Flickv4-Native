package androidx.media3.exoplayer.source.chunk;

import S0.q;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.io.IOException;
import java.util.List;
import v0.D;
import v0.r;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public interface ChunkExtractor {

    public interface Factory {
        ChunkExtractor createProgressiveMediaExtractor(int i2, Format format, boolean z6, List<Format> list, r0 r0Var, PlayerId playerId);

        Factory experimentalParseSubtitlesDuringExtraction(boolean z6);

        Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2);

        Format getOutputTextFormat(Format format);

        Factory setSubtitleParserFactory(q qVar);
    }

    public interface TrackOutputProvider {
        r0 track(int i2, int i7);
    }

    r getChunkIndex();

    Format[] getSampleFormats();

    void init(TrackOutputProvider trackOutputProvider, long j7, long j8);

    boolean read(D d7) throws IOException;

    void release();
}
