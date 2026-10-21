package androidx.media3.exoplayer.hls;

import P3.AbstractC0226a;
import P3.v;
import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UriUtil;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.HlsChunkSource;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.collect.ImmutableList;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import v0.C1736u;
import v0.D;

/* loaded from: classes.dex */
final class HlsMediaChunk extends MediaChunk {
    public static final String PRIV_TIMESTAMP_FRAME_OWNER = "com.apple.streaming.transportStreamTimestamp";
    private static final AtomicInteger uidSource = new AtomicInteger();
    public final int discontinuitySequenceNumber;
    private final DrmInitData drmInitData;
    private HlsMediaChunkExtractor extractor;
    private final HlsExtractorFactory extractorFactory;
    private boolean extractorInvalidated;
    private final boolean hasGapTag;
    private final J0.j id3Decoder;
    private boolean initDataLoadRequired;
    private final DataSource initDataSource;
    private final DataSpec initDataSpec;
    private final boolean initSegmentEncrypted;
    public final boolean isIndependent;
    private final boolean isPrimaryTimestampSource;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private final boolean mediaSegmentEncrypted;
    private final List<Format> muxedCaptionFormats;
    private int nextLoadPosition;
    private HlsSampleStreamWrapper output;
    public final int partIndex;
    private final PlayerId playerId;
    public final Uri playlistUrl;
    private final HlsMediaChunkExtractor previousExtractor;
    private long publishedDurationUs;
    private ImmutableList<Integer> sampleQueueFirstSampleIndices;
    private final ParsableByteArray scratchId3Data;
    private boolean shouldSpliceIn;
    private final TimestampAdjuster timestampAdjuster;
    private final long timestampAdjusterInitializationTimeoutMs;
    public final int uid;

    private HlsMediaChunk(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, Format format, boolean z6, DataSource dataSource2, DataSpec dataSpec2, boolean z7, Uri uri, List<Format> list, int i2, Object obj, long j7, long j8, long j9, int i7, boolean z8, int i8, boolean z9, boolean z10, TimestampAdjuster timestampAdjuster, long j10, DrmInitData drmInitData, HlsMediaChunkExtractor hlsMediaChunkExtractor, J0.j jVar, ParsableByteArray parsableByteArray, boolean z11, boolean z12, PlayerId playerId) {
        super(dataSource, dataSpec, format, i2, obj, j7, j8, j9);
        this.mediaSegmentEncrypted = z6;
        this.partIndex = i7;
        this.publishedDurationUs = z8 ? j8 - j7 : C.TIME_UNSET;
        this.discontinuitySequenceNumber = i8;
        this.initDataSpec = dataSpec2;
        this.initDataSource = dataSource2;
        this.initDataLoadRequired = dataSpec2 != null;
        this.initSegmentEncrypted = z7;
        this.playlistUrl = uri;
        this.isPrimaryTimestampSource = z10;
        this.timestampAdjuster = timestampAdjuster;
        this.timestampAdjusterInitializationTimeoutMs = j10;
        this.hasGapTag = z9;
        this.extractorFactory = hlsExtractorFactory;
        this.muxedCaptionFormats = list;
        this.drmInitData = drmInitData;
        this.previousExtractor = hlsMediaChunkExtractor;
        this.id3Decoder = jVar;
        this.scratchId3Data = parsableByteArray;
        this.shouldSpliceIn = z11;
        this.isIndependent = z12;
        this.playerId = playerId;
        this.sampleQueueFirstSampleIndices = ImmutableList.of();
        this.uid = uidSource.getAndIncrement();
    }

    private static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return dataSource;
        }
        v.checkNotNull(bArr2);
        return new Aes128DataSource(dataSource, bArr, bArr2);
    }

    public static HlsMediaChunk createInstance(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, Format format, long j7, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.SegmentBaseHolder segmentBaseHolder, Uri uri, List<Format> list, int i2, Object obj, boolean z6, TimestampAdjusterProvider timestampAdjusterProvider, long j8, HlsMediaChunk hlsMediaChunk, byte[] bArr, byte[] bArr2, boolean z7, boolean z8, PlayerId playerId, CmcdData.Factory factory) {
        boolean z9;
        DataSource dataSource2;
        DataSpec dataSpec;
        boolean z10;
        Uri uri2;
        J0.j jVar;
        ParsableByteArray parsableByteArray;
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        DataSpec build = new DataSpec.Builder().setUri(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segmentBase.url)).setPosition(segmentBase.byteRangeOffset).setLength(segmentBase.byteRangeLength).setFlags(segmentBaseHolder.isPreload ? 8 : 0).build();
        if (factory != null) {
            build = factory.createCmcdData().addToDataSpec(build);
        }
        DataSpec dataSpec2 = build;
        boolean z11 = bArr != null;
        DataSource buildDataSource = buildDataSource(dataSource, bArr, z11 ? getEncryptionIvArray((String) v.checkNotNull(segmentBase.encryptionIV)) : null);
        HlsMediaPlaylist.Segment segment = segmentBase.initializationSegment;
        if (segment != null) {
            boolean z12 = bArr2 != null;
            byte[] encryptionIvArray = z12 ? getEncryptionIvArray((String) v.checkNotNull(segment.encryptionIV)) : null;
            z9 = true;
            dataSpec = new DataSpec.Builder().setUri(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url)).setPosition(segment.byteRangeOffset).setLength(segment.byteRangeLength).build();
            if (factory != null) {
                dataSpec = factory.setObjectType(CmcdData.OBJECT_TYPE_INIT_SEGMENT).createCmcdData().addToDataSpec(dataSpec);
            }
            dataSource2 = buildDataSource(dataSource, bArr2, encryptionIvArray);
            z10 = z12;
        } else {
            z9 = true;
            dataSource2 = null;
            dataSpec = null;
            z10 = false;
        }
        long j9 = j7 + segmentBase.relativeStartTimeUs;
        long j10 = j9 + segmentBase.durationUs;
        int i7 = hlsMediaPlaylist.discontinuitySequence + segmentBase.relativeDiscontinuitySequence;
        if (hlsMediaChunk != null) {
            DataSpec dataSpec3 = hlsMediaChunk.initDataSpec;
            boolean z13 = (dataSpec == dataSpec3 || (dataSpec != null && dataSpec3 != null && dataSpec.uri.equals(dataSpec3.uri) && dataSpec.position == hlsMediaChunk.initDataSpec.position)) ? z9 : false;
            uri2 = uri;
            boolean z14 = (uri2.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted) ? z9 : false;
            jVar = hlsMediaChunk.id3Decoder;
            parsableByteArray = hlsMediaChunk.scratchId3Data;
            hlsMediaChunkExtractor = (z13 && z14 && !hlsMediaChunk.extractorInvalidated && hlsMediaChunk.discontinuitySequenceNumber == i7) ? hlsMediaChunk.extractor : null;
        } else {
            uri2 = uri;
            jVar = new J0.j();
            parsableByteArray = new ParsableByteArray(10);
            hlsMediaChunkExtractor = null;
        }
        return new HlsMediaChunk(hlsExtractorFactory, buildDataSource, dataSpec2, format, z11, dataSource2, dataSpec, z10, uri2, list, i2, obj, j9, j10, segmentBaseHolder.mediaSequence, segmentBaseHolder.partIndex, !segmentBaseHolder.isPreload, i7, segmentBase.hasGapTag, z6, timestampAdjusterProvider.getAdjuster(i7), j8, segmentBase.drmInitData, hlsMediaChunkExtractor, jVar, parsableByteArray, z7, z8, playerId);
    }

    private void feedDataToExtractor(DataSource dataSource, DataSpec dataSpec, boolean z6, boolean z7) throws IOException {
        DataSpec subrange;
        long position;
        long j7;
        if (z6) {
            r0 = this.nextLoadPosition != 0;
            subrange = dataSpec;
        } else {
            subrange = dataSpec.subrange(this.nextLoadPosition);
        }
        try {
            C1736u prepareExtraction = prepareExtraction(dataSource, subrange, z7);
            if (r0) {
                prepareExtraction.skipFully(this.nextLoadPosition);
            }
            while (!this.loadCanceled && this.extractor.read(prepareExtraction)) {
                try {
                    try {
                    } catch (EOFException e3) {
                        if ((this.trackFormat.roleFlags & 16384) == 0) {
                            throw e3;
                        }
                        this.extractor.onTruncatedSegmentParsed();
                        position = prepareExtraction.getPosition();
                        j7 = dataSpec.position;
                    }
                } catch (Throwable th) {
                    this.nextLoadPosition = (int) (prepareExtraction.getPosition() - dataSpec.position);
                    throw th;
                }
            }
            position = prepareExtraction.getPosition();
            j7 = dataSpec.position;
            this.nextLoadPosition = (int) (position - j7);
        } finally {
            DataSourceUtil.closeQuietly(dataSource);
        }
    }

    private static byte[] getEncryptionIvArray(String str) {
        if (AbstractC0226a.toLowerCase(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$peekId3PrivTimestamp$0(J0.o oVar) {
        return oVar.f1473b.equals(PRIV_TIMESTAMP_FRAME_OWNER);
    }

    private void loadMedia() throws IOException {
        feedDataToExtractor(this.dataSource, this.dataSpec, this.mediaSegmentEncrypted, true);
    }

    private void maybeLoadInitData() throws IOException {
        if (this.initDataLoadRequired) {
            v.checkNotNull(this.initDataSource);
            v.checkNotNull(this.initDataSpec);
            feedDataToExtractor(this.initDataSource, this.initDataSpec, this.initSegmentEncrypted, false);
            this.nextLoadPosition = 0;
            this.initDataLoadRequired = false;
        }
    }

    private long peekId3PrivTimestamp(D d7) throws IOException {
        J0.o oVar;
        d7.resetPeekPosition();
        try {
            this.scratchId3Data.reset(10);
            d7.peekFully(this.scratchId3Data.getData(), 0, 10);
            if (this.scratchId3Data.readUnsignedInt24() != 4801587) {
                return C.TIME_UNSET;
            }
            this.scratchId3Data.skipBytes(3);
            int readSynchSafeInt = this.scratchId3Data.readSynchSafeInt();
            int i2 = readSynchSafeInt + 10;
            if (i2 > this.scratchId3Data.capacity()) {
                byte[] data = this.scratchId3Data.getData();
                this.scratchId3Data.reset(i2);
                System.arraycopy(data, 0, this.scratchId3Data.getData(), 0, 10);
            }
            d7.peekFully(this.scratchId3Data.getData(), 10, readSynchSafeInt);
            Metadata decode = this.id3Decoder.decode(this.scratchId3Data.getData(), readSynchSafeInt);
            if (decode == null || (oVar = (J0.o) decode.getFirstMatchingEntry(J0.o.class, new k(0))) == null) {
                return C.TIME_UNSET;
            }
            System.arraycopy(oVar.f1474c, 0, this.scratchId3Data.getData(), 0, 8);
            this.scratchId3Data.setPosition(0);
            this.scratchId3Data.setLimit(8);
            return this.scratchId3Data.readLong() & 8589934591L;
        } catch (EOFException unused) {
            return C.TIME_UNSET;
        }
    }

    private C1736u prepareExtraction(DataSource dataSource, DataSpec dataSpec, boolean z6) throws IOException {
        HlsMediaChunkExtractor createExtractor;
        long open = dataSource.open(dataSpec);
        if (z6) {
            try {
                this.timestampAdjuster.sharedInitializeOrWait(this.isPrimaryTimestampSource, this.startTimeUs, this.timestampAdjusterInitializationTimeoutMs);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e3) {
                throw new IOException(e3);
            }
        }
        C1736u c1736u = new C1736u(dataSource, dataSpec.position, open);
        if (this.extractor == null) {
            long peekId3PrivTimestamp = peekId3PrivTimestamp(c1736u);
            c1736u.resetPeekPosition();
            HlsMediaChunkExtractor hlsMediaChunkExtractor = this.previousExtractor;
            if (hlsMediaChunkExtractor != null) {
                createExtractor = hlsMediaChunkExtractor.recreate();
            } else {
                createExtractor = this.extractorFactory.createExtractor(dataSpec.uri, this.trackFormat, this.muxedCaptionFormats, this.timestampAdjuster, dataSource.getResponseHeaders(), c1736u, this.playerId);
                c1736u = c1736u;
            }
            this.extractor = createExtractor;
            if (createExtractor.isPackedAudioExtractor()) {
                this.output.setSampleOffsetUs(peekId3PrivTimestamp != C.TIME_UNSET ? this.timestampAdjuster.adjustTsTimestamp(peekId3PrivTimestamp) : this.startTimeUs);
            } else {
                this.output.setSampleOffsetUs(0L);
            }
            this.output.onNewExtractor();
            this.extractor.init(this.output);
        }
        this.output.setDrmInitData(this.drmInitData);
        return c1736u;
    }

    public static boolean shouldSpliceIn(HlsMediaChunk hlsMediaChunk, long j7, Uri uri, boolean z6, HlsChunkSource.SegmentBaseHolder segmentBaseHolder, long j8) {
        if (hlsMediaChunk == null) {
            return false;
        }
        if (uri.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted) {
            return false;
        }
        return !z6 || j8 + segmentBaseHolder.segmentBase.relativeStartTimeUs < j7;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public void clearShouldSpliceIn() {
        this.shouldSpliceIn = false;
    }

    public int getFirstSampleIndex(int i2) {
        v.checkState(!this.shouldSpliceIn);
        if (i2 >= this.sampleQueueFirstSampleIndices.size()) {
            return 0;
        }
        return this.sampleQueueFirstSampleIndices.get(i2).intValue();
    }

    public long getPublishedEndTimeUs() {
        long j7 = this.publishedDurationUs;
        return j7 != C.TIME_UNSET ? this.startTimeUs + j7 : C.TIME_UNSET;
    }

    public void init(HlsSampleStreamWrapper hlsSampleStreamWrapper, ImmutableList<Integer> immutableList) {
        this.output = hlsSampleStreamWrapper;
        this.sampleQueueFirstSampleIndices = immutableList;
    }

    public void invalidateExtractor() {
        this.extractorInvalidated = true;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    public boolean isPublished() {
        return this.publishedDurationUs != C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void load() throws IOException {
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        v.checkNotNull(this.output);
        if (this.extractor == null && (hlsMediaChunkExtractor = this.previousExtractor) != null && hlsMediaChunkExtractor.isReusable()) {
            this.extractor = this.previousExtractor;
            this.initDataLoadRequired = false;
        }
        maybeLoadInitData();
        if (this.loadCanceled) {
            return;
        }
        if (!this.hasGapTag) {
            loadMedia();
        }
        this.loadCompleted = !this.loadCanceled;
    }

    public void publish(long j7) {
        this.publishedDurationUs = j7;
    }

    public boolean shouldSpliceIn() {
        return this.shouldSpliceIn;
    }
}
