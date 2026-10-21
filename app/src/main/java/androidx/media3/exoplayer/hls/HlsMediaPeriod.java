package androidx.media3.exoplayer.hls;

import P3.C;
import P3.v;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.StreamKey;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.hls.HlsSampleStreamWrapper;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.collect.B;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
final class HlsMediaPeriod implements MediaPeriod, HlsPlaylistTracker.PlaylistEventListener {
    private final Allocator allocator;
    private final boolean allowChunklessPreparation;
    private int audioVideoSampleStreamWrapperCount;
    private final CmcdConfiguration cmcdConfiguration;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final HlsDataSourceFactory dataSourceFactory;
    private final C downloadExecutorSupplier;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private final HlsExtractorFactory extractorFactory;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private MediaPeriod.Callback mediaPeriodCallback;
    private final TransferListener mediaTransferListener;
    private final int metadataType;
    private int pendingPrepareCount;
    private final PlayerId playerId;
    private final HlsPlaylistTracker playlistTracker;
    private final long timestampAdjusterInitializationTimeoutMs;
    private TrackGroupArray trackGroups;
    private final boolean useSessionKeys;
    private final HlsSampleStreamWrapper.Callback sampleStreamWrapperCallback = new SampleStreamWrapperCallback();
    private final IdentityHashMap<SampleStream, Integer> streamWrapperIndices = new IdentityHashMap<>();
    private final TimestampAdjusterProvider timestampAdjusterProvider = new TimestampAdjusterProvider();
    private HlsSampleStreamWrapper[] sampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private int[][] manifestUrlIndicesPerWrapper = new int[0][];

    public class SampleStreamWrapperCallback implements HlsSampleStreamWrapper.Callback {
        private SampleStreamWrapperCallback() {
        }

        @Override // androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback
        public void onPlaylistRefreshRequired(Uri uri) {
            HlsMediaPeriod.this.playlistTracker.refreshPlaylist(uri);
        }

        @Override // androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback
        public void onPrepared() {
            if (HlsMediaPeriod.access$106(HlsMediaPeriod.this) > 0) {
                return;
            }
            int i2 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : HlsMediaPeriod.this.sampleStreamWrappers) {
                i2 += hlsSampleStreamWrapper.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            int i7 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper2 : HlsMediaPeriod.this.sampleStreamWrappers) {
                int i8 = hlsSampleStreamWrapper2.getTrackGroups().length;
                int i9 = 0;
                while (i9 < i8) {
                    trackGroupArr[i7] = hlsSampleStreamWrapper2.getTrackGroups().get(i9);
                    i9++;
                    i7++;
                }
            }
            HlsMediaPeriod.this.trackGroups = new TrackGroupArray(trackGroupArr);
            HlsMediaPeriod.this.mediaPeriodCallback.onPrepared(HlsMediaPeriod.this);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
            HlsMediaPeriod.this.mediaPeriodCallback.onContinueLoadingRequested(HlsMediaPeriod.this);
        }
    }

    public HlsMediaPeriod(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z6, int i2, boolean z7, PlayerId playerId, long j7, C c7) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.mediaTransferListener = transferListener;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher2;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.allowChunklessPreparation = z6;
        this.metadataType = i2;
        this.useSessionKeys = z7;
        this.playerId = playerId;
        this.timestampAdjusterInitializationTimeoutMs = j7;
        this.downloadExecutorSupplier = c7;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.empty();
    }

    public static /* synthetic */ int access$106(HlsMediaPeriod hlsMediaPeriod) {
        int i2 = hlsMediaPeriod.pendingPrepareCount - 1;
        hlsMediaPeriod.pendingPrepareCount = i2;
        return i2;
    }

    private void buildAndPrepareAudioSampleStreamWrappers(long j7, List<HlsMultivariantPlaylist.Rendition> list, List<HlsSampleStreamWrapper> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list.get(i2).name;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z6 = true;
                for (int i7 = 0; i7 < list.size(); i7++) {
                    if (Objects.equals(str, list.get(i7).name)) {
                        HlsMultivariantPlaylist.Rendition rendition = list.get(i7);
                        arrayList3.add(Integer.valueOf(i7));
                        arrayList.add(rendition.url);
                        arrayList2.add(rendition.format);
                        z6 &= Util.getCodecCountOfType(rendition.format.codecs, 1) == 1;
                    }
                }
                String k7 = A.i.k("audio:", str);
                HlsSampleStreamWrapper buildSampleStreamWrapper = buildSampleStreamWrapper(k7, 1, (Uri[]) arrayList.toArray((Uri[]) Util.castNonNullTypeArray(new Uri[0])), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.EMPTY_LIST, map, j7);
                list3.add(com.google.common.primitives.a.toArray(arrayList3));
                list2.add(buildSampleStreamWrapper);
                if (this.allowChunklessPreparation && z6) {
                    buildSampleStreamWrapper.prepareWithMultivariantPlaylistInfo(new TrackGroup[]{new TrackGroup(k7, (Format[]) arrayList2.toArray(new Format[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void buildAndPrepareMainSampleStreamWrapper(HlsMultivariantPlaylist hlsMultivariantPlaylist, long j7, List<HlsSampleStreamWrapper> list, List<int[]> list2, Map<String, DrmInitData> map) {
        int i2;
        boolean z6;
        boolean z7;
        int size = hlsMultivariantPlaylist.variants.size();
        int[] iArr = new int[size];
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < hlsMultivariantPlaylist.variants.size(); i9++) {
            Format format = hlsMultivariantPlaylist.variants.get(i9).format;
            if (format.height > 0 || Util.getCodecsOfType(format.codecs, 2) != null) {
                iArr[i9] = 2;
                i7++;
            } else if (Util.getCodecsOfType(format.codecs, 1) != null) {
                iArr[i9] = 1;
                i8++;
            } else {
                iArr[i9] = -1;
            }
        }
        if (i7 > 0) {
            i2 = i7;
            z6 = true;
            z7 = false;
        } else if (i8 < size) {
            i2 = size - i8;
            z7 = true;
            z6 = false;
        } else {
            i2 = size;
            z6 = false;
            z7 = false;
        }
        Uri[] uriArr = new Uri[i2];
        Format[] formatArr = new Format[i2];
        int[] iArr2 = new int[i2];
        int i10 = 0;
        for (int i11 = 0; i11 < hlsMultivariantPlaylist.variants.size(); i11++) {
            if ((!z6 || iArr[i11] == 2) && (!z7 || iArr[i11] != 1)) {
                HlsMultivariantPlaylist.Variant variant = hlsMultivariantPlaylist.variants.get(i11);
                uriArr[i10] = variant.url;
                formatArr[i10] = variant.format;
                iArr2[i10] = i11;
                i10++;
            }
        }
        String str = formatArr[0].codecs;
        int codecCountOfType = Util.getCodecCountOfType(str, 2);
        int codecCountOfType2 = Util.getCodecCountOfType(str, 1);
        boolean z8 = (codecCountOfType2 == 1 || (codecCountOfType2 == 0 && hlsMultivariantPlaylist.audios.isEmpty())) && codecCountOfType <= 1 && codecCountOfType2 + codecCountOfType > 0;
        HlsSampleStreamWrapper buildSampleStreamWrapper = buildSampleStreamWrapper("main", (z6 || codecCountOfType2 <= 0) ? 0 : 1, uriArr, formatArr, hlsMultivariantPlaylist.muxedAudioFormat, hlsMultivariantPlaylist.muxedCaptionFormats, map, j7);
        list.add(buildSampleStreamWrapper);
        list2.add(iArr2);
        if (this.allowChunklessPreparation && z8) {
            ArrayList arrayList = new ArrayList();
            if (codecCountOfType > 0) {
                Format[] formatArr2 = new Format[i2];
                for (int i12 = 0; i12 < i2; i12++) {
                    formatArr2[i12] = deriveVideoFormat(formatArr[i12]);
                }
                arrayList.add(new TrackGroup("main", formatArr2));
                if (codecCountOfType2 > 0 && (hlsMultivariantPlaylist.muxedAudioFormat != null || hlsMultivariantPlaylist.audios.isEmpty())) {
                    arrayList.add(new TrackGroup("main:audio", deriveAudioFormat(formatArr[0], hlsMultivariantPlaylist.muxedAudioFormat, false)));
                }
                List<Format> list3 = hlsMultivariantPlaylist.muxedCaptionFormats;
                if (list3 != null) {
                    for (int i13 = 0; i13 < list3.size(); i13++) {
                        arrayList.add(new TrackGroup(A.i.f(i13, "main:cc:"), this.extractorFactory.getOutputTextFormat(list3.get(i13))));
                    }
                }
            } else {
                Format[] formatArr3 = new Format[i2];
                for (int i14 = 0; i14 < i2; i14++) {
                    formatArr3[i14] = deriveAudioFormat(formatArr[i14], hlsMultivariantPlaylist.muxedAudioFormat, true);
                }
                arrayList.add(new TrackGroup("main", formatArr3));
            }
            TrackGroup trackGroup = new TrackGroup("main:id3", new Format.Builder().setId("ID3").setSampleMimeType(MimeTypes.APPLICATION_ID3).build());
            arrayList.add(trackGroup);
            buildSampleStreamWrapper.prepareWithMultivariantPlaylistInfo((TrackGroup[]) arrayList.toArray(new TrackGroup[0]), 0, arrayList.indexOf(trackGroup));
        }
    }

    private void buildAndPrepareSampleStreamWrappers(long j7) {
        long j8;
        HlsMultivariantPlaylist hlsMultivariantPlaylist = (HlsMultivariantPlaylist) v.checkNotNull(this.playlistTracker.getMultivariantPlaylist());
        Map<String, DrmInitData> deriveOverridingDrmInitData = this.useSessionKeys ? deriveOverridingDrmInitData(hlsMultivariantPlaylist.sessionKeyDrmInitData) : Collections.EMPTY_MAP;
        boolean isEmpty = hlsMultivariantPlaylist.variants.isEmpty();
        List<HlsMultivariantPlaylist.Rendition> list = hlsMultivariantPlaylist.audios;
        List<HlsMultivariantPlaylist.Rendition> list2 = hlsMultivariantPlaylist.subtitles;
        this.pendingPrepareCount = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (isEmpty) {
            j8 = j7;
        } else {
            buildAndPrepareMainSampleStreamWrapper(hlsMultivariantPlaylist, j7, arrayList, arrayList2, deriveOverridingDrmInitData);
            arrayList = arrayList;
            j8 = j7;
        }
        buildAndPrepareAudioSampleStreamWrappers(j8, list, arrayList, arrayList2, deriveOverridingDrmInitData);
        this.audioVideoSampleStreamWrapperCount = arrayList.size();
        buildAndPrepareSubtitleSampleStreamWrappers(j8, list2, arrayList, arrayList2, deriveOverridingDrmInitData);
        this.sampleStreamWrappers = (HlsSampleStreamWrapper[]) arrayList.toArray(new HlsSampleStreamWrapper[0]);
        this.manifestUrlIndicesPerWrapper = (int[][]) arrayList2.toArray(new int[0][]);
        this.pendingPrepareCount = this.sampleStreamWrappers.length;
        for (int i2 = 0; i2 < this.audioVideoSampleStreamWrapperCount; i2++) {
            this.sampleStreamWrappers[i2].setIsPrimaryTimestampSource(true);
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private void buildAndPrepareSubtitleSampleStreamWrappers(long j7, List<HlsMultivariantPlaylist.Rendition> list, List<HlsSampleStreamWrapper> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        int i2;
        List<HlsMultivariantPlaylist.Rendition> list4 = list;
        int i7 = 1;
        ArrayList arrayList = new ArrayList(list4.size());
        ArrayList arrayList2 = new ArrayList(list4.size());
        ArrayList arrayList3 = new ArrayList(list4.size());
        HashSet hashSet = new HashSet();
        int i8 = 0;
        int i9 = 0;
        while (i9 < list4.size()) {
            String str = list4.get(i9).name;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                for (int i10 = i8; i10 < list4.size(); i10 += i7) {
                    if (Objects.equals(str, list4.get(i10).name)) {
                        HlsMultivariantPlaylist.Rendition rendition = list4.get(i10);
                        arrayList3.add(Integer.valueOf(i10));
                        arrayList.add(rendition.url);
                        arrayList2.add(rendition.format);
                    }
                }
                String k7 = A.i.k("subtitle:", str);
                Format[] formatArr = (Format[]) arrayList2.toArray(new Format[i8]);
                HlsSampleStreamWrapper buildSampleStreamWrapper = buildSampleStreamWrapper(k7, 3, (Uri[]) arrayList.toArray((Uri[]) Util.castNonNullTypeArray(new Uri[i8])), formatArr, null, ImmutableList.of(), map, j7);
                list3.add(com.google.common.primitives.a.toArray(arrayList3));
                list2.add(buildSampleStreamWrapper);
                int length = formatArr.length;
                Format[] formatArr2 = new Format[length];
                int i11 = i8;
                while (i11 < length) {
                    formatArr2[i11] = this.extractorFactory.getOutputTextFormat(formatArr[i11]);
                    i11++;
                    i8 = i8;
                    i7 = i7;
                }
                int i12 = i8;
                TrackGroup trackGroup = new TrackGroup(k7, formatArr2);
                TrackGroup[] trackGroupArr = new TrackGroup[i7];
                trackGroupArr[i12] = trackGroup;
                i2 = i12;
                buildSampleStreamWrapper.prepareWithMultivariantPlaylistInfo(trackGroupArr, i2, new int[i2]);
            } else {
                i2 = i8;
            }
            i9 += i7;
            i8 = i2;
            list4 = list;
        }
    }

    private HlsSampleStreamWrapper buildSampleStreamWrapper(String str, int i2, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j7) {
        HlsChunkSource hlsChunkSource = new HlsChunkSource(this.extractorFactory, this.playlistTracker, uriArr, formatArr, this.dataSourceFactory, this.mediaTransferListener, this.timestampAdjusterProvider, this.timestampAdjusterInitializationTimeoutMs, list, this.playerId, this.cmcdConfiguration);
        HlsSampleStreamWrapper.Callback callback = this.sampleStreamWrapperCallback;
        Allocator allocator = this.allocator;
        DrmSessionManager drmSessionManager = this.drmSessionManager;
        DrmSessionEventListener.EventDispatcher eventDispatcher = this.drmEventDispatcher;
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
        MediaSourceEventListener.EventDispatcher eventDispatcher2 = this.eventDispatcher;
        int i7 = this.metadataType;
        C c7 = this.downloadExecutorSupplier;
        return new HlsSampleStreamWrapper(str, i2, callback, hlsChunkSource, map, allocator, j7, format, drmSessionManager, eventDispatcher, loadErrorHandlingPolicy, eventDispatcher2, i7, c7 != null ? (ReleasableExecutor) c7.get() : null);
    }

    private static Format deriveAudioFormat(Format format, Format format2, boolean z6) {
        Metadata metadata;
        int i2;
        String str;
        String str2;
        List<Label> list;
        int i7;
        int i8;
        String str3;
        ImmutableList of = ImmutableList.of();
        if (format2 != null) {
            str2 = format2.codecs;
            metadata = format2.metadata;
            i7 = format2.channelCount;
            i2 = format2.selectionFlags;
            i8 = format2.roleFlags;
            str = format2.language;
            str3 = format2.label;
            list = format2.labels;
        } else {
            String codecsOfType = Util.getCodecsOfType(format.codecs, 1);
            metadata = format.metadata;
            if (z6) {
                i7 = format.channelCount;
                i2 = format.selectionFlags;
                i8 = format.roleFlags;
                str = format.language;
                str3 = format.label;
                str2 = codecsOfType;
                list = format.labels;
            } else {
                i2 = 0;
                str = null;
                str2 = codecsOfType;
                list = of;
                i7 = -1;
                i8 = 0;
                str3 = null;
            }
        }
        return new Format.Builder().setId(format.id).setLabel(str3).setLabels(list).setContainerMimeType(format.containerMimeType).setSampleMimeType(MimeTypes.getMediaMimeType(str2)).setCodecs(str2).setMetadata(metadata).setAverageBitrate(z6 ? format.averageBitrate : -1).setPeakBitrate(z6 ? format.peakBitrate : -1).setChannelCount(i7).setSelectionFlags(i2).setRoleFlags(i8).setLanguage(str).build();
    }

    private static Map<String, DrmInitData> deriveOverridingDrmInitData(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i2 = 0;
        while (i2 < arrayList.size()) {
            DrmInitData drmInitData = list.get(i2);
            String str = drmInitData.schemeType;
            i2++;
            int i7 = i2;
            while (i7 < arrayList.size()) {
                DrmInitData drmInitData2 = (DrmInitData) arrayList.get(i7);
                if (TextUtils.equals(drmInitData2.schemeType, str)) {
                    drmInitData = drmInitData.merge(drmInitData2);
                    arrayList.remove(i7);
                } else {
                    i7++;
                }
            }
            hashMap.put(str, drmInitData);
        }
        return hashMap;
    }

    private static Format deriveVideoFormat(Format format) {
        String codecsOfType = Util.getCodecsOfType(format.codecs, 2);
        return new Format.Builder().setId(format.id).setLabel(format.label).setLabels(format.labels).setContainerMimeType(format.containerMimeType).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType)).setCodecs(codecsOfType).setMetadata(format.metadata).setAverageBitrate(format.averageBitrate).setPeakBitrate(format.peakBitrate).setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$selectTracks$0(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        return hlsSampleStreamWrapper.getTrackGroups().getTrackTypes();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        if (this.trackGroups != null) {
            return this.compositeSequenceableLoader.continueLoading(loadingInfo);
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.continuePreparing();
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j7, boolean z6) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j7, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            if (hlsSampleStreamWrapper.isVideoSampleStream()) {
                return hlsSampleStreamWrapper.getAdjustedSeekPositionUs(j7, seekParameters);
            }
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [int] */
    /* JADX WARN: Type inference failed for: r14v8 */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        int[] iArr;
        TrackGroupArray trackGroupArray;
        int i2;
        int i7;
        HlsMultivariantPlaylist hlsMultivariantPlaylist = (HlsMultivariantPlaylist) v.checkNotNull(this.playlistTracker.getMultivariantPlaylist());
        boolean isEmpty = hlsMultivariantPlaylist.variants.isEmpty();
        boolean z6 = !isEmpty;
        int i8 = 0;
        if (isEmpty) {
            iArr = new int[0];
            trackGroupArray = TrackGroupArray.EMPTY;
            i2 = 0;
        } else {
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.sampleStreamWrappers[0];
            iArr = this.manifestUrlIndicesPerWrapper[0];
            trackGroupArray = hlsSampleStreamWrapper.getTrackGroups();
            i2 = hlsSampleStreamWrapper.getPrimaryTrackGroupIndex();
        }
        ArrayList arrayList = new ArrayList();
        boolean z7 = false;
        boolean z8 = false;
        for (ExoTrackSelection exoTrackSelection : list) {
            TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
            int indexOf = trackGroupArray.indexOf(trackGroup);
            if (indexOf == -1) {
                ?? r14 = z6;
                i7 = i8;
                while (true) {
                    HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
                    if (r14 >= hlsSampleStreamWrapperArr.length) {
                        break;
                    }
                    TrackGroupArray trackGroups = hlsSampleStreamWrapperArr[r14].getTrackGroups();
                    int indexOf2 = trackGroups.indexOf(trackGroup);
                    if (indexOf2 != -1) {
                        int i9 = trackGroups.get(indexOf2).type != 1 ? 2 : 1;
                        int[] iArr2 = this.manifestUrlIndicesPerWrapper[r14];
                        for (int i10 = i7; i10 < exoTrackSelection.length(); i10++) {
                            arrayList.add(new StreamKey(i9, iArr2[exoTrackSelection.getIndexInTrackGroup(i10)]));
                        }
                    } else {
                        r14++;
                    }
                }
            } else if (indexOf == i2) {
                for (int i11 = i8; i11 < exoTrackSelection.length(); i11++) {
                    arrayList.add(new StreamKey(i8, iArr[exoTrackSelection.getIndexInTrackGroup(i11)]));
                }
                i7 = i8;
                z8 = true;
            } else {
                i7 = i8;
                z7 = true;
            }
            i8 = i7;
        }
        int i12 = i8;
        if (z7 && !z8) {
            int i13 = iArr[i12];
            int i14 = hlsMultivariantPlaylist.variants.get(i13).format.bitrate;
            for (int i15 = 1; i15 < iArr.length; i15++) {
                int i16 = hlsMultivariantPlaylist.variants.get(iArr[i15]).format.bitrate;
                if (i16 < i14) {
                    i13 = iArr[i15];
                    i14 = i16;
                }
            }
            arrayList.add(new StreamKey(i12, i13));
        }
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) v.checkNotNull(this.trackGroups);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void onPlaylistChanged() {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.onPlaylistUpdated();
        }
        this.mediaPeriodCallback.onContinueLoadingRequested(this);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public boolean onPlaylistError(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6) {
        boolean z7 = true;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            z7 &= hlsSampleStreamWrapper.onPlaylistError(uri, loadErrorInfo, z6);
        }
        this.mediaPeriodCallback.onContinueLoadingRequested(this);
        return z7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j7) {
        this.mediaPeriodCallback = callback;
        this.playlistTracker.addListener(this);
        buildAndPrepareSampleStreamWrappers(j7);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        return androidx.media3.common.C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
        this.compositeSequenceableLoader.reevaluateBuffer(j7);
    }

    public void release() {
        this.playlistTracker.removeListener(this);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.release();
        }
        this.mediaPeriodCallback = null;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j7) {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.enabledSampleStreamWrappers;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean seekToUs = hlsSampleStreamWrapperArr[0].seekToUs(j7, false);
            int i2 = 1;
            while (true) {
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.enabledSampleStreamWrappers;
                if (i2 >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i2].seekToUs(j7, seekToUs);
                i2++;
            }
            if (seekToUs) {
                this.timestampAdjusterProvider.reset();
            }
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j7) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            SampleStream sampleStream = sampleStreamArr[i2];
            iArr[i2] = sampleStream == null ? -1 : this.streamWrapperIndices.get(sampleStream).intValue();
            iArr2[i2] = -1;
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int i7 = 0;
                while (true) {
                    HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
                    if (i7 >= hlsSampleStreamWrapperArr.length) {
                        break;
                    }
                    if (hlsSampleStreamWrapperArr[i7].getTrackGroups().indexOf(trackGroup) != -1) {
                        iArr2[i2] = i7;
                        break;
                    }
                    i7++;
                }
            }
        }
        this.streamWrapperIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[exoTrackSelectionArr.length];
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = new HlsSampleStreamWrapper[this.sampleStreamWrappers.length];
        int i8 = 0;
        int i9 = 0;
        boolean z6 = false;
        while (i8 < this.sampleStreamWrappers.length) {
            for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
                ExoTrackSelection exoTrackSelection2 = null;
                sampleStreamArr3[i10] = iArr[i10] == i8 ? sampleStreamArr[i10] : null;
                if (iArr2[i10] == i8) {
                    exoTrackSelection2 = exoTrackSelectionArr[i10];
                }
                exoTrackSelectionArr2[i10] = exoTrackSelection2;
            }
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.sampleStreamWrappers[i8];
            int[] iArr3 = iArr;
            int i11 = i8;
            int i12 = i9;
            boolean selectTracks = hlsSampleStreamWrapper.selectTracks(exoTrackSelectionArr2, zArr, sampleStreamArr3, zArr2, j7, z6);
            boolean z7 = false;
            for (int i13 = 0; i13 < exoTrackSelectionArr.length; i13++) {
                SampleStream sampleStream2 = sampleStreamArr3[i13];
                if (iArr2[i13] == i11) {
                    v.checkNotNull(sampleStream2);
                    sampleStreamArr2[i13] = sampleStream2;
                    this.streamWrapperIndices.put(sampleStream2, Integer.valueOf(i11));
                    z7 = true;
                } else if (iArr3[i13] == i11) {
                    v.checkState(sampleStream2 == null);
                }
            }
            if (z7) {
                hlsSampleStreamWrapperArr2[i12] = hlsSampleStreamWrapper;
                i9 = i12 + 1;
                if (i12 == 0) {
                    hlsSampleStreamWrapper.setIsPrimaryTimestampSource(true);
                    if (!selectTracks) {
                        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr3 = this.enabledSampleStreamWrappers;
                        if (hlsSampleStreamWrapperArr3.length != 0 && hlsSampleStreamWrapper == hlsSampleStreamWrapperArr3[0]) {
                        }
                    }
                    this.timestampAdjusterProvider.reset();
                    z6 = true;
                } else {
                    hlsSampleStreamWrapper.setIsPrimaryTimestampSource(i11 < this.audioVideoSampleStreamWrapperCount);
                }
            } else {
                i9 = i12;
            }
            i8 = i11 + 1;
            iArr = iArr3;
        }
        System.arraycopy(sampleStreamArr2, 0, sampleStreamArr, 0, length);
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr4 = (HlsSampleStreamWrapper[]) Util.nullSafeArrayCopy(hlsSampleStreamWrapperArr2, i9);
        this.enabledSampleStreamWrappers = hlsSampleStreamWrapperArr4;
        ImmutableList copyOf = ImmutableList.copyOf(hlsSampleStreamWrapperArr4);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.create(copyOf, B.transform(copyOf, new l()));
        return j7;
    }
}
