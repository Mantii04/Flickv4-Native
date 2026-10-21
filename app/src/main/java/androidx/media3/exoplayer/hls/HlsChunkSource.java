package androidx.media3.exoplayer.hls;

import P3.v;
import Q3.A;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.DataChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
class HlsChunkSource {
    public static final int CHUNK_PUBLICATION_STATE_PRELOAD = 0;
    public static final int CHUNK_PUBLICATION_STATE_PUBLISHED = 1;
    public static final int CHUNK_PUBLICATION_STATE_REMOVED = 2;
    private static final int KEY_CACHE_SIZE = 4;
    private final CmcdConfiguration cmcdConfiguration;
    private final DataSource encryptionDataSource;
    private final HlsExtractorFactory extractorFactory;
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isPrimaryTimestampSource;
    private Uri lastPlaylistErrorUrl;
    private final DataSource mediaDataSource;
    private final List<Format> muxedCaptionFormats;
    private Uri nextChunkStuckOnPlaylistUrl;
    private final PlayerId playerId;
    private final Format[] playlistFormats;
    private final HlsPlaylistTracker playlistTracker;
    private final Uri[] playlistUrls;
    private final long timestampAdjusterInitializationTimeoutMs;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private ExoTrackSelection trackSelection;
    private long lastChunkRequestRealtimeMs = C.TIME_UNSET;
    private final FullSegmentEncryptionKeyCache keyCache = new FullSegmentEncryptionKeyCache(4);
    private byte[] scratchSpace = Util.EMPTY_BYTE_ARRAY;
    private long liveEdgeInPeriodTimeUs = C.TIME_UNSET;

    public static final class EncryptionKeyChunk extends DataChunk {
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i2, obj, bArr);
        }

        @Override // androidx.media3.exoplayer.source.chunk.DataChunk
        public void consume(byte[] bArr, int i2) {
            this.result = Arrays.copyOf(bArr, i2);
        }

        public byte[] getResult() {
            return this.result;
        }
    }

    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public Uri playlistUrl;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }
    }

    public static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {
        private final String playlistBaseUri;
        private final List<HlsMediaPlaylist.SegmentBase> segmentBases;
        private final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(String str, long j7, List<HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.playlistBaseUri = str;
            this.startOfPlaylistInPeriodUs = j7;
            this.segmentBases = list;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return this.startOfPlaylistInPeriodUs + segmentBase.relativeStartTimeUs + segmentBase.durationUs;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.startOfPlaylistInPeriodUs + this.segmentBases.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) getCurrentIndex());
            return new DataSpec(UriUtil.resolveToUri(this.playlistBaseUri, segmentBase.url), segmentBase.byteRangeOffset, segmentBase.byteRangeLength);
        }
    }

    public static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(iArr[0]));
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j7, long j8, long j9, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (isTrackExcluded(this.selectedIndex, elapsedRealtime)) {
                for (int i2 = this.length - 1; i2 >= 0; i2--) {
                    if (!isTrackExcluded(i2, elapsedRealtime)) {
                        this.selectedIndex = i2;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    public static final class SegmentBaseHolder {
        public final boolean isPreload;
        public final long mediaSequence;
        public final int partIndex;
        public final HlsMediaPlaylist.SegmentBase segmentBase;

        public SegmentBaseHolder(HlsMediaPlaylist.SegmentBase segmentBase, long j7, int i2) {
            this.segmentBase = segmentBase;
            this.mediaSequence = j7;
            this.partIndex = i2;
            this.isPreload = (segmentBase instanceof HlsMediaPlaylist.Part) && ((HlsMediaPlaylist.Part) segmentBase).isPreload;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, long j7, List<Format> list, PlayerId playerId, CmcdConfiguration cmcdConfiguration) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.playlistUrls = uriArr;
        this.playlistFormats = formatArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.timestampAdjusterInitializationTimeoutMs = j7;
        this.muxedCaptionFormats = list;
        this.playerId = playerId;
        this.cmcdConfiguration = cmcdConfiguration;
        DataSource createDataSource = hlsDataSourceFactory.createDataSource(1);
        this.mediaDataSource = createDataSource;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < uriArr.length; i2++) {
            if ((formatArr[i2].roleFlags & 16384) == 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, com.google.common.primitives.a.toArray(arrayList));
    }

    private void deactivatePlaylistForSelectedTrack() {
        this.playlistTracker.deactivatePlaylistForPlayback(this.playlistUrls[this.trackSelection.getSelectedIndexInTrackGroup()]);
    }

    private static Uri getFullEncryptionKeyUri(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist.SegmentBase segmentBase) {
        String str;
        if (segmentBase == null || (str = segmentBase.fullSegmentEncryptionKeyUri) == null) {
            return null;
        }
        return UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, str);
    }

    private Pair<Long, Integer> getNextMediaSequenceAndPartIndex(HlsMediaChunk hlsMediaChunk, boolean z6, HlsMediaPlaylist hlsMediaPlaylist, long j7, long j8) {
        List<HlsMediaPlaylist.Part> list;
        if (hlsMediaChunk != null && !z6) {
            if (!hlsMediaChunk.isLoadCompleted()) {
                return new Pair<>(Long.valueOf(hlsMediaChunk.chunkIndex), Integer.valueOf(hlsMediaChunk.partIndex));
            }
            Long valueOf = Long.valueOf(hlsMediaChunk.partIndex == -1 ? hlsMediaChunk.getNextChunkIndex() : hlsMediaChunk.chunkIndex);
            int i2 = hlsMediaChunk.partIndex;
            return new Pair<>(valueOf, Integer.valueOf(i2 != -1 ? i2 + 1 : -1));
        }
        long j9 = hlsMediaPlaylist.durationUs + j7;
        if (hlsMediaChunk != null && !this.independentSegments) {
            j8 = hlsMediaChunk.startTimeUs;
        }
        if (!hlsMediaPlaylist.hasEndTag && j8 >= j9) {
            return new Pair<>(Long.valueOf(hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()), -1);
        }
        long j10 = j8 - j7;
        int i7 = 0;
        int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) hlsMediaPlaylist.segments, Long.valueOf(j10), true, !this.playlistTracker.isLive() || hlsMediaChunk == null);
        long j11 = binarySearchFloor + hlsMediaPlaylist.mediaSequence;
        if (!this.playlistTracker.isLive()) {
            return new Pair<>(Long.valueOf(j11), -1);
        }
        if (binarySearchFloor >= 0) {
            if (hlsMediaPlaylist.segments.isEmpty()) {
                list = hlsMediaPlaylist.trailingParts;
            } else {
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(binarySearchFloor);
                list = j10 < segment.relativeStartTimeUs + segment.durationUs ? segment.parts : hlsMediaPlaylist.trailingParts;
            }
            while (true) {
                if (i7 >= list.size()) {
                    break;
                }
                HlsMediaPlaylist.Part part = list.get(i7);
                if (j10 >= part.relativeStartTimeUs + part.durationUs) {
                    i7++;
                } else if (part.isIndependent) {
                    j11 += (list != hlsMediaPlaylist.trailingParts || hlsMediaPlaylist.segments.isEmpty()) ? 0L : 1L;
                    r1 = i7;
                }
            }
        }
        return new Pair<>(Long.valueOf(j11), Integer.valueOf(r1));
    }

    private static SegmentBaseHolder getNextSegmentHolder(HlsMediaPlaylist hlsMediaPlaylist, long j7, int i2) {
        int i7 = (int) (j7 - hlsMediaPlaylist.mediaSequence);
        if (i7 == hlsMediaPlaylist.segments.size()) {
            if (i2 == -1) {
                i2 = 0;
            }
            if (i2 < hlsMediaPlaylist.trailingParts.size()) {
                return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(i2), j7, i2);
            }
            return null;
        }
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i7);
        if (i2 == -1) {
            return new SegmentBaseHolder(segment, j7, -1);
        }
        if (i2 < segment.parts.size()) {
            return new SegmentBaseHolder(segment.parts.get(i2), j7, i2);
        }
        int i8 = i7 + 1;
        if (i8 < hlsMediaPlaylist.segments.size()) {
            return new SegmentBaseHolder(hlsMediaPlaylist.segments.get(i8), j7 + 1, -1);
        }
        if (hlsMediaPlaylist.trailingParts.isEmpty()) {
            return null;
        }
        return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(0), j7 + 1, 0);
    }

    public static List<HlsMediaPlaylist.SegmentBase> getSegmentBaseList(HlsMediaPlaylist hlsMediaPlaylist, long j7, int i2) {
        int i7 = (int) (j7 - hlsMediaPlaylist.mediaSequence);
        if (i7 < 0 || hlsMediaPlaylist.segments.size() < i7) {
            return ImmutableList.of();
        }
        ArrayList arrayList = new ArrayList();
        if (i7 < hlsMediaPlaylist.segments.size()) {
            if (i2 != -1) {
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i7);
                if (i2 == 0) {
                    arrayList.add(segment);
                } else if (i2 < segment.parts.size()) {
                    List<HlsMediaPlaylist.Part> list = segment.parts;
                    arrayList.addAll(list.subList(i2, list.size()));
                }
                i7++;
            }
            List<HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
            arrayList.addAll(list2.subList(i7, list2.size()));
            i2 = 0;
        }
        if (hlsMediaPlaylist.partTargetDurationUs != C.TIME_UNSET) {
            int i8 = i2 != -1 ? i2 : 0;
            if (i8 < hlsMediaPlaylist.trailingParts.size()) {
                List<HlsMediaPlaylist.Part> list3 = hlsMediaPlaylist.trailingParts;
                arrayList.addAll(list3.subList(i8, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static boolean isIndependent(SegmentBaseHolder segmentBaseHolder, HlsMediaPlaylist hlsMediaPlaylist) {
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        if (!(segmentBase instanceof HlsMediaPlaylist.Part)) {
            return hlsMediaPlaylist.hasIndependentSegments;
        }
        if (((HlsMediaPlaylist.Part) segmentBase).isIndependent) {
            return true;
        }
        return segmentBaseHolder.partIndex == 0 && hlsMediaPlaylist.hasIndependentSegments;
    }

    private Chunk maybeCreateEncryptionChunkFor(Uri uri, int i2, boolean z6, CmcdData.Factory factory) {
        if (uri == null) {
            return null;
        }
        byte[] remove = this.keyCache.remove(uri);
        if (remove != null) {
            this.keyCache.put(uri, remove);
            return null;
        }
        DataSpec build = new DataSpec.Builder().setUri(uri).setFlags(1).build();
        if (factory != null) {
            if (z6) {
                factory.setObjectType(CmcdData.OBJECT_TYPE_INIT_SEGMENT);
            }
            build = factory.createCmcdData().addToDataSpec(build);
        }
        return new EncryptionKeyChunk(this.encryptionDataSource, build, this.playlistFormats[i2], this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.scratchSpace);
    }

    private long resolveTimeToLiveEdgeUs(long j7) {
        long j8 = this.liveEdgeInPeriodTimeUs;
        return j8 != C.TIME_UNSET ? j8 - j7 : C.TIME_UNSET;
    }

    private static boolean shouldForceKeepCurrentTrackSelection(boolean z6, HlsMediaPlaylist hlsMediaPlaylist, long j7, int i2, HlsMediaChunk hlsMediaChunk, long j8, long j9) {
        if (!z6 || hlsMediaChunk == null) {
            return false;
        }
        if (j7 < hlsMediaPlaylist.mediaSequence) {
            return true;
        }
        SegmentBaseHolder nextSegmentHolder = getNextSegmentHolder(hlsMediaPlaylist, j7, i2);
        return nextSegmentHolder != null && j8 + nextSegmentHolder.segmentBase.relativeStartTimeUs < j9;
    }

    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? C.TIME_UNSET : hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
    }

    public MediaChunkIterator[] createMediaChunkIterators(HlsMediaChunk hlsMediaChunk, long j7) {
        int indexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i2 = 0; i2 < length; i2++) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i2);
            Uri uri = this.playlistUrls[indexInTrackGroup];
            if (this.playlistTracker.isSnapshotValid(uri)) {
                HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, false);
                v.checkNotNull(playlistSnapshot);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
                Pair<Long, Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, indexInTrackGroup != indexOf, playlistSnapshot, initialStartTimeUs, j7);
                mediaChunkIteratorArr[i2] = new HlsMediaPlaylistSegmentIterator(playlistSnapshot.baseUri, initialStartTimeUs, getSegmentBaseList(playlistSnapshot, ((Long) nextMediaSequenceAndPartIndex.first).longValue(), ((Integer) nextMediaSequenceAndPartIndex.second).intValue()));
            } else {
                mediaChunkIteratorArr[i2] = MediaChunkIterator.EMPTY;
            }
        }
        return mediaChunkIteratorArr;
    }

    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        int selectedIndex = this.trackSelection.getSelectedIndex();
        Uri[] uriArr = this.playlistUrls;
        HlsMediaPlaylist playlistSnapshot = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.playlistTracker.getPlaylistSnapshot(uriArr[this.trackSelection.getSelectedIndexInTrackGroup()], true);
        if (playlistSnapshot == null || playlistSnapshot.segments.isEmpty()) {
            return j7;
        }
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        long j8 = j7 - initialStartTimeUs;
        int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) playlistSnapshot.segments, Long.valueOf(j8), true, true);
        long j9 = playlistSnapshot.segments.get(binarySearchFloor).relativeStartTimeUs;
        return seekParameters.resolveSeekPositionUs(j8, j9, (!playlistSnapshot.hasIndependentSegments || binarySearchFloor == playlistSnapshot.segments.size() - 1) ? j9 : playlistSnapshot.segments.get(binarySearchFloor + 1).relativeStartTimeUs) + initialStartTimeUs;
    }

    public int getChunkPublicationState(HlsMediaChunk hlsMediaChunk) {
        if (hlsMediaChunk.partIndex == -1) {
            return 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) v.checkNotNull(this.playlistTracker.getPlaylistSnapshot(this.playlistUrls[this.trackGroup.indexOf(hlsMediaChunk.trackFormat)], false));
        int i2 = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i2 < 0) {
            return 1;
        }
        List<HlsMediaPlaylist.Part> list = i2 < hlsMediaPlaylist.segments.size() ? hlsMediaPlaylist.segments.get(i2).parts : hlsMediaPlaylist.trailingParts;
        if (hlsMediaChunk.partIndex >= list.size()) {
            return 2;
        }
        HlsMediaPlaylist.Part part = list.get(hlsMediaChunk.partIndex);
        if (part.isPreload) {
            return 0;
        }
        return Objects.equals(Uri.parse(UriUtil.resolve(hlsMediaPlaylist.baseUri, part.url)), hlsMediaChunk.dataSpec.uri) ? 1 : 2;
    }

    public void getNextChunk(LoadingInfo loadingInfo, long j7, long j8, List<HlsMediaChunk> list, boolean z6, HlsChunkHolder hlsChunkHolder) {
        boolean z7;
        int i2;
        int i7;
        long j9;
        HlsMediaChunk hlsMediaChunk = list.isEmpty() ? null : (HlsMediaChunk) A.getLast(list);
        int indexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        long j10 = loadingInfo.playbackPositionUs;
        long j11 = j7 - j10;
        long resolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j10);
        if (hlsMediaChunk != null && !this.independentSegments) {
            long durationUs = hlsMediaChunk.getDurationUs();
            j11 = Math.max(0L, j11 - durationUs);
            if (resolveTimeToLiveEdgeUs != C.TIME_UNSET) {
                resolveTimeToLiveEdgeUs = Math.max(0L, resolveTimeToLiveEdgeUs - durationUs);
            }
        }
        long j12 = j11;
        this.trackSelection.updateSelectedTrack(j10, j12, resolveTimeToLiveEdgeUs, list, createMediaChunkIterators(hlsMediaChunk, j7));
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z8 = indexOf != selectedIndexInTrackGroup;
        Uri uri = this.playlistUrls[selectedIndexInTrackGroup];
        if (!this.playlistTracker.isSnapshotValid(uri)) {
            hlsChunkHolder.playlistUrl = uri;
            this.nextChunkStuckOnPlaylistUrl = uri;
            return;
        }
        HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, true);
        v.checkNotNull(playlistSnapshot);
        this.independentSegments = playlistSnapshot.hasIndependentSegments;
        updateLiveEdgeTimeUs(playlistSnapshot);
        long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        Uri uri2 = uri;
        Pair<Long, Integer> nextMediaSequenceAndPartIndex = getNextMediaSequenceAndPartIndex(hlsMediaChunk, z8, playlistSnapshot, initialStartTimeUs, j7);
        long longValue = ((Long) nextMediaSequenceAndPartIndex.first).longValue();
        int intValue = ((Integer) nextMediaSequenceAndPartIndex.second).intValue();
        int i8 = indexOf;
        HlsMediaPlaylist hlsMediaPlaylist = playlistSnapshot;
        HlsMediaChunk hlsMediaChunk2 = hlsMediaChunk;
        long j13 = initialStartTimeUs;
        int i9 = selectedIndexInTrackGroup;
        long j14 = longValue;
        long j15 = j12;
        if (shouldForceKeepCurrentTrackSelection(z8, hlsMediaPlaylist, j14, intValue, hlsMediaChunk2, j13, j8)) {
            uri2 = this.playlistUrls[i8];
            HlsMediaPlaylist playlistSnapshot2 = this.playlistTracker.getPlaylistSnapshot(uri2, true);
            v.checkNotNull(playlistSnapshot2);
            long initialStartTimeUs2 = playlistSnapshot2.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
            i7 = -1;
            Pair<Long, Integer> nextMediaSequenceAndPartIndex2 = getNextMediaSequenceAndPartIndex(hlsMediaChunk2, false, playlistSnapshot2, initialStartTimeUs2, j7);
            z7 = true;
            j14 = ((Long) nextMediaSequenceAndPartIndex2.first).longValue();
            intValue = ((Integer) nextMediaSequenceAndPartIndex2.second).intValue();
            hlsMediaPlaylist = playlistSnapshot2;
            i9 = i8;
            i2 = i9;
            j13 = initialStartTimeUs2;
            j15 = j15;
        } else {
            z7 = true;
            i2 = i8;
            i7 = -1;
        }
        if (i9 != i2 && i2 != i7) {
            this.playlistTracker.deactivatePlaylistForPlayback(this.playlistUrls[i2]);
        }
        if (j14 < hlsMediaPlaylist.mediaSequence) {
            this.fatalError = new BehindLiveWindowException();
            return;
        }
        SegmentBaseHolder nextSegmentHolder = getNextSegmentHolder(hlsMediaPlaylist, j14, intValue);
        if (nextSegmentHolder != null) {
            j9 = 1;
        } else if (!hlsMediaPlaylist.hasEndTag) {
            hlsChunkHolder.playlistUrl = uri2;
            this.nextChunkStuckOnPlaylistUrl = uri2;
            return;
        } else if (z6 || hlsMediaPlaylist.segments.isEmpty()) {
            hlsChunkHolder.endOfStream = z7;
            return;
        } else {
            j9 = 1;
            nextSegmentHolder = new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) A.getLast(hlsMediaPlaylist.segments), (hlsMediaPlaylist.mediaSequence + hlsMediaPlaylist.segments.size()) - 1, i7);
        }
        CmcdData.Factory factory = null;
        this.nextChunkStuckOnPlaylistUrl = null;
        if (this.cmcdConfiguration != null) {
            factory = new CmcdData.Factory(this.cmcdConfiguration, CmcdData.STREAMING_FORMAT_HLS).setTrackSelection(this.trackSelection).setBufferedDurationUs(Math.max(0L, j15)).setPlaybackRate(loadingInfo.playbackSpeed).setIsLive(hlsMediaPlaylist.hasEndTag ^ z7).setDidRebuffer(loadingInfo.rebufferedSince(this.lastChunkRequestRealtimeMs)).setIsBufferEmpty(list.isEmpty()).setChunkDurationUs(nextSegmentHolder.segmentBase.durationUs);
            int i10 = nextSegmentHolder.partIndex;
            long j16 = i10 == i7 ? nextSegmentHolder.mediaSequence + j9 : nextSegmentHolder.mediaSequence;
            if (i10 != i7) {
                i7 = i10 + 1;
            }
            SegmentBaseHolder nextSegmentHolder2 = getNextSegmentHolder(hlsMediaPlaylist, j16, i7);
            if (nextSegmentHolder2 != null) {
                factory.setNextObjectRequest(UriUtil.getRelativePath(UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, nextSegmentHolder.segmentBase.url), UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, nextSegmentHolder2.segmentBase.url)));
                String n7 = A.i.n(new StringBuilder(), nextSegmentHolder2.segmentBase.byteRangeOffset, "-");
                if (nextSegmentHolder2.segmentBase.byteRangeLength != -1) {
                    StringBuilder o6 = b.c.o(n7);
                    HlsMediaPlaylist.SegmentBase segmentBase = nextSegmentHolder2.segmentBase;
                    o6.append(segmentBase.byteRangeOffset + segmentBase.byteRangeLength);
                    n7 = o6.toString();
                }
                factory.setNextRangeRequest(n7);
            }
        }
        CmcdData.Factory factory2 = factory;
        this.lastChunkRequestRealtimeMs = SystemClock.elapsedRealtime();
        Uri fullEncryptionKeyUri = getFullEncryptionKeyUri(hlsMediaPlaylist, nextSegmentHolder.segmentBase.initializationSegment);
        Chunk maybeCreateEncryptionChunkFor = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri, i9, true, factory2);
        hlsChunkHolder.chunk = maybeCreateEncryptionChunkFor;
        if (maybeCreateEncryptionChunkFor == null) {
            Uri fullEncryptionKeyUri2 = getFullEncryptionKeyUri(hlsMediaPlaylist, nextSegmentHolder.segmentBase);
            Chunk maybeCreateEncryptionChunkFor2 = maybeCreateEncryptionChunkFor(fullEncryptionKeyUri2, i9, false, factory2);
            hlsChunkHolder.chunk = maybeCreateEncryptionChunkFor2;
            if (maybeCreateEncryptionChunkFor2 == null) {
                boolean isIndependent = isIndependent(nextSegmentHolder, hlsMediaPlaylist);
                int i11 = i9;
                SegmentBaseHolder segmentBaseHolder = nextSegmentHolder;
                Uri uri3 = uri2;
                long j17 = j13;
                boolean shouldSpliceIn = HlsMediaChunk.shouldSpliceIn(hlsMediaChunk2, j7, uri3, isIndependent, segmentBaseHolder, j17);
                if (shouldSpliceIn && segmentBaseHolder.isPreload) {
                    return;
                }
                hlsChunkHolder.chunk = HlsMediaChunk.createInstance(this.extractorFactory, this.mediaDataSource, this.playlistFormats[i11], j17, hlsMediaPlaylist, segmentBaseHolder, uri3, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.isPrimaryTimestampSource, this.timestampAdjusterProvider, this.timestampAdjusterInitializationTimeoutMs, hlsMediaChunk2, this.keyCache.get(fullEncryptionKeyUri2), this.keyCache.get(fullEncryptionKeyUri), shouldSpliceIn, isIndependent, this.playerId, factory2);
            }
        }
    }

    public int getPreferredQueueSize(long j7, List<? extends MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j7, list);
    }

    public long getPublishedPartDurationUs(HlsMediaChunk hlsMediaChunk) {
        v.checkState(hlsMediaChunk.partIndex != -1);
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) v.checkNotNull(this.playlistTracker.getPlaylistSnapshot(this.playlistUrls[this.trackGroup.indexOf(hlsMediaChunk.trackFormat)], false));
        int i2 = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i2 < 0) {
            return 0L;
        }
        return (i2 < hlsMediaPlaylist.segments.size() ? hlsMediaPlaylist.segments.get(i2).parts : hlsMediaPlaylist.trailingParts).get(hlsMediaChunk.partIndex).durationUs;
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public ExoTrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public boolean hasIndependentSegments() {
        return this.independentSegments;
    }

    public boolean maybeExcludeTrack(Chunk chunk, long j7) {
        ExoTrackSelection exoTrackSelection = this.trackSelection;
        return exoTrackSelection.excludeTrack(exoTrackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), j7);
    }

    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.lastPlaylistErrorUrl;
        if (uri == null || !uri.equals(this.nextChunkStuckOnPlaylistUrl)) {
            return;
        }
        this.playlistTracker.maybeThrowPlaylistRefreshError(this.lastPlaylistErrorUrl);
    }

    public boolean obtainsChunksForPlaylist(Uri uri) {
        return Util.contains(this.playlistUrls, uri);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            this.keyCache.put(encryptionKeyChunk.dataSpec.uri, (byte[]) v.checkNotNull(encryptionKeyChunk.getResult()));
        }
    }

    public boolean onPlaylistError(Uri uri, long j7) {
        int indexOf;
        int i2 = 0;
        while (true) {
            Uri[] uriArr = this.playlistUrls;
            if (i2 >= uriArr.length) {
                i2 = -1;
                break;
            }
            if (uriArr[i2].equals(uri)) {
                break;
            }
            i2++;
        }
        if (i2 == -1 || (indexOf = this.trackSelection.indexOf(i2)) == -1) {
            return true;
        }
        this.lastPlaylistErrorUrl = uri;
        return j7 != C.TIME_UNSET && this.trackSelection.excludeTrack(indexOf, j7) && this.playlistTracker.excludeMediaPlaylist(uri, j7);
    }

    public void reset() {
        deactivatePlaylistForSelectedTrack();
        this.fatalError = null;
    }

    public void setIsPrimaryTimestampSource(boolean z6) {
        this.isPrimaryTimestampSource = z6;
    }

    public void setTrackSelection(ExoTrackSelection exoTrackSelection) {
        deactivatePlaylistForSelectedTrack();
        this.trackSelection = exoTrackSelection;
    }

    public boolean shouldCancelLoad(long j7, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j7, chunk, list);
    }
}
