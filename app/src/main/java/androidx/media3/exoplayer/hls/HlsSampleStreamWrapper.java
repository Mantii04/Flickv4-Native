package androidx.media3.exoplayer.hls;

import P3.v;
import Q3.A;
import Q3.C0248s;
import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.hls.HlsChunkSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.collect.ImmutableList;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import u0.C1665f;
import v0.C1740y;
import v0.F;
import v0.g0;
import v0.p0;
import v0.q0;
import v0.r0;

/* loaded from: classes.dex */
final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, F, SampleQueue.UpstreamFormatChangedListener {
    private static final Set<Integer> MAPPABLE_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL = -2;
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL = -3;
    public static final int SAMPLE_QUEUE_INDEX_PENDING = -1;
    private static final String TAG = "HlsSampleStreamWrapper";
    private final Allocator allocator;
    private final Callback callback;
    private final HlsChunkSource chunkSource;
    private Format downstreamTrackFormat;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private DrmInitData drmInitData;
    private final DrmSessionManager drmSessionManager;
    private r0 emsgUnwrappingTrackOutput;
    private int enabledTrackGroupCount;
    private final Handler handler;
    private boolean haveAudioVideoSampleQueues;
    private final ArrayList<HlsSampleStream> hlsSampleStreams;
    private long lastSeekPositionUs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final Loader loader;
    private Chunk loadingChunk;
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable;
    private final ArrayList<HlsMediaChunk> mediaChunks;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private final int metadataType;
    private final Format muxedAudioFormat;
    private final HlsChunkSource.HlsChunkHolder nextChunkHolder;
    private final Runnable onTracksEndedRunnable;
    private Set<TrackGroup> optionalTrackGroups;
    private final Map<String, DrmInitData> overridingDrmInitData;
    private long pendingResetPositionUs;
    private boolean pendingResetUpstreamFormats;
    private boolean prepared;
    private int primarySampleQueueIndex;
    private int primarySampleQueueType;
    private int primaryTrackGroupIndex;
    private final List<HlsMediaChunk> readOnlyMediaChunks;
    private boolean released;
    private long sampleOffsetUs;
    private SparseIntArray sampleQueueIndicesByType;
    private boolean[] sampleQueueIsAudioVideoFlags;
    private Set<Integer> sampleQueueMappingDoneByType;
    private int[] sampleQueueTrackIds;
    private HlsSampleQueue[] sampleQueues;
    private boolean sampleQueuesBuilt;
    private boolean[] sampleQueuesEnabledStates;
    private boolean seenFirstTrackSelection;
    private HlsMediaChunk sourceChunk;
    private int[] trackGroupToSampleQueueIndex;
    private TrackGroupArray trackGroups;
    private final int trackType;
    private boolean tracksEnded;
    private final String uid;
    private Format upstreamTrackFormat;

    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void onPlaylistRefreshRequired(Uri uri);

        void onPrepared();
    }

    public static class EmsgUnwrappingTrackOutput implements r0 {
        private byte[] buffer;
        private int bufferPosition;
        private final r0 delegate;
        private final Format delegateFormat;
        private final G0.b emsgDecoder = new G0.b();
        private Format format;
        private static final Format ID3_FORMAT = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_ID3).build();
        private static final Format EMSG_FORMAT = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_EMSG).build();

        public EmsgUnwrappingTrackOutput(r0 r0Var, int i2) {
            this.delegate = r0Var;
            if (i2 == 1) {
                this.delegateFormat = ID3_FORMAT;
            } else {
                if (i2 != 3) {
                    throw new IllegalArgumentException(A.i.f(i2, "Unknown metadataType: "));
                }
                this.delegateFormat = EMSG_FORMAT;
            }
            this.buffer = new byte[0];
            this.bufferPosition = 0;
        }

        private boolean emsgContainsExpectedWrappedFormat(G0.a aVar) {
            Format wrappedMetadataFormat = aVar.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && Objects.equals(this.delegateFormat.sampleMimeType, wrappedMetadataFormat.sampleMimeType);
        }

        private void ensureBufferCapacity(int i2) {
            byte[] bArr = this.buffer;
            if (bArr.length < i2) {
                this.buffer = Arrays.copyOf(bArr, (i2 / 2) + i2);
            }
        }

        private ParsableByteArray getSampleAndTrimBuffer(int i2, int i7) {
            int i8 = this.bufferPosition - i7;
            ParsableByteArray parsableByteArray = new ParsableByteArray(Arrays.copyOfRange(this.buffer, i8 - i2, i8));
            byte[] bArr = this.buffer;
            System.arraycopy(bArr, i8, bArr, 0, i7);
            this.bufferPosition = i7;
            return parsableByteArray;
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ void durationUs(long j7) {
            p0.a(this, j7);
        }

        @Override // v0.r0
        public void format(Format format) {
            this.format = format;
            this.delegate.format(this.delegateFormat);
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
            return p0.b(this, dataReader, i2, z6);
        }

        @Override // v0.r0
        public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
            v.checkNotNull(this.format);
            ParsableByteArray sampleAndTrimBuffer = getSampleAndTrimBuffer(i7, i8);
            if (!Objects.equals(this.format.sampleMimeType, this.delegateFormat.sampleMimeType)) {
                if (!MimeTypes.APPLICATION_EMSG.equals(this.format.sampleMimeType)) {
                    Log.w(HlsSampleStreamWrapper.TAG, "Ignoring sample for unsupported format: " + this.format.sampleMimeType);
                    return;
                }
                G0.a decode = this.emsgDecoder.decode(sampleAndTrimBuffer);
                if (!emsgContainsExpectedWrappedFormat(decode)) {
                    Log.w(HlsSampleStreamWrapper.TAG, "Ignoring EMSG. Expected it to contain wrapped " + this.delegateFormat.sampleMimeType + " but actual wrapped format: " + decode.getWrappedMetadataFormat());
                    return;
                }
                sampleAndTrimBuffer = new ParsableByteArray((byte[]) v.checkNotNull(decode.getWrappedMetadataBytes()));
            }
            int bytesLeft = sampleAndTrimBuffer.bytesLeft();
            this.delegate.sampleData(sampleAndTrimBuffer, bytesLeft);
            this.delegate.sampleMetadata(j7, i2, bytesLeft, 0, q0Var);
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
            p0.c(this, parsableByteArray, i2);
        }

        @Override // v0.r0
        public int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
            ensureBufferCapacity(this.bufferPosition + i2);
            int read = dataReader.read(this.buffer, this.bufferPosition, i2);
            if (read != -1) {
                this.bufferPosition += read;
                return read;
            }
            if (z6) {
                return -1;
            }
            throw new EOFException();
        }

        @Override // v0.r0
        public void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
            ensureBufferCapacity(this.bufferPosition + i2);
            parsableByteArray.readBytes(this.buffer, this.bufferPosition, i2);
            this.bufferPosition += i2;
        }
    }

    public static final class HlsSampleQueue extends SampleQueue {
        private DrmInitData drmInitData;
        private final Map<String, DrmInitData> overridingDrmInitData;

        private Metadata getAdjustedMetadata(Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i2 = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= length) {
                    i7 = -1;
                    break;
                }
                Metadata.Entry entry = metadata.get(i7);
                if ((entry instanceof J0.o) && HlsMediaChunk.PRIV_TIMESTAMP_FRAME_OWNER.equals(((J0.o) entry).f1473b)) {
                    break;
                }
                i7++;
            }
            if (i7 == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[length - 1];
            while (i2 < length) {
                if (i2 != i7) {
                    entryArr[i2 < i7 ? i2 : i2 - 1] = metadata.get(i2);
                }
                i2++;
            }
            return new Metadata(entryArr);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public /* bridge */ /* synthetic */ void durationUs(long j7) {
            p0.a(this, j7);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue
        public Format getAdjustedUpstreamFormat(Format format) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.drmInitData;
            if (drmInitData2 == null) {
                drmInitData2 = format.drmInitData;
            }
            if (drmInitData2 != null && (drmInitData = this.overridingDrmInitData.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            Metadata adjustedMetadata = getAdjustedMetadata(format.metadata);
            if (drmInitData2 != format.drmInitData || adjustedMetadata != format.metadata) {
                format = format.buildUpon().setDrmInitData(drmInitData2).setMetadata(adjustedMetadata).build();
            }
            return super.getAdjustedUpstreamFormat(format);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public /* bridge */ /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
            return p0.b(this, dataReader, i2, z6);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
            super.sampleMetadata(j7, i2, i7, i8, q0Var);
        }

        public void setDrmInitData(DrmInitData drmInitData) {
            this.drmInitData = drmInitData;
            invalidateUpstreamFormatAdjustment();
        }

        public void setSourceChunk(HlsMediaChunk hlsMediaChunk) {
            sourceId(hlsMediaChunk.uid);
        }

        private HlsSampleQueue(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, Map<String, DrmInitData> map) {
            super(allocator, drmSessionManager, eventDispatcher);
            this.overridingDrmInitData = map;
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, v0.r0
        public /* bridge */ /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
            p0.c(this, parsableByteArray, i2);
        }
    }

    public HlsSampleStreamWrapper(String str, int i2, Callback callback, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, Allocator allocator, long j7, Format format, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, int i7, ReleasableExecutor releasableExecutor) {
        this.uid = str;
        this.trackType = i2;
        this.callback = callback;
        this.chunkSource = hlsChunkSource;
        this.overridingDrmInitData = map;
        this.allocator = allocator;
        this.muxedAudioFormat = format;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.metadataType = i7;
        this.loader = releasableExecutor != null ? new Loader(releasableExecutor) : new Loader("Loader:HlsSampleStreamWrapper");
        this.nextChunkHolder = new HlsChunkSource.HlsChunkHolder();
        this.sampleQueueTrackIds = new int[0];
        Set<Integer> set = MAPPABLE_TYPES;
        this.sampleQueueMappingDoneByType = new HashSet(set.size());
        this.sampleQueueIndicesByType = new SparseIntArray(set.size());
        this.sampleQueues = new HlsSampleQueue[0];
        this.sampleQueueIsAudioVideoFlags = new boolean[0];
        this.sampleQueuesEnabledStates = new boolean[0];
        ArrayList<HlsMediaChunk> arrayList = new ArrayList<>();
        this.mediaChunks = arrayList;
        this.readOnlyMediaChunks = Collections.unmodifiableList(arrayList);
        this.hlsSampleStreams = new ArrayList<>();
        this.maybeFinishPrepareRunnable = new m(this, 0);
        this.onTracksEndedRunnable = new m(this, 1);
        this.handler = Util.createHandlerForCurrentLooper();
        this.lastSeekPositionUs = j7;
        this.pendingResetPositionUs = j7;
    }

    private void assertIsPrepared() {
        v.checkState(this.prepared);
        v.checkNotNull(this.trackGroups);
        v.checkNotNull(this.optionalTrackGroups);
    }

    private void buildTracksFromSampleStreams() {
        Format format;
        int length = this.sampleQueues.length;
        int i2 = -2;
        int i7 = -1;
        int i8 = 0;
        while (true) {
            if (i8 >= length) {
                break;
            }
            String str = ((Format) v.checkNotNull(this.sampleQueues[i8].getUpstreamFormat())).sampleMimeType;
            int i9 = MimeTypes.isVideo(str) ? 2 : MimeTypes.isAudio(str) ? 1 : MimeTypes.isText(str) ? 3 : -2;
            if (getTrackTypeScore(i9) > getTrackTypeScore(i2)) {
                i7 = i8;
                i2 = i9;
            } else if (i9 == i2 && i7 != -1) {
                i7 = -1;
            }
            i8++;
        }
        TrackGroup trackGroup = this.chunkSource.getTrackGroup();
        int i10 = trackGroup.length;
        this.primaryTrackGroupIndex = -1;
        this.trackGroupToSampleQueueIndex = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            this.trackGroupToSampleQueueIndex[i11] = i11;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        int i12 = 0;
        while (i12 < length) {
            Format format2 = (Format) v.checkNotNull(this.sampleQueues[i12].getUpstreamFormat());
            if (i12 == i7) {
                Format[] formatArr = new Format[i10];
                for (int i13 = 0; i13 < i10; i13++) {
                    Format format3 = trackGroup.getFormat(i13);
                    if (i2 == 1 && (format = this.muxedAudioFormat) != null) {
                        format3 = format3.withManifestFormatInfo(format);
                    }
                    formatArr[i13] = i10 == 1 ? format2.withManifestFormatInfo(format3) : deriveFormat(format3, format2, true);
                }
                trackGroupArr[i12] = new TrackGroup(this.uid, formatArr);
                this.primaryTrackGroupIndex = i12;
            } else {
                Format format4 = (i2 == 2 && MimeTypes.isAudio(format2.sampleMimeType)) ? this.muxedAudioFormat : null;
                StringBuilder sb = new StringBuilder();
                sb.append(this.uid);
                sb.append(":muxed:");
                sb.append(i12 < i7 ? i12 : i12 - 1);
                trackGroupArr[i12] = new TrackGroup(sb.toString(), deriveFormat(format4, format2, false));
            }
            i12++;
        }
        this.trackGroups = createTrackGroupArrayWithDrmInfo(trackGroupArr);
        v.checkState(this.optionalTrackGroups == null);
        this.optionalTrackGroups = Collections.EMPTY_SET;
    }

    private boolean canDiscardUpstreamMediaChunksFromIndex(int i2) {
        for (int i7 = i2; i7 < this.mediaChunks.size(); i7++) {
            if (this.mediaChunks.get(i7).shouldSpliceIn()) {
                return false;
            }
        }
        HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(i2);
        for (int i8 = 0; i8 < this.sampleQueues.length; i8++) {
            if (this.sampleQueues[i8].getReadIndex() > hlsMediaChunk.getFirstSampleIndex(i8)) {
                return false;
            }
        }
        return true;
    }

    private static C1740y createDiscardingTrackOutput(int i2, int i7) {
        Log.w(TAG, "Unmapped track with id " + i2 + " of type " + i7);
        return new C1740y();
    }

    private SampleQueue createSampleQueue(int i2, int i7) {
        int length = this.sampleQueues.length;
        boolean z6 = true;
        if (i7 != 1 && i7 != 2) {
            z6 = false;
        }
        HlsSampleQueue hlsSampleQueue = new HlsSampleQueue(this.allocator, this.drmSessionManager, this.drmEventDispatcher, this.overridingDrmInitData);
        hlsSampleQueue.setStartTimeUs(this.lastSeekPositionUs);
        if (z6) {
            hlsSampleQueue.setDrmInitData(this.drmInitData);
        }
        hlsSampleQueue.setSampleOffsetUs(this.sampleOffsetUs);
        HlsMediaChunk hlsMediaChunk = this.sourceChunk;
        if (hlsMediaChunk != null) {
            hlsSampleQueue.setSourceChunk(hlsMediaChunk);
        }
        hlsSampleQueue.setUpstreamFormatChangeListener(this);
        int i8 = length + 1;
        int[] copyOf = Arrays.copyOf(this.sampleQueueTrackIds, i8);
        this.sampleQueueTrackIds = copyOf;
        copyOf[length] = i2;
        this.sampleQueues = (HlsSampleQueue[]) Util.nullSafeArrayAppend(this.sampleQueues, hlsSampleQueue);
        boolean[] copyOf2 = Arrays.copyOf(this.sampleQueueIsAudioVideoFlags, i8);
        this.sampleQueueIsAudioVideoFlags = copyOf2;
        copyOf2[length] = z6;
        this.haveAudioVideoSampleQueues |= z6;
        this.sampleQueueMappingDoneByType.add(Integer.valueOf(i7));
        this.sampleQueueIndicesByType.append(i7, length);
        if (getTrackTypeScore(i7) > getTrackTypeScore(this.primarySampleQueueType)) {
            this.primarySampleQueueIndex = length;
            this.primarySampleQueueType = i7;
        }
        this.sampleQueuesEnabledStates = Arrays.copyOf(this.sampleQueuesEnabledStates, i8);
        return hlsSampleQueue;
    }

    private TrackGroupArray createTrackGroupArrayWithDrmInfo(TrackGroup[] trackGroupArr) {
        for (int i2 = 0; i2 < trackGroupArr.length; i2++) {
            TrackGroup trackGroup = trackGroupArr[i2];
            Format[] formatArr = new Format[trackGroup.length];
            for (int i7 = 0; i7 < trackGroup.length; i7++) {
                Format format = trackGroup.getFormat(i7);
                formatArr[i7] = format.copyWithCryptoType(this.drmSessionManager.getCryptoType(format));
            }
            trackGroupArr[i2] = new TrackGroup(trackGroup.id, formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    private static Format deriveFormat(Format format, Format format2, boolean z6) {
        String codecsCorrespondingToMimeType;
        String str;
        if (format == null) {
            return format2;
        }
        int trackType = MimeTypes.getTrackType(format2.sampleMimeType);
        if (Util.getCodecCountOfType(format.codecs, trackType) == 1) {
            codecsCorrespondingToMimeType = Util.getCodecsOfType(format.codecs, trackType);
            str = MimeTypes.getMediaMimeType(codecsCorrespondingToMimeType);
        } else {
            codecsCorrespondingToMimeType = MimeTypes.getCodecsCorrespondingToMimeType(format.codecs, format2.sampleMimeType);
            str = format2.sampleMimeType;
        }
        Format.Builder codecs = format2.buildUpon().setId(format.id).setLabel(format.label).setLabels(format.labels).setLanguage(format.language).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).setAverageBitrate(z6 ? format.averageBitrate : -1).setPeakBitrate(z6 ? format.peakBitrate : -1).setCodecs(codecsCorrespondingToMimeType);
        if (trackType == 2) {
            codecs.setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate);
        }
        if (str != null) {
            codecs.setSampleMimeType(str);
        }
        int i2 = format.channelCount;
        if (i2 != -1 && trackType == 1) {
            codecs.setChannelCount(i2);
        }
        Metadata metadata = format.metadata;
        if (metadata != null) {
            Metadata metadata2 = format2.metadata;
            if (metadata2 != null) {
                metadata = metadata2.copyWithAppendedEntriesFrom(metadata);
            }
            codecs.setMetadata(metadata);
        }
        return codecs.build();
    }

    private void discardUpstream(int i2) {
        v.checkState(!this.loader.isLoading());
        while (true) {
            if (i2 >= this.mediaChunks.size()) {
                i2 = -1;
                break;
            } else if (canDiscardUpstreamMediaChunksFromIndex(i2)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return;
        }
        long j7 = getLastMediaChunk().endTimeUs;
        HlsMediaChunk discardUpstreamMediaChunksFromIndex = discardUpstreamMediaChunksFromIndex(i2);
        if (this.mediaChunks.isEmpty()) {
            this.pendingResetPositionUs = this.lastSeekPositionUs;
        } else {
            ((HlsMediaChunk) A.getLast(this.mediaChunks)).invalidateExtractor();
        }
        this.loadingFinished = false;
        this.mediaSourceEventDispatcher.upstreamDiscarded(this.primarySampleQueueType, discardUpstreamMediaChunksFromIndex.startTimeUs, j7);
    }

    private HlsMediaChunk discardUpstreamMediaChunksFromIndex(int i2) {
        HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(i2);
        ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
        Util.removeRange(arrayList, i2, arrayList.size());
        for (int i7 = 0; i7 < this.sampleQueues.length; i7++) {
            this.sampleQueues[i7].discardUpstreamSamples(hlsMediaChunk.getFirstSampleIndex(i7));
        }
        return hlsMediaChunk;
    }

    private boolean finishedReadingChunk(HlsMediaChunk hlsMediaChunk) {
        int i2 = hlsMediaChunk.uid;
        int length = this.sampleQueues.length;
        for (int i7 = 0; i7 < length; i7++) {
            if (this.sampleQueuesEnabledStates[i7] && this.sampleQueues[i7].peekSourceId() == i2) {
                return false;
            }
        }
        return true;
    }

    private static boolean formatsMatch(Format format, Format format2) {
        String str = format.sampleMimeType;
        String str2 = format2.sampleMimeType;
        int trackType = MimeTypes.getTrackType(str);
        if (trackType != 3) {
            return trackType == MimeTypes.getTrackType(str2);
        }
        if (Objects.equals(str, str2)) {
            return !(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str)) || format.accessibilityChannel == format2.accessibilityChannel;
        }
        return false;
    }

    private HlsMediaChunk getLastMediaChunk() {
        return (HlsMediaChunk) b.c.h(1, this.mediaChunks);
    }

    private r0 getMappedTrackOutput(int i2, int i7) {
        v.checkArgument(MAPPABLE_TYPES.contains(Integer.valueOf(i7)));
        int i8 = this.sampleQueueIndicesByType.get(i7, -1);
        if (i8 == -1) {
            return null;
        }
        if (this.sampleQueueMappingDoneByType.add(Integer.valueOf(i7))) {
            this.sampleQueueTrackIds[i8] = i2;
        }
        return this.sampleQueueTrackIds[i8] == i2 ? this.sampleQueues[i8] : createDiscardingTrackOutput(i2, i7);
    }

    private static int getTrackTypeScore(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 1;
        }
        return 3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initMediaChunkLoad(HlsMediaChunk hlsMediaChunk) {
        this.sourceChunk = hlsMediaChunk;
        this.upstreamTrackFormat = hlsMediaChunk.trackFormat;
        this.pendingResetPositionUs = C.TIME_UNSET;
        this.mediaChunks.add(hlsMediaChunk);
        C0248s builder = ImmutableList.builder();
        for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            builder.add((Object) Integer.valueOf(hlsSampleQueue.getWriteIndex()));
        }
        hlsMediaChunk.init(this, builder.build());
        for (HlsSampleQueue hlsSampleQueue2 : this.sampleQueues) {
            hlsSampleQueue2.setSourceChunk(hlsMediaChunk);
            if (hlsMediaChunk.shouldSpliceIn()) {
                hlsSampleQueue2.splice();
            }
        }
    }

    private static boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof HlsMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPlaylistUpdated$0(HlsMediaChunk hlsMediaChunk) {
        this.callback.onPlaylistRefreshRequired(hlsMediaChunk.playlistUrl);
    }

    private void mapSampleQueuesToMatchTrackGroups() {
        int i2 = this.trackGroups.length;
        int[] iArr = new int[i2];
        this.trackGroupToSampleQueueIndex = iArr;
        Arrays.fill(iArr, -1);
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = 0;
            while (true) {
                HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
                if (i8 >= hlsSampleQueueArr.length) {
                    break;
                }
                if (formatsMatch((Format) v.checkNotNull(hlsSampleQueueArr[i8].getUpstreamFormat()), this.trackGroups.get(i7).getFormat(0))) {
                    this.trackGroupToSampleQueueIndex[i7] = i8;
                    break;
                }
                i8++;
            }
        }
        Iterator<HlsSampleStream> it = this.hlsSampleStreams.iterator();
        while (it.hasNext()) {
            it.next().bindSampleQueue();
        }
    }

    private void maybeDiscardUpstreamForNewMediaChunk(HlsMediaChunk hlsMediaChunk) {
        if (this.mediaChunks.isEmpty()) {
            return;
        }
        if (!getLastMediaChunk().isPublished()) {
            discardUpstream(this.mediaChunks.size() - 1);
        }
        if (hlsMediaChunk.isIndependent && hlsMediaChunk.shouldSpliceIn()) {
            for (int size = this.mediaChunks.size() - 1; size >= 0; size--) {
                long j7 = this.mediaChunks.get(size).startTimeUs;
                long j8 = hlsMediaChunk.startTimeUs;
                if (j7 < j8) {
                    return;
                }
                if (j7 == j8 && canDiscardUpstreamMediaChunksFromIndex(size)) {
                    discardUpstream(size);
                    hlsMediaChunk.clearShouldSpliceIn();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        if (!this.released && this.trackGroupToSampleQueueIndex == null && this.sampleQueuesBuilt) {
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                if (hlsSampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            if (this.trackGroups != null) {
                mapSampleQueuesToMatchTrackGroups();
                return;
            }
            buildTracksFromSampleStreams();
            setIsPrepared();
            this.callback.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTracksEnded() {
        this.sampleQueuesBuilt = true;
        maybeFinishPrepare();
    }

    private void resetSampleQueues() {
        for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            hlsSampleQueue.reset(this.pendingResetUpstreamFormats);
        }
        this.pendingResetUpstreamFormats = false;
    }

    private boolean seekInsideBufferUs(long j7, HlsMediaChunk hlsMediaChunk) {
        boolean seekTo;
        int length = this.sampleQueues.length;
        int i2 = 0;
        while (true) {
            boolean z6 = true;
            if (i2 >= length) {
                return true;
            }
            HlsSampleQueue hlsSampleQueue = this.sampleQueues[i2];
            if (hlsMediaChunk != null) {
                seekTo = hlsSampleQueue.seekTo(hlsMediaChunk.getFirstSampleIndex(i2));
            } else {
                long nextLoadPositionUs = getNextLoadPositionUs();
                if (nextLoadPositionUs != Long.MIN_VALUE && j7 >= nextLoadPositionUs) {
                    z6 = false;
                }
                seekTo = hlsSampleQueue.seekTo(j7, z6);
            }
            if (seekTo || (!this.sampleQueueIsAudioVideoFlags[i2] && this.haveAudioVideoSampleQueues)) {
                i2++;
            }
        }
        return false;
    }

    private void setIsPrepared() {
        this.prepared = true;
    }

    private void updateSampleStreams(SampleStream[] sampleStreamArr) {
        this.hlsSampleStreams.clear();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream != null) {
                this.hlsSampleStreams.add((HlsSampleStream) sampleStream);
            }
        }
    }

    public int bindSampleQueueToSampleStream(int i2) {
        assertIsPrepared();
        v.checkNotNull(this.trackGroupToSampleQueueIndex);
        int i7 = this.trackGroupToSampleQueueIndex[i2];
        if (i7 == -1) {
            return this.optionalTrackGroups.contains(this.trackGroups.get(i2)) ? -3 : -2;
        }
        boolean[] zArr = this.sampleQueuesEnabledStates;
        if (zArr[i7]) {
            return -2;
        }
        zArr[i7] = true;
        return i7;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        List<HlsMediaChunk> list;
        long j7;
        long j8;
        if (this.loadingFinished || this.loader.isLoading() || this.loader.hasFatalError()) {
            return false;
        }
        if (isPendingReset()) {
            List<HlsMediaChunk> list2 = Collections.EMPTY_LIST;
            long j9 = this.pendingResetPositionUs;
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.setStartTimeUs(this.pendingResetPositionUs);
            }
            list = list2;
            j7 = j9;
            j8 = j7;
        } else {
            List<HlsMediaChunk> list3 = this.readOnlyMediaChunks;
            HlsMediaChunk lastMediaChunk = getLastMediaChunk();
            long publishedEndTimeUs = (lastMediaChunk.isLoadCompleted() && lastMediaChunk.isPublished()) ? lastMediaChunk.getPublishedEndTimeUs() : Math.max(this.lastSeekPositionUs, lastMediaChunk.startTimeUs);
            long j10 = this.lastSeekPositionUs;
            if (this.sampleQueuesBuilt) {
                for (HlsSampleQueue hlsSampleQueue2 : this.sampleQueues) {
                    j10 = Math.max(j10, hlsSampleQueue2.getLargestReadTimestampUs());
                }
            }
            list = list3;
            j7 = publishedEndTimeUs;
            j8 = j10;
        }
        this.nextChunkHolder.clear();
        this.chunkSource.getNextChunk(loadingInfo, j7, j8, list, this.prepared || !list.isEmpty(), this.nextChunkHolder);
        HlsChunkSource.HlsChunkHolder hlsChunkHolder = this.nextChunkHolder;
        boolean z6 = hlsChunkHolder.endOfStream;
        Chunk chunk = hlsChunkHolder.chunk;
        Uri uri = hlsChunkHolder.playlistUrl;
        if (z6) {
            this.pendingResetPositionUs = C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        }
        if (chunk == null) {
            if (uri != null) {
                this.callback.onPlaylistRefreshRequired(uri);
            }
            return false;
        }
        if (isMediaChunk(chunk)) {
            HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) chunk;
            maybeDiscardUpstreamForNewMediaChunk(hlsMediaChunk);
            initMediaChunkLoad(hlsMediaChunk);
        }
        this.loadingChunk = chunk;
        this.loader.startLoading(chunk, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(chunk.type));
        return true;
    }

    public void continuePreparing() {
        if (this.prepared) {
            return;
        }
        continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(this.lastSeekPositionUs).build());
    }

    public void discardBuffer(long j7, boolean z6) {
        if (!this.sampleQueuesBuilt || isPendingReset()) {
            return;
        }
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.sampleQueues[i2].discardTo(j7, z6, this.sampleQueuesEnabledStates[i2]);
        }
    }

    @Override // v0.F
    public void endTracks() {
        this.tracksEnded = true;
        this.handler.post(this.onTracksEndedRunnable);
    }

    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        return this.chunkSource.getAdjustedSeekPositionUs(j7, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        long j7 = this.lastSeekPositionUs;
        HlsMediaChunk lastMediaChunk = getLastMediaChunk();
        if (!lastMediaChunk.isLoadCompleted()) {
            lastMediaChunk = this.mediaChunks.size() > 1 ? (HlsMediaChunk) b.c.h(2, this.mediaChunks) : null;
        }
        if (lastMediaChunk != null) {
            j7 = Math.max(j7, lastMediaChunk.endTimeUs);
        }
        if (this.sampleQueuesBuilt) {
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                j7 = Math.max(j7, hlsSampleQueue.getLargestQueuedTimestampUs());
            }
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return getLastMediaChunk().endTimeUs;
    }

    public int getPrimaryTrackGroupIndex() {
        return this.primaryTrackGroupIndex;
    }

    public TrackGroupArray getTrackGroups() {
        assertIsPrepared();
        return this.trackGroups;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.isLoading();
    }

    public boolean isReady(int i2) {
        return !isPendingReset() && this.sampleQueues[i2].isReady(this.loadingFinished);
    }

    public boolean isVideoSampleStream() {
        return this.primarySampleQueueType == 2;
    }

    public void maybeThrowError(int i2) throws IOException {
        maybeThrowError();
        this.sampleQueues[i2].maybeThrowError();
    }

    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
        if (this.loadingFinished && !this.prepared) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            hlsSampleQueue.release();
        }
    }

    public void onNewExtractor() {
        this.sampleQueueMappingDoneByType.clear();
    }

    public boolean onPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor;
        if (this.chunkSource.obtainsChunksForPlaylist(uri)) {
            return this.chunkSource.onPlaylistError(uri, (z6 || (fallbackSelectionFor = this.loadErrorHandlingPolicy.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.chunkSource.getTrackSelection()), loadErrorInfo)) == null || fallbackSelectionFor.type != 2) ? C.TIME_UNSET : fallbackSelectionFor.exclusionDurationMs);
        }
        return true;
    }

    public void onPlaylistUpdated() {
        if (this.mediaChunks.isEmpty()) {
            return;
        }
        final HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) A.getLast(this.mediaChunks);
        int chunkPublicationState = this.chunkSource.getChunkPublicationState(hlsMediaChunk);
        if (chunkPublicationState == 1) {
            if (hlsMediaChunk.isPublished()) {
                return;
            }
            hlsMediaChunk.publish(this.chunkSource.getPublishedPartDurationUs(hlsMediaChunk));
        } else if (chunkPublicationState == 0) {
            this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.hls.n
                @Override // java.lang.Runnable
                public final void run() {
                    HlsSampleStreamWrapper.this.lambda$onPlaylistUpdated$0(hlsMediaChunk);
                }
            });
        } else if (chunkPublicationState == 2 && !this.loadingFinished && this.loader.isLoading()) {
            this.loader.cancelLoading();
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    public void prepareWithMultivariantPlaylistInfo(TrackGroup[] trackGroupArr, int i2, int... iArr) {
        this.trackGroups = createTrackGroupArrayWithDrmInfo(trackGroupArr);
        this.optionalTrackGroups = new HashSet();
        for (int i7 : iArr) {
            this.optionalTrackGroups.add(this.trackGroups.get(i7));
        }
        this.primaryTrackGroupIndex = i2;
        Handler handler = this.handler;
        Callback callback = this.callback;
        Objects.requireNonNull(callback);
        handler.post(new m(callback, 2));
        setIsPrepared();
    }

    public int readData(int i2, FormatHolder formatHolder, C1665f c1665f, int i7) {
        if (isPendingReset()) {
            return -3;
        }
        int i8 = 0;
        if (!this.mediaChunks.isEmpty()) {
            int i9 = 0;
            while (i9 < this.mediaChunks.size() - 1 && finishedReadingChunk(this.mediaChunks.get(i9))) {
                i9++;
            }
            Util.removeRange(this.mediaChunks, 0, i9);
            HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(0);
            Format format = hlsMediaChunk.trackFormat;
            if (!format.equals(this.downstreamTrackFormat)) {
                this.mediaSourceEventDispatcher.downstreamFormatChanged(this.trackType, format, hlsMediaChunk.trackSelectionReason, hlsMediaChunk.trackSelectionData, hlsMediaChunk.startTimeUs);
            }
            this.downstreamTrackFormat = format;
        }
        if (!this.mediaChunks.isEmpty() && !this.mediaChunks.get(0).isPublished()) {
            return -3;
        }
        int read = this.sampleQueues[i2].read(formatHolder, c1665f, i7, this.loadingFinished);
        if (read == -5) {
            Format format2 = (Format) v.checkNotNull(formatHolder.format);
            if (i2 == this.primarySampleQueueIndex) {
                int checkedCast = com.google.common.primitives.a.checkedCast(this.sampleQueues[i2].peekSourceId());
                while (i8 < this.mediaChunks.size() && this.mediaChunks.get(i8).uid != checkedCast) {
                    i8++;
                }
                format2 = format2.withManifestFormatInfo(i8 < this.mediaChunks.size() ? this.mediaChunks.get(i8).trackFormat : (Format) v.checkNotNull(this.upstreamTrackFormat));
            }
            formatHolder.format = format2;
        }
        return read;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
        if (this.loader.hasFatalError() || isPendingReset()) {
            return;
        }
        if (this.loader.isLoading()) {
            v.checkNotNull(this.loadingChunk);
            if (this.chunkSource.shouldCancelLoad(j7, this.loadingChunk, this.readOnlyMediaChunks)) {
                this.loader.cancelLoading();
                return;
            }
            return;
        }
        int size = this.readOnlyMediaChunks.size();
        while (size > 0 && this.chunkSource.getChunkPublicationState(this.readOnlyMediaChunks.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.readOnlyMediaChunks.size()) {
            discardUpstream(size);
        }
        int preferredQueueSize = this.chunkSource.getPreferredQueueSize(j7, this.readOnlyMediaChunks);
        if (preferredQueueSize < this.mediaChunks.size()) {
            discardUpstream(preferredQueueSize);
        }
    }

    public void release() {
        if (this.prepared) {
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.preRelease();
            }
        }
        this.chunkSource.reset();
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.released = true;
        this.hlsSampleStreams.clear();
    }

    public boolean seekToUs(long j7, boolean z6) {
        HlsMediaChunk hlsMediaChunk;
        this.lastSeekPositionUs = j7;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j7;
            return true;
        }
        if (this.chunkSource.hasIndependentSegments()) {
            for (int i2 = 0; i2 < this.mediaChunks.size(); i2++) {
                hlsMediaChunk = this.mediaChunks.get(i2);
                if (hlsMediaChunk.startTimeUs == j7) {
                    break;
                }
            }
        }
        hlsMediaChunk = null;
        if (this.sampleQueuesBuilt && !z6 && !this.mediaChunks.isEmpty() && seekInsideBufferUs(j7, hlsMediaChunk)) {
            return false;
        }
        this.pendingResetPositionUs = j7;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        if (this.loader.isLoading()) {
            if (this.sampleQueuesBuilt) {
                for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                    hlsSampleQueue.discardToEnd();
                }
            }
            this.loader.cancelLoading();
        } else {
            this.loader.clearFatalError();
            resetSampleQueues();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x010d, code lost:
    
        if (r1.getSelectedIndexInTrackGroup() != r13.chunkSource.getTrackGroup().indexOf(r14.trackFormat)) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean selectTracks(androidx.media3.exoplayer.trackselection.ExoTrackSelection[] r14, boolean[] r15, androidx.media3.exoplayer.source.SampleStream[] r16, boolean[] r17, long r18, boolean r20) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.selectTracks(androidx.media3.exoplayer.trackselection.ExoTrackSelection[], boolean[], androidx.media3.exoplayer.source.SampleStream[], boolean[], long, boolean):boolean");
    }

    public void setDrmInitData(DrmInitData drmInitData) {
        if (Objects.equals(this.drmInitData, drmInitData)) {
            return;
        }
        this.drmInitData = drmInitData;
        int i2 = 0;
        while (true) {
            HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
            if (i2 >= hlsSampleQueueArr.length) {
                return;
            }
            if (this.sampleQueueIsAudioVideoFlags[i2]) {
                hlsSampleQueueArr[i2].setDrmInitData(drmInitData);
            }
            i2++;
        }
    }

    public void setIsPrimaryTimestampSource(boolean z6) {
        this.chunkSource.setIsPrimaryTimestampSource(z6);
    }

    public void setSampleOffsetUs(long j7) {
        if (this.sampleOffsetUs != j7) {
            this.sampleOffsetUs = j7;
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.setSampleOffsetUs(j7);
            }
        }
    }

    public int skipData(int i2, long j7) {
        if (isPendingReset()) {
            return 0;
        }
        HlsSampleQueue hlsSampleQueue = this.sampleQueues[i2];
        int skipCount = hlsSampleQueue.getSkipCount(j7, this.loadingFinished);
        HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) A.getLast(this.mediaChunks, null);
        if (hlsMediaChunk != null && !hlsMediaChunk.isPublished()) {
            skipCount = Math.min(skipCount, hlsMediaChunk.getFirstSampleIndex(i2) - hlsSampleQueue.getReadIndex());
        }
        hlsSampleQueue.skip(skipCount);
        return skipCount;
    }

    @Override // v0.F
    public r0 track(int i2, int i7) {
        r0 r0Var;
        if (!MAPPABLE_TYPES.contains(Integer.valueOf(i7))) {
            int i8 = 0;
            while (true) {
                r0[] r0VarArr = this.sampleQueues;
                if (i8 >= r0VarArr.length) {
                    r0Var = null;
                    break;
                }
                if (this.sampleQueueTrackIds[i8] == i2) {
                    r0Var = r0VarArr[i8];
                    break;
                }
                i8++;
            }
        } else {
            r0Var = getMappedTrackOutput(i2, i7);
        }
        if (r0Var == null) {
            if (this.tracksEnded) {
                return createDiscardingTrackOutput(i2, i7);
            }
            r0Var = createSampleQueue(i2, i7);
        }
        if (i7 != 5) {
            return r0Var;
        }
        if (this.emsgUnwrappingTrackOutput == null) {
            this.emsgUnwrappingTrackOutput = new EmsgUnwrappingTrackOutput(r0Var, this.metadataType);
        }
        return this.emsgUnwrappingTrackOutput;
    }

    public void unbindSampleQueue(int i2) {
        assertIsPrepared();
        v.checkNotNull(this.trackGroupToSampleQueueIndex);
        int i7 = this.trackGroupToSampleQueueIndex[i2];
        v.checkState(this.sampleQueuesEnabledStates[i7]);
        this.sampleQueuesEnabledStates[i7] = false;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Chunk chunk, long j7, long j8, boolean z6) {
        this.loadingChunk = null;
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j7, j8, chunk.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (z6) {
            return;
        }
        if (isPendingReset() || this.enabledTrackGroupCount == 0) {
            resetSampleQueues();
        }
        if (this.enabledTrackGroupCount > 0) {
            this.callback.onContinueLoadingRequested(this);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Chunk chunk, long j7, long j8) {
        this.loadingChunk = null;
        this.chunkSource.onChunkLoadCompleted(chunk);
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j7, j8, chunk.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (this.prepared) {
            this.callback.onContinueLoadingRequested(this);
        } else {
            continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(this.lastSeekPositionUs).build());
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(Chunk chunk, long j7, long j8, IOException iOException, int i2) {
        Loader.LoadErrorAction createRetryAction;
        int i7;
        boolean isMediaChunk = isMediaChunk(chunk);
        if (isMediaChunk && !((HlsMediaChunk) chunk).isPublished() && (iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((i7 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode) == 410 || i7 == 404)) {
            return Loader.RETRY;
        }
        long bytesLoaded = chunk.bytesLoaded();
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j7, j8, bytesLoaded);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, Util.usToMs(chunk.startTimeUs), Util.usToMs(chunk.endTimeUs)), iOException, i2);
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = this.loadErrorHandlingPolicy.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.chunkSource.getTrackSelection()), loadErrorInfo);
        boolean maybeExcludeTrack = (fallbackSelectionFor == null || fallbackSelectionFor.type != 2) ? false : this.chunkSource.maybeExcludeTrack(chunk, fallbackSelectionFor.exclusionDurationMs);
        if (maybeExcludeTrack) {
            if (isMediaChunk && bytesLoaded == 0) {
                ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
                v.checkState(arrayList.remove(arrayList.size() - 1) == chunk);
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                } else {
                    ((HlsMediaChunk) A.getLast(this.mediaChunks)).invalidateExtractor();
                }
            }
            createRetryAction = Loader.DONT_RETRY;
        } else {
            long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(loadErrorInfo);
            createRetryAction = retryDelayMsFor != C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = createRetryAction;
        boolean isRetry = loadErrorAction.isRetry();
        this.mediaSourceEventDispatcher.loadError(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, iOException, !isRetry);
        if (!isRetry) {
            this.loadingChunk = null;
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(chunk.loadTaskId);
        }
        if (maybeExcludeTrack) {
            if (!this.prepared) {
                continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(this.lastSeekPositionUs).build());
                return loadErrorAction;
            }
            this.callback.onContinueLoadingRequested(this);
        }
        return loadErrorAction;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadStarted(Chunk chunk, long j7, long j8, int i2) {
        this.mediaSourceEventDispatcher.loadStarted(i2 == 0 ? new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, j7) : new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j7, j8, chunk.bytesLoaded()), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, i2);
    }

    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        this.chunkSource.maybeThrowError();
    }

    @Override // v0.F
    public void seekMap(g0 g0Var) {
    }
}
