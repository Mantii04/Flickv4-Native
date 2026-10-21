package androidx.media3.exoplayer.hls;

import P0.u;
import P3.v;
import S0.q;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import c1.C0688S;
import c1.C0696a;
import c1.C0698c;
import c1.C0700e;
import java.io.IOException;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;

@UnstableApi
/* loaded from: classes.dex */
public final class BundledHlsMediaChunkExtractor implements HlsMediaChunkExtractor {
    private static final c0 POSITION_HOLDER = new c0();
    final C extractor;
    private final Format multivariantPlaylistFormat;
    private final boolean parseSubtitlesDuringExtraction;
    private final q subtitleParserFactory;
    private final TimestampAdjuster timestampAdjuster;

    public BundledHlsMediaChunkExtractor(C c7, Format format, TimestampAdjuster timestampAdjuster) {
        this(c7, format, timestampAdjuster, q.f3274a, false);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public void init(F f3) {
        this.extractor.init(f3);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public boolean isPackedAudioExtractor() {
        C underlyingImplementation = this.extractor.getUnderlyingImplementation();
        return (underlyingImplementation instanceof C0700e) || (underlyingImplementation instanceof C0696a) || (underlyingImplementation instanceof C0698c) || (underlyingImplementation instanceof O0.e);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public boolean isReusable() {
        C underlyingImplementation = this.extractor.getUnderlyingImplementation();
        return (underlyingImplementation instanceof C0688S) || (underlyingImplementation instanceof u);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public void onTruncatedSegmentParsed() {
        this.extractor.seek(0L, 0L);
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public boolean read(D d7) throws IOException {
        return this.extractor.read(d7, POSITION_HOLDER) == 0;
    }

    @Override // androidx.media3.exoplayer.hls.HlsMediaChunkExtractor
    public HlsMediaChunkExtractor recreate() {
        C eVar;
        v.checkState(!isReusable());
        C underlyingImplementation = this.extractor.getUnderlyingImplementation();
        C c7 = this.extractor;
        v.checkState(underlyingImplementation == c7, "Can't recreate wrapped extractors. Outer type: %s", c7.getClass());
        C c8 = this.extractor;
        if (c8 instanceof WebvttExtractor) {
            eVar = new WebvttExtractor(this.multivariantPlaylistFormat.language, this.timestampAdjuster, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
        } else if (c8 instanceof C0700e) {
            eVar = new C0700e();
        } else if (c8 instanceof C0696a) {
            eVar = new C0696a();
        } else if (c8 instanceof C0698c) {
            eVar = new C0698c();
        } else {
            if (!(c8 instanceof O0.e)) {
                throw new IllegalStateException("Unexpected extractor type for recreation: ".concat(this.extractor.getClass().getSimpleName()));
            }
            eVar = new O0.e();
        }
        return new BundledHlsMediaChunkExtractor(eVar, this.multivariantPlaylistFormat, this.timestampAdjuster, this.subtitleParserFactory, this.parseSubtitlesDuringExtraction);
    }

    public BundledHlsMediaChunkExtractor(C c7, Format format, TimestampAdjuster timestampAdjuster, q qVar, boolean z6) {
        this.extractor = c7;
        this.multivariantPlaylistFormat = format;
        this.timestampAdjuster = timestampAdjuster;
        this.subtitleParserFactory = qVar;
        this.parseSubtitlesDuringExtraction = z6;
    }
}
