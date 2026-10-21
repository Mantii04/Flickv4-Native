package androidx.media3.exoplayer.source.chunk;

import N0.f;
import N0.h;
import P0.u;
import P3.v;
import S0.e;
import S0.l;
import S0.q;
import android.util.SparseArray;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import v0.C;
import v0.C1740y;
import v0.D;
import v0.F;
import v0.c0;
import v0.g0;
import v0.p0;
import v0.q0;
import v0.r;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public final class BundledChunkExtractor implements F, ChunkExtractor {

    @Deprecated
    public static final Factory FACTORY = new Factory();
    private static final c0 POSITION_HOLDER = new c0();
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs;
    private long endTimeUs;
    private final C extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final ManifestFormatMerger primaryTrackManifestFormatInfoMerger;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private g0 seekMap;
    private ChunkExtractor.TrackOutputProvider trackOutputProvider;

    public static final class BindingTrackOutput implements r0 {
        private long endTimeUs;
        private final C1740y fakeTrackOutput;
        private final int id;
        private final Format manifestFormat;
        private final ManifestFormatMerger manifestFormatMerger;
        public Format sampleFormat;
        private r0 trackOutput;
        private final int type;

        public void bind(ChunkExtractor.TrackOutputProvider trackOutputProvider, long j7) {
            if (trackOutputProvider == null) {
                this.trackOutput = this.fakeTrackOutput;
                return;
            }
            this.endTimeUs = j7;
            r0 track = trackOutputProvider.track(this.id, this.type);
            this.trackOutput = track;
            Format format = this.sampleFormat;
            if (format != null) {
                track.format(format);
            }
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ void durationUs(long j7) {
            p0.a(this, j7);
        }

        @Override // v0.r0
        public void format(Format format) {
            this.sampleFormat = this.manifestFormatMerger.merge(format, this.manifestFormat);
            ((r0) Util.castNonNull(this.trackOutput)).format(this.sampleFormat);
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
            return p0.b(this, dataReader, i2, z6);
        }

        @Override // v0.r0
        public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
            long j8 = this.endTimeUs;
            if (j8 != androidx.media3.common.C.TIME_UNSET && j7 >= j8) {
                this.trackOutput = this.fakeTrackOutput;
            }
            ((r0) Util.castNonNull(this.trackOutput)).sampleMetadata(j7, i2, i7, i8, q0Var);
        }

        private BindingTrackOutput(int i2, int i7, Format format, ManifestFormatMerger manifestFormatMerger) {
            this.id = i2;
            this.type = i7;
            this.manifestFormat = format;
            this.fakeTrackOutput = new C1740y();
            this.manifestFormatMerger = manifestFormatMerger;
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
            p0.c(this, parsableByteArray, i2);
        }

        @Override // v0.r0
        public int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
            return ((r0) Util.castNonNull(this.trackOutput)).sampleData(dataReader, i2, z6);
        }

        @Override // v0.r0
        public void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
            ((r0) Util.castNonNull(this.trackOutput)).sampleData(parsableByteArray, i2);
        }
    }

    public static final class Factory implements ChunkExtractor.Factory {
        private int codecsToParseWithinGopSampleDependencies;
        private boolean parseSubtitlesDuringExtraction;
        private q subtitleParserFactory = new e();

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public ChunkExtractor createProgressiveMediaExtractor(int i2, Format format, boolean z6, List<Format> list, r0 r0Var, PlayerId playerId) {
            C uVar;
            String str = format.containerMimeType;
            if (!MimeTypes.isText(str)) {
                if (MimeTypes.isMatroska(str)) {
                    uVar = new h(this.subtitleParserFactory, this.parseSubtitlesDuringExtraction ? 1 : 3);
                } else if (Objects.equals(str, MimeTypes.IMAGE_JPEG)) {
                    uVar = new D0.a(1);
                } else if (Objects.equals(str, MimeTypes.IMAGE_PNG)) {
                    uVar = new R0.a();
                } else {
                    int i7 = z6 ? 4 : 0;
                    if (!this.parseSubtitlesDuringExtraction) {
                        i7 |= 32;
                    }
                    uVar = new u(this.subtitleParserFactory, i7 | u.codecsToParseWithinGopSampleDependenciesAsFlags(this.codecsToParseWithinGopSampleDependencies), null, null, list, r0Var);
                }
            } else {
                if (!this.parseSubtitlesDuringExtraction) {
                    return null;
                }
                uVar = new l(this.subtitleParserFactory.create(format), format);
            }
            return new BundledChunkExtractor(uVar, i2, format);
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Format getOutputTextFormat(Format format) {
            String str;
            if (!this.parseSubtitlesDuringExtraction || !this.subtitleParserFactory.supportsFormat(format)) {
                return format;
            }
            Format.Builder cueReplacementBehavior = format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format));
            StringBuilder sb = new StringBuilder();
            sb.append(format.sampleMimeType);
            if (format.codecs != null) {
                str = StringUtils.SPACE + format.codecs;
            } else {
                str = "";
            }
            sb.append(str);
            return cueReplacementBehavior.setCodecs(sb.toString()).setSubsampleOffsetUs(Long.MAX_VALUE).build();
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Factory experimentalParseSubtitlesDuringExtraction(boolean z6) {
            this.parseSubtitlesDuringExtraction = z6;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
            this.codecsToParseWithinGopSampleDependencies = i2;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public Factory setSubtitleParserFactory(q qVar) {
            this.subtitleParserFactory = (q) v.checkNotNull(qVar);
            return this;
        }
    }

    public interface ManifestFormatMerger {
        public static final ManifestFormatMerger DEFAULT = new a(0);

        Format merge(Format format, Format format2);
    }

    public BundledChunkExtractor(C c7, int i2, Format format) {
        this(c7, i2, format, ManifestFormatMerger.DEFAULT);
    }

    @Override // v0.F
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i2 = 0; i2 < this.bindingTrackOutputs.size(); i2++) {
            formatArr[i2] = (Format) v.checkNotNull(this.bindingTrackOutputs.valueAt(i2).sampleFormat);
        }
        this.sampleFormats = formatArr;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public r getChunkIndex() {
        g0 g0Var = this.seekMap;
        if (g0Var instanceof r) {
            return (r) g0Var;
        }
        if (g0Var instanceof f) {
            return ((f) g0Var).getChunkIndex();
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public void init(ChunkExtractor.TrackOutputProvider trackOutputProvider, long j7, long j8) {
        this.trackOutputProvider = trackOutputProvider;
        this.endTimeUs = j8;
        if (!this.extractorInitialized) {
            this.extractor.init(this);
            if (j7 != androidx.media3.common.C.TIME_UNSET) {
                this.extractor.seek(0L, j7);
            }
            this.extractorInitialized = true;
            return;
        }
        C c7 = this.extractor;
        if (j7 == androidx.media3.common.C.TIME_UNSET) {
            j7 = 0;
        }
        c7.seek(0L, j7);
        for (int i2 = 0; i2 < this.bindingTrackOutputs.size(); i2++) {
            this.bindingTrackOutputs.valueAt(i2).bind(trackOutputProvider, j8);
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public boolean read(D d7) throws IOException {
        int read = this.extractor.read(d7, POSITION_HOLDER);
        v.checkState(read != 1);
        return read == 0;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public void release() {
        this.extractor.release();
    }

    @Override // v0.F
    public void seekMap(g0 g0Var) {
        this.seekMap = g0Var;
    }

    @Override // v0.F
    public r0 track(int i2, int i7) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i2);
        if (bindingTrackOutput != null) {
            return bindingTrackOutput;
        }
        v.checkState(this.sampleFormats == null);
        BindingTrackOutput bindingTrackOutput2 = new BindingTrackOutput(i2, i7, i7 == this.primaryTrackType ? this.primaryTrackManifestFormat : null, this.primaryTrackManifestFormatInfoMerger);
        bindingTrackOutput2.bind(this.trackOutputProvider, this.endTimeUs);
        this.bindingTrackOutputs.put(i2, bindingTrackOutput2);
        return bindingTrackOutput2;
    }

    public BundledChunkExtractor(C c7, int i2, Format format, ManifestFormatMerger manifestFormatMerger) {
        this.extractor = c7;
        this.primaryTrackType = i2;
        this.primaryTrackManifestFormat = format;
        this.bindingTrackOutputs = new SparseArray<>();
        this.primaryTrackManifestFormatInfoMerger = manifestFormatMerger;
    }
}
