package androidx.media3.exoplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaDataSource;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.FileDescriptorDataSource;
import androidx.media3.datasource.MediaDataSourceAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.UnrecognizedInputFormatException;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.google.common.collect.ImmutableList;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import u0.C1663d;
import u0.C1665f;
import v0.C1736u;
import v0.C1740y;
import v0.g0;
import v0.h0;
import v0.p0;
import v0.q0;
import v0.r0;

/* loaded from: classes.dex */
public class MediaExtractorCompatInternal {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private static final String TAG = "MediaExtractorCompatInt";
    private DataSource currentDataSource;
    private v0.C currentExtractor;
    private v0.D currentExtractorInput;
    private final DataSource.Factory dataSourceFactory;
    private final v0.I extractorsFactory;
    private boolean hasBeenPrepared;
    private Map<String, String> httpRequestHeaders;
    private LogSessionId logSessionId;
    private long offsetInCurrentFile;
    private h0 pendingSeek;
    private g0 seekMap;
    private boolean tracksEnded;
    private int upstreamFormatsCount;
    private final v0.c0 positionHolder = new v0.c0();
    private final Allocator allocator = new DefaultAllocator(true, 65536);
    private final ArrayList<MediaExtractorTrack> tracks = new ArrayList<>();
    private final SparseArray<MediaExtractorSampleQueue> sampleQueues = new SparseArray<>();
    private final SampleMetadataQueue sampleMetadataQueue = new SampleMetadataQueue();
    private final FormatHolder formatHolder = new FormatHolder();
    private final C1665f sampleHolderWithBufferReplacementDisabled = C1665f.newNoDataInstance();
    private final C1665f sampleHolderWithBufferReplacementEnabled = new C1665f(2);
    private final Set<Integer> selectedTrackIndices = new HashSet();

    public final class ExtractorOutputImpl implements v0.F {
        private ExtractorOutputImpl() {
        }

        @Override // v0.F
        public void endTracks() {
            MediaExtractorCompatInternal.this.tracksEnded = true;
        }

        @Override // v0.F
        public void seekMap(g0 g0Var) {
            MediaExtractorCompatInternal.this.seekMap = g0Var;
        }

        @Override // v0.F
        public r0 track(int i2, int i7) {
            MediaExtractorSampleQueue mediaExtractorSampleQueue = (MediaExtractorSampleQueue) MediaExtractorCompatInternal.this.sampleQueues.get(i2);
            if (mediaExtractorSampleQueue != null) {
                return mediaExtractorSampleQueue;
            }
            if (MediaExtractorCompatInternal.this.tracksEnded) {
                return new C1740y();
            }
            MediaExtractorCompatInternal mediaExtractorCompatInternal = MediaExtractorCompatInternal.this;
            MediaExtractorSampleQueue mediaExtractorSampleQueue2 = mediaExtractorCompatInternal.new MediaExtractorSampleQueue(mediaExtractorCompatInternal.allocator, i2);
            MediaExtractorCompatInternal.this.sampleQueues.put(i2, mediaExtractorSampleQueue2);
            return mediaExtractorSampleQueue2;
        }
    }

    public final class MediaExtractorSampleQueue extends SampleQueue {
        private int compatibilityTrackIndex;
        private int mainTrackIndex;
        public long trackDurationUs;
        public final int trackId;

        public MediaExtractorSampleQueue(Allocator allocator, int i2) {
            super(allocator, null, null);
            this.trackId = i2;
            this.trackDurationUs = androidx.media3.common.C.TIME_UNSET;
            this.mainTrackIndex = -1;
            this.compatibilityTrackIndex = -1;
        }

        private void queueSampleMetadata(long j7, int i2) {
            int i7 = ((1073741824 & i2) != 0 ? 2 : 0) | ((i2 & 1) != 0 ? 1 : 0);
            if (this.compatibilityTrackIndex != -1) {
                MediaExtractorCompatInternal.this.sampleMetadataQueue.addLast(j7, i7, this.compatibilityTrackIndex);
            }
            MediaExtractorCompatInternal.this.sampleMetadataQueue.addLast(j7, i7, this.mainTrackIndex);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public void durationUs(long j7) {
            this.trackDurationUs = j7;
            super.durationUs(j7);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue
        public Format getAdjustedUpstreamFormat(Format format) {
            if (getUpstreamFormat() == null) {
                MediaExtractorCompatInternal.this.onSampleQueueFormatInitialized(this, format);
            }
            return super.getAdjustedUpstreamFormat(format);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public /* bridge */ /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
            return p0.b(this, dataReader, i2, z6);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
            int i9 = i2 & (-536870913);
            P3.v.checkState(this.mainTrackIndex != -1);
            int writeIndex = getWriteIndex();
            super.sampleMetadata(j7, i9, i7, i8, q0Var);
            if (getWriteIndex() == writeIndex + 1) {
                queueSampleMetadata(j7, i9);
            }
        }

        public void setCompatibilityTrackIndex(int i2) {
            this.compatibilityTrackIndex = i2;
        }

        public void setMainTrackIndex(int i2) {
            this.mainTrackIndex = i2;
        }

        public String toString() {
            int i2 = this.trackId;
            int i7 = this.mainTrackIndex;
            int i8 = this.compatibilityTrackIndex;
            StringBuilder p6 = A.i.p(i2, i7, "trackId: ", ", mainTrackIndex: ", ", compatibilityTrackIndex: ");
            p6.append(i8);
            return p6.toString();
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public /* bridge */ /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
            p0.c(this, parsableByteArray, i2);
        }
    }

    public static final class MediaExtractorTrack {
        public final String compatibilityTrackMimeType;
        public final boolean isCompatibilityTrack;
        public final MediaExtractorSampleQueue sampleQueue;

        /* JADX INFO: Access modifiers changed from: private */
        public Format getFormat(FormatHolder formatHolder, C1665f c1665f) {
            formatHolder.clear();
            this.sampleQueue.read(formatHolder, c1665f, 2, false);
            Format format = (Format) P3.v.checkNotNull(formatHolder.format);
            formatHolder.clear();
            return format;
        }

        public MediaFormat createDownstreamMediaFormat(FormatHolder formatHolder, C1665f c1665f) {
            Format format = getFormat(formatHolder, c1665f);
            MediaFormat createMediaFormatFromFormat = MediaFormatUtil.createMediaFormatFromFormat(format);
            if (this.compatibilityTrackMimeType != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    createMediaFormatFromFormat.removeKey("codecs-string");
                }
                createMediaFormatFromFormat.setString("mime", this.compatibilityTrackMimeType);
            }
            Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
            if (codecProfileAndLevel != null) {
                createMediaFormatFromFormat.setInteger("profile", ((Integer) codecProfileAndLevel.first).intValue());
                createMediaFormatFromFormat.setInteger(FirebaseAnalytics.Param.LEVEL, ((Integer) codecProfileAndLevel.second).intValue());
            }
            return createMediaFormatFromFormat;
        }

        public void discardFrontSample() {
            this.sampleQueue.skip(1);
            this.sampleQueue.discardToRead();
        }

        public int getIdOfBackingTrack() {
            return this.sampleQueue.trackId;
        }

        public String toString() {
            return "MediaExtractorSampleQueue: " + this.sampleQueue + ", isCompatibilityTrack: " + this.isCompatibilityTrack + ", compatibilityTrackMimeType: " + this.compatibilityTrackMimeType;
        }

        private MediaExtractorTrack(MediaExtractorSampleQueue mediaExtractorSampleQueue, boolean z6, String str) {
            this.sampleQueue = mediaExtractorSampleQueue;
            this.isCompatibilityTrack = z6;
            this.compatibilityTrackMimeType = str;
        }
    }

    public static final class SampleMetadataQueue {
        private final ArrayDeque<SampleMetadata> sampleMetadataPool = new ArrayDeque<>();
        private final ArrayDeque<SampleMetadata> sampleMetadataQueue = new ArrayDeque<>();

        public static final class SampleMetadata {
            public int flags;
            public long timeUs;
            public int trackIndex;

            public SampleMetadata(long j7, int i2, int i7) {
                set(j7, i2, i7);
            }

            public void set(long j7, int i2, int i7) {
                this.timeUs = j7;
                this.flags = i2;
                this.trackIndex = i7;
            }
        }

        private SampleMetadata obtainSampleMetadata(long j7, int i2, int i7) {
            SampleMetadata sampleMetadata = this.sampleMetadataPool.isEmpty() ? new SampleMetadata(j7, i2, i7) : this.sampleMetadataPool.pop();
            sampleMetadata.set(j7, i2, i7);
            return sampleMetadata;
        }

        public void addLast(long j7, int i2, int i7) {
            this.sampleMetadataQueue.addLast(obtainSampleMetadata(j7, i2, i7));
        }

        public void clear() {
            Iterator<SampleMetadata> it = this.sampleMetadataQueue.iterator();
            while (it.hasNext()) {
                this.sampleMetadataPool.push(it.next());
            }
            this.sampleMetadataQueue.clear();
        }

        public boolean isEmpty() {
            return this.sampleMetadataQueue.isEmpty();
        }

        public SampleMetadata peekFirst() {
            return this.sampleMetadataQueue.peekFirst();
        }

        public SampleMetadata removeFirst() {
            SampleMetadata removeFirst = this.sampleMetadataQueue.removeFirst();
            this.sampleMetadataPool.push(removeFirst);
            return removeFirst;
        }
    }

    public MediaExtractorCompatInternal(v0.I i2, DataSource.Factory factory) {
        this.extractorsFactory = i2;
        this.dataSourceFactory = factory;
    }

    private boolean advanceToSampleOrEndOfInput() {
        int read;
        try {
            maybeResolvePendingSeek();
            boolean z6 = false;
            while (true) {
                if (this.sampleMetadataQueue.isEmpty()) {
                    if (z6) {
                        return false;
                    }
                    try {
                        read = ((v0.C) P3.v.checkNotNull(this.currentExtractor)).read((v0.D) P3.v.checkNotNull(this.currentExtractorInput), this.positionHolder);
                    } catch (Exception | OutOfMemoryError e3) {
                        Log.w(TAG, "Treating exception as the end of input.", e3);
                    }
                    if (read == -1) {
                        z6 = true;
                    } else if (read == 1) {
                        this.currentExtractorInput = reopenCurrentDataSource(this.positionHolder.f20439a);
                    }
                } else {
                    if (this.selectedTrackIndices.contains(Integer.valueOf(((SampleMetadataQueue.SampleMetadata) P3.v.checkNotNull(this.sampleMetadataQueue.peekFirst())).trackIndex))) {
                        return true;
                    }
                    skipOneSample();
                }
            }
        } catch (IOException e7) {
            Log.w(TAG, "Treating exception as the end of input.", e7);
            return false;
        }
    }

    private DataSpec buildDataSpec(Uri uri, long j7) {
        DataSpec.Builder flags = new DataSpec.Builder().setUri(uri).setPosition(j7).setFlags(6);
        Map<String, String> map = this.httpRequestHeaders;
        if (map != null) {
            flags.setHttpRequestHeaders(map);
        }
        return flags.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$selectExtractor$0(v0.C c7) {
        return c7.getUnderlyingImplementation().getClass().getSimpleName();
    }

    private void maybeResolvePendingSeek() throws IOException {
        h0 h0Var = this.pendingSeek;
        if (h0Var == null) {
            return;
        }
        h0 h0Var2 = (h0) P3.v.checkNotNull(h0Var);
        ((v0.C) P3.v.checkNotNull(this.currentExtractor)).seek(h0Var2.f20475b, h0Var2.f20474a);
        this.currentExtractorInput = reopenCurrentDataSource(h0Var2.f20475b);
        this.pendingSeek = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void onSampleQueueFormatInitialized(MediaExtractorSampleQueue mediaExtractorSampleQueue, Format format) {
        boolean z6 = true;
        this.upstreamFormatsCount++;
        mediaExtractorSampleQueue.setMainTrackIndex(this.tracks.size());
        Object[] objArr = 0;
        this.tracks.add(new MediaExtractorTrack(mediaExtractorSampleQueue, false, null));
        String alternativeCodecMimeType = MediaCodecUtil.getAlternativeCodecMimeType(format);
        if (alternativeCodecMimeType != null) {
            mediaExtractorSampleQueue.setCompatibilityTrackIndex(this.tracks.size());
            this.tracks.add(new MediaExtractorTrack(mediaExtractorSampleQueue, z6, alternativeCodecMimeType));
        }
    }

    private void peekNextSelectedTrackSample(C1665f c1665f) {
        MediaExtractorSampleQueue mediaExtractorSampleQueue = this.tracks.get(((SampleMetadataQueue.SampleMetadata) P3.v.checkNotNull(this.sampleMetadataQueue.peekFirst())).trackIndex).sampleQueue;
        int read = mediaExtractorSampleQueue.read(this.formatHolder, c1665f, 1, false);
        if (read == -5) {
            read = mediaExtractorSampleQueue.read(this.formatHolder, c1665f, 1, false);
        }
        this.formatHolder.clear();
        P3.v.checkState(read == -4);
    }

    private void populatePlatformCryptoInfoParameters(MediaCodec.CryptoInfo cryptoInfo) {
        MediaCodec.CryptoInfo frameworkCryptoInfo = ((C1663d) P3.v.checkNotNull(this.sampleHolderWithBufferReplacementEnabled.cryptoInfo)).getFrameworkCryptoInfo();
        cryptoInfo.numSubSamples = frameworkCryptoInfo.numSubSamples;
        cryptoInfo.numBytesOfClearData = frameworkCryptoInfo.numBytesOfClearData;
        cryptoInfo.numBytesOfEncryptedData = frameworkCryptoInfo.numBytesOfEncryptedData;
        cryptoInfo.key = frameworkCryptoInfo.key;
        cryptoInfo.iv = frameworkCryptoInfo.iv;
        cryptoInfo.mode = frameworkCryptoInfo.mode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void prepareDataSource(DataSource dataSource, DataSpec dataSpec) throws IOException {
        int i2;
        P3.v.checkState(!this.hasBeenPrepared);
        this.hasBeenPrepared = true;
        this.offsetInCurrentFile = dataSpec.position;
        this.currentDataSource = dataSource;
        v0.D c1736u = new C1736u(this.currentDataSource, 0L, dataSource.open(dataSpec));
        v0.C selectExtractor = selectExtractor(c1736u);
        Throwable e3 = null;
        selectExtractor.init(new ExtractorOutputImpl());
        boolean z6 = true;
        while (z6) {
            try {
                i2 = selectExtractor.read(c1736u, this.positionHolder);
            } catch (Exception | OutOfMemoryError e7) {
                e3 = e7;
                i2 = -1;
            }
            boolean z7 = !this.tracksEnded || this.upstreamFormatsCount < this.sampleQueues.size() || this.seekMap == null;
            if (e3 != null || (z7 && i2 == -1)) {
                release();
                throw ParserException.createForMalformedContainer(e3 != null ? "Exception encountered while parsing input media." : "Reached end of input before preparation completed.", e3);
            }
            if (i2 == 1) {
                c1736u = reopenCurrentDataSource(this.positionHolder.f20439a);
            }
            z6 = z7;
        }
        this.currentExtractorInput = c1736u;
        this.currentExtractor = selectExtractor;
    }

    private v0.D reopenCurrentDataSource(long j7) throws IOException {
        DataSource dataSource = (DataSource) P3.v.checkNotNull(this.currentDataSource);
        Uri uri = (Uri) P3.v.checkNotNull(dataSource.getUri());
        DataSourceUtil.closeQuietly(dataSource);
        long open = dataSource.open(buildDataSpec(uri, this.offsetInCurrentFile + j7));
        if (open != -1) {
            open += j7;
        }
        return new C1736u(dataSource, j7, open);
    }

    private v0.C selectExtractor(v0.D d7) throws IOException {
        v0.C c7;
        v0.C[] createExtractors = this.extractorsFactory.createExtractors();
        int length = createExtractors.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                c7 = null;
                break;
            }
            c7 = createExtractors[i2];
            try {
                if (c7.sniff(d7)) {
                    d7.resetPeekPosition();
                    break;
                }
            } catch (EOFException unused) {
            } catch (Throwable th) {
                d7.resetPeekPosition();
                throw th;
            }
            d7.resetPeekPosition();
            i2++;
        }
        if (c7 != null) {
            return c7;
        }
        throw new UnrecognizedInputFormatException("None of the available extractors (" + P3.r.on(", ").join(com.google.common.collect.B.transform(ImmutableList.copyOf(createExtractors), new Z(4))) + ") could read the stream.", (Uri) P3.v.checkNotNull(((DataSource) P3.v.checkNotNull(this.currentDataSource)).getUri()), ImmutableList.of());
    }

    private void skipOneSample() {
        MediaExtractorTrack mediaExtractorTrack = this.tracks.get(this.sampleMetadataQueue.removeFirst().trackIndex);
        if (mediaExtractorTrack.isCompatibilityTrack) {
            return;
        }
        mediaExtractorTrack.discardFrontSample();
    }

    public boolean advance() {
        if (!advanceToSampleOrEndOfInput()) {
            return false;
        }
        skipOneSample();
        return advanceToSampleOrEndOfInput();
    }

    public Allocator getAllocator() {
        return this.allocator;
    }

    public long getCachedDuration() {
        if (!advanceToSampleOrEndOfInput()) {
            return 0L;
        }
        long j7 = Long.MIN_VALUE;
        long j8 = Long.MIN_VALUE;
        for (int i2 = 0; i2 < this.tracks.size(); i2++) {
            MediaExtractorSampleQueue mediaExtractorSampleQueue = this.tracks.get(i2).sampleQueue;
            j8 = Math.max(j8, mediaExtractorSampleQueue.getLargestReadTimestampUs());
            j7 = Math.max(j7, mediaExtractorSampleQueue.getLargestQueuedTimestampUs());
        }
        P3.v.checkState(j7 != Long.MIN_VALUE);
        if (j8 == j7) {
            return 0L;
        }
        return (j7 - (j8 != Long.MIN_VALUE ? j8 : 0L)) + 10000;
    }

    public DrmInitData getDrmInitData() {
        for (int i2 = 0; i2 < this.tracks.size(); i2++) {
            DrmInitData drmInitData = this.tracks.get(i2).getFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled).drmInitData;
            if (drmInitData != null) {
                return drmInitData;
            }
        }
        return null;
    }

    public LogSessionId getLogSessionId() {
        LogSessionId logSessionId;
        LogSessionId logSessionId2 = this.logSessionId;
        if (logSessionId2 != null) {
            return logSessionId2;
        }
        logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        return logSessionId;
    }

    public PersistableBundle getMetrics() {
        String str;
        PersistableBundle persistableBundle = new PersistableBundle();
        v0.C c7 = this.currentExtractor;
        if (c7 != null) {
            persistableBundle.putString("android.media.mediaextractor.fmt", c7.getUnderlyingImplementation().getClass().getSimpleName());
        }
        if (!this.tracks.isEmpty() && (str = this.tracks.get(0).getFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled).containerMimeType) != null) {
            persistableBundle.putString("android.media.mediaextractor.mime", str);
        }
        persistableBundle.putInt("android.media.mediaextractor.ntrk", this.tracks.size());
        return persistableBundle;
    }

    public Map<UUID, byte[]> getPsshInfo() {
        P0.D parsePsshAtom;
        DrmInitData drmInitData = getDrmInitData();
        if (drmInitData == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < drmInitData.schemeDataCount; i2++) {
            byte[] bArr = drmInitData.get(i2).data;
            if (bArr != null && (parsePsshAtom = P0.E.parsePsshAtom(bArr)) != null) {
                hashMap.put(parsePsshAtom.f2498a, parsePsshAtom.f2500c);
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo) {
        if (!advanceToSampleOrEndOfInput() || (this.sampleMetadataQueue.peekFirst().flags & 2) == 0) {
            return false;
        }
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementEnabled);
        populatePlatformCryptoInfoParameters(cryptoInfo);
        return true;
    }

    public int getSampleFlags() {
        if (advanceToSampleOrEndOfInput()) {
            return this.sampleMetadataQueue.peekFirst().flags;
        }
        return -1;
    }

    public long getSampleSize() {
        if (!advanceToSampleOrEndOfInput()) {
            return -1L;
        }
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementEnabled);
        ByteBuffer byteBuffer = (ByteBuffer) P3.v.checkNotNull(this.sampleHolderWithBufferReplacementEnabled.data);
        int position = byteBuffer.position();
        byteBuffer.position(0);
        return position;
    }

    public long getSampleTime() {
        if (advanceToSampleOrEndOfInput()) {
            return this.sampleMetadataQueue.peekFirst().timeUs;
        }
        return -1L;
    }

    public int getSampleTrackIndex() {
        if (advanceToSampleOrEndOfInput()) {
            return this.sampleMetadataQueue.peekFirst().trackIndex;
        }
        return -1;
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public MediaFormat getTrackFormat(int i2) {
        MediaExtractorTrack mediaExtractorTrack = this.tracks.get(i2);
        MediaFormat createDownstreamMediaFormat = mediaExtractorTrack.createDownstreamMediaFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled);
        long j7 = mediaExtractorTrack.sampleQueue.trackDurationUs;
        if (j7 != androidx.media3.common.C.TIME_UNSET) {
            createDownstreamMediaFormat.setLong("durationUs", j7);
            return createDownstreamMediaFormat;
        }
        g0 g0Var = this.seekMap;
        if (g0Var != null && g0Var.getDurationUs() != androidx.media3.common.C.TIME_UNSET) {
            createDownstreamMediaFormat.setLong("durationUs", this.seekMap.getDurationUs());
        }
        return createDownstreamMediaFormat;
    }

    public boolean hasCacheReachedEndOfStream() {
        return getCachedDuration() == 0;
    }

    public int readSampleData(ByteBuffer byteBuffer, int i2) {
        if (!advanceToSampleOrEndOfInput()) {
            return -1;
        }
        byteBuffer.position(i2);
        byteBuffer.limit(byteBuffer.capacity());
        C1665f c1665f = this.sampleHolderWithBufferReplacementDisabled;
        c1665f.data = byteBuffer;
        peekNextSelectedTrackSample(c1665f);
        byteBuffer.flip();
        byteBuffer.position(i2);
        this.sampleHolderWithBufferReplacementDisabled.data = null;
        return byteBuffer.remaining();
    }

    public void release() {
        for (int i2 = 0; i2 < this.sampleQueues.size(); i2++) {
            this.sampleQueues.valueAt(i2).release();
        }
        this.sampleQueues.clear();
        v0.C c7 = this.currentExtractor;
        if (c7 != null) {
            c7.release();
            this.currentExtractor = null;
        }
        this.currentExtractorInput = null;
        this.pendingSeek = null;
        DataSourceUtil.closeQuietly(this.currentDataSource);
        this.currentDataSource = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0082 A[LOOP:0: B:20:0x007a->B:22:0x0082, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void seekTo(long r6, int r8) {
        /*
            r5 = this;
            v0.g0 r0 = r5.seekMap
            if (r0 != 0) goto L5
            return
        L5:
            java.util.Set<java.lang.Integer> r0 = r5.selectedTrackIndices
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L42
            v0.g0 r0 = r5.seekMap
            boolean r2 = r0 instanceof v0.o0
            if (r2 == 0) goto L42
            v0.o0 r0 = (v0.o0) r0
            java.util.ArrayList<androidx.media3.exoplayer.MediaExtractorCompatInternal$MediaExtractorTrack> r2 = r5.tracks
            java.util.Set<java.lang.Integer> r3 = r5.selectedTrackIndices
            java.util.Iterator r3 = r3.iterator()
            java.lang.Object r3 = r3.next()
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            java.lang.Object r2 = r2.get(r3)
            androidx.media3.exoplayer.MediaExtractorCompatInternal$MediaExtractorTrack r2 = (androidx.media3.exoplayer.MediaExtractorCompatInternal.MediaExtractorTrack) r2
            int r2 = r2.getIdOfBackingTrack()
            boolean r3 = r0.isSeekable(r2)
            if (r3 == 0) goto L3d
            v0.e0 r0 = r0.getSeekPoints(r6, r2)
            goto L48
        L3d:
            v0.e0 r0 = r0.getSeekPoints(r6)
            goto L48
        L42:
            v0.g0 r0 = r5.seekMap
            v0.e0 r0 = r0.getSeekPoints(r6)
        L48:
            if (r8 == 0) goto L72
            if (r8 == r1) goto L6f
            r1 = 2
            if (r8 != r1) goto L69
            v0.h0 r8 = r0.f20454b
            long r1 = r8.f20474a
            long r1 = r6 - r1
            long r1 = java.lang.Math.abs(r1)
            v0.h0 r8 = r0.f20453a
            long r3 = r8.f20474a
            long r6 = r6 - r3
            long r6 = java.lang.Math.abs(r6)
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 >= 0) goto L74
            v0.h0 r8 = r0.f20454b
            goto L74
        L69:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            r6.<init>()
            throw r6
        L6f:
            v0.h0 r8 = r0.f20454b
            goto L74
        L72:
            v0.h0 r8 = r0.f20453a
        L74:
            androidx.media3.exoplayer.MediaExtractorCompatInternal$SampleMetadataQueue r6 = r5.sampleMetadataQueue
            r6.clear()
            r6 = 0
        L7a:
            android.util.SparseArray<androidx.media3.exoplayer.MediaExtractorCompatInternal$MediaExtractorSampleQueue> r7 = r5.sampleQueues
            int r7 = r7.size()
            if (r6 >= r7) goto L90
            android.util.SparseArray<androidx.media3.exoplayer.MediaExtractorCompatInternal$MediaExtractorSampleQueue> r7 = r5.sampleQueues
            java.lang.Object r7 = r7.valueAt(r6)
            androidx.media3.exoplayer.MediaExtractorCompatInternal$MediaExtractorSampleQueue r7 = (androidx.media3.exoplayer.MediaExtractorCompatInternal.MediaExtractorSampleQueue) r7
            r7.reset()
            int r6 = r6 + 1
            goto L7a
        L90:
            r5.pendingSeek = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.MediaExtractorCompatInternal.seekTo(long, int):void");
    }

    public void selectTrack(int i2) {
        this.selectedTrackIndices.add(Integer.valueOf(i2));
    }

    public void setDataSource(Uri uri, long j7) throws IOException {
        prepareDataSource(this.dataSourceFactory.createDataSource(), buildDataSpec(uri, j7));
    }

    public void setLogSessionId(LogSessionId logSessionId) {
        boolean equals;
        LogSessionId unused;
        unused = LogSessionId.LOG_SESSION_ID_NONE;
        equals = logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE);
        if (equals) {
            return;
        }
        this.logSessionId = logSessionId;
    }

    public void unselectTrack(int i2) {
        this.selectedTrackIndices.remove(Integer.valueOf(i2));
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) throws IOException {
        if (assetFileDescriptor.getDeclaredLength() == -1) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        setDataSource(fileDescriptor, 0L, -1L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j7, long j8) throws IOException {
        prepareDataSource(new FileDescriptorDataSource(fileDescriptor, j7, j8), buildDataSpec(Uri.EMPTY, 0L));
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException {
        AssetFileDescriptor openAssetFileDescriptor;
        if (Util.isLocalFileUri(uri)) {
            setDataSource((String) P3.v.checkNotNull(uri.getPath()));
            return;
        }
        try {
            openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
        } catch (FileNotFoundException | SecurityException unused) {
        }
        if (openAssetFileDescriptor != null) {
            try {
                setDataSource(openAssetFileDescriptor);
                openAssetFileDescriptor.close();
                return;
            } catch (Throwable th) {
                try {
                    openAssetFileDescriptor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (openAssetFileDescriptor != null) {
            openAssetFileDescriptor.close();
        }
        setDataSource(uri.toString(), map);
    }

    public void setDataSource(String str) throws IOException {
        setDataSource(str, (Map<String, String>) null);
    }

    public void setDataSource(String str, Map<String, String> map) throws IOException {
        this.httpRequestHeaders = map;
        prepareDataSource(this.dataSourceFactory.createDataSource(), buildDataSpec(Uri.parse(str), 0L));
    }

    public void setDataSource(MediaDataSource mediaDataSource) throws IOException {
        prepareDataSource(new MediaDataSourceAdapter(mediaDataSource, false), buildDataSpec(Uri.EMPTY, 0L));
    }
}
