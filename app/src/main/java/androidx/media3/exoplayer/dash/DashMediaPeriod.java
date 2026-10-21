package androidx.media3.exoplayer.dash;

import A.i;
import P3.C;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.StreamKey;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.dash.DashChunkSource;
import androidx.media3.exoplayer.dash.PlayerEmsgHandler;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.Descriptor;
import androidx.media3.exoplayer.dash.manifest.EventStream;
import androidx.media3.exoplayer.dash.manifest.Period;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.ChunkSampleStream;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.collect.B;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class DashMediaPeriod implements MediaPeriod, SequenceableLoader.Callback<ChunkSampleStream<DashChunkSource>>, ChunkSampleStream.ReleaseCallback<DashChunkSource> {
    private static final Pattern CEA608_SERVICE_DESCRIPTOR_REGEX = Pattern.compile("CC([1-4])=(.+)");
    private static final Pattern CEA708_SERVICE_DESCRIPTOR_REGEX = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");
    private final Allocator allocator;
    private final BaseUrlExclusionList baseUrlExclusionList;
    private MediaPeriod.Callback callback;
    private final DashChunkSource.Factory chunkSourceFactory;
    private final CmcdConfiguration cmcdConfiguration;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final C downloadExecutorSupplier;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private final long elapsedRealtimeOffsetMs;
    private List<EventStream> eventStreams;
    final int id;
    private long initialStartTimeUs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private DashManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private int periodIndex;
    private final PlayerEmsgHandler playerEmsgHandler;
    private final PlayerId playerId;
    private final TrackGroupInfo[] trackGroupInfos;
    private final TrackGroupArray trackGroups;
    private final TransferListener transferListener;
    private boolean canReportInitialDiscontinuity = true;
    private ChunkSampleStream<DashChunkSource>[] sampleStreams = newSampleStreamArray(0);
    private EventSampleStream[] eventSampleStreams = new EventSampleStream[0];
    private final IdentityHashMap<ChunkSampleStream<DashChunkSource>, PlayerEmsgHandler.PlayerTrackEmsgHandler> trackEmsgHandlerBySampleStream = new IdentityHashMap<>();

    public static final class TrackGroupInfo {
        private static final int CATEGORY_EMBEDDED = 1;
        private static final int CATEGORY_MANIFEST_EVENTS = 2;
        private static final int CATEGORY_PRIMARY = 0;
        public final int[] adaptationSetIndices;
        public final int embeddedClosedCaptionTrackGroupIndex;
        public final ImmutableList<Format> embeddedClosedCaptionTrackOriginalFormats;
        public final int embeddedEventMessageTrackGroupIndex;
        public final int eventStreamGroupIndex;
        public final int primaryTrackGroupIndex;
        public final int trackGroupCategory;
        public final int trackType;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface TrackGroupCategory {
        }

        private TrackGroupInfo(int i2, int i7, int[] iArr, int i8, int i9, int i10, int i11, ImmutableList<Format> immutableList) {
            this.trackType = i2;
            this.adaptationSetIndices = iArr;
            this.trackGroupCategory = i7;
            this.primaryTrackGroupIndex = i8;
            this.embeddedEventMessageTrackGroupIndex = i9;
            this.embeddedClosedCaptionTrackGroupIndex = i10;
            this.eventStreamGroupIndex = i11;
            this.embeddedClosedCaptionTrackOriginalFormats = immutableList;
        }

        public static TrackGroupInfo embeddedClosedCaptionTrack(int[] iArr, int i2, ImmutableList<Format> immutableList) {
            return new TrackGroupInfo(3, 1, iArr, i2, -1, -1, -1, immutableList);
        }

        public static TrackGroupInfo embeddedEmsgTrack(int[] iArr, int i2) {
            return new TrackGroupInfo(5, 1, iArr, i2, -1, -1, -1, ImmutableList.of());
        }

        public static TrackGroupInfo mpdEventTrack(int i2) {
            return new TrackGroupInfo(5, 2, new int[0], -1, -1, -1, i2, ImmutableList.of());
        }

        public static TrackGroupInfo primaryTrack(int i2, int[] iArr, int i7, int i8, int i9) {
            return new TrackGroupInfo(i2, 0, iArr, i7, i8, i9, -1, ImmutableList.of());
        }
    }

    public DashMediaPeriod(int i2, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i7, DashChunkSource.Factory factory, TransferListener transferListener, CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, long j7, LoaderErrorThrower loaderErrorThrower, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback, PlayerId playerId, C c7) {
        this.id = i2;
        this.manifest = dashManifest;
        this.baseUrlExclusionList = baseUrlExclusionList;
        this.periodIndex = i7;
        this.chunkSourceFactory = factory;
        this.transferListener = transferListener;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.elapsedRealtimeOffsetMs = j7;
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.playerId = playerId;
        this.downloadExecutorSupplier = c7;
        this.playerEmsgHandler = new PlayerEmsgHandler(dashManifest, playerEmsgCallback, allocator);
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.empty();
        Period period = dashManifest.getPeriod(i7);
        List<EventStream> list = period.eventStreams;
        this.eventStreams = list;
        Pair<TrackGroupArray, TrackGroupInfo[]> buildTrackGroups = buildTrackGroups(drmSessionManager, factory, period.adaptationSets, list);
        this.trackGroups = (TrackGroupArray) buildTrackGroups.first;
        this.trackGroupInfos = (TrackGroupInfo[]) buildTrackGroups.second;
    }

    private static void buildManifestEventTrackGroupInfos(List<EventStream> list, TrackGroup[] trackGroupArr, TrackGroupInfo[] trackGroupInfoArr, int i2) {
        int i7 = 0;
        while (i7 < list.size()) {
            EventStream eventStream = list.get(i7);
            trackGroupArr[i2] = new TrackGroup(eventStream.id() + ":" + i7, new Format.Builder().setId(eventStream.id()).setSampleMimeType(MimeTypes.APPLICATION_EMSG).build());
            trackGroupInfoArr[i2] = TrackGroupInfo.mpdEventTrack(i7);
            i7++;
            i2++;
        }
    }

    private static int buildPrimaryAndEmbeddedTrackGroupInfos(DrmSessionManager drmSessionManager, DashChunkSource.Factory factory, List<AdaptationSet> list, int[][] iArr, int i2, boolean[] zArr, Format[][] formatArr, TrackGroup[] trackGroupArr, TrackGroupInfo[] trackGroupInfoArr) {
        int i7;
        int i8;
        int i9;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i2) {
            int[] iArr2 = iArr[i11];
            ArrayList arrayList = new ArrayList();
            int length = iArr2.length;
            for (int i13 = i10; i13 < length; i13++) {
                arrayList.addAll(list.get(iArr2[i13]).representations);
            }
            int size = arrayList.size();
            Format[] formatArr2 = new Format[size];
            for (int i14 = i10; i14 < size; i14++) {
                Format format = ((Representation) arrayList.get(i14)).format;
                formatArr2[i14] = format.buildUpon().setCryptoType(drmSessionManager.getCryptoType(format)).build();
            }
            AdaptationSet adaptationSet = list.get(iArr2[i10]);
            long j7 = adaptationSet.id;
            String l7 = j7 != -1 ? Long.toString(j7) : i.f(i11, "unset:");
            int i15 = i12 + 1;
            if (zArr[i11]) {
                i7 = i12 + 2;
            } else {
                i7 = i15;
                i15 = -1;
            }
            if (formatArr[i11].length != 0) {
                i8 = i7 + 1;
            } else {
                i8 = i7;
                i7 = -1;
            }
            maybeUpdateFormatsForParsedText(factory, formatArr2);
            int i16 = i10;
            trackGroupArr[i12] = new TrackGroup(l7, formatArr2);
            trackGroupInfoArr[i12] = TrackGroupInfo.primaryTrack(adaptationSet.type, iArr2, i12, i15, i7);
            if (i15 != -1) {
                String B6 = i.B(l7, ":emsg");
                Format[] formatArr3 = new Format[1];
                formatArr3[i16] = new Format.Builder().setId(B6).setSampleMimeType(MimeTypes.APPLICATION_EMSG).build();
                trackGroupArr[i15] = new TrackGroup(B6, formatArr3);
                trackGroupInfoArr[i15] = TrackGroupInfo.embeddedEmsgTrack(iArr2, i12);
                i9 = -1;
            } else {
                i9 = -1;
            }
            if (i7 != i9) {
                String B7 = i.B(l7, ":cc");
                trackGroupInfoArr[i7] = TrackGroupInfo.embeddedClosedCaptionTrack(iArr2, i12, ImmutableList.copyOf(formatArr[i11]));
                maybeUpdateFormatsForParsedText(factory, formatArr[i11]);
                trackGroupArr[i7] = new TrackGroup(B7, formatArr[i11]);
            }
            i11++;
            i12 = i8;
            i10 = i16;
        }
        return i12;
    }

    private ChunkSampleStream<DashChunkSource> buildSampleStream(TrackGroupInfo trackGroupInfo, ExoTrackSelection exoTrackSelection, long j7) {
        int i2;
        TrackGroup trackGroup;
        int i7;
        int i8 = trackGroupInfo.embeddedEventMessageTrackGroupIndex;
        boolean z6 = i8 != -1;
        if (z6) {
            trackGroup = this.trackGroups.get(i8);
            i2 = 1;
        } else {
            i2 = 0;
            trackGroup = null;
        }
        int i9 = trackGroupInfo.embeddedClosedCaptionTrackGroupIndex;
        ImmutableList<Format> of = i9 != -1 ? this.trackGroupInfos[i9].embeddedClosedCaptionTrackOriginalFormats : ImmutableList.of();
        int size = of.size() + i2;
        Format[] formatArr = new Format[size];
        int[] iArr = new int[size];
        if (z6) {
            formatArr[0] = trackGroup.getFormat(0);
            iArr[0] = 5;
            i7 = 1;
        } else {
            i7 = 0;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < of.size(); i10++) {
            Format format = of.get(i10);
            formatArr[i7] = format;
            iArr[i7] = 3;
            arrayList.add(format);
            i7++;
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler newPlayerTrackEmsgHandler = (this.manifest.dynamic && z6) ? this.playerEmsgHandler.newPlayerTrackEmsgHandler() : null;
        DashChunkSource createDashChunkSource = this.chunkSourceFactory.createDashChunkSource(this.manifestLoaderErrorThrower, this.manifest, this.baseUrlExclusionList, this.periodIndex, trackGroupInfo.adaptationSetIndices, exoTrackSelection, trackGroupInfo.trackType, this.elapsedRealtimeOffsetMs, z6, arrayList, newPlayerTrackEmsgHandler, this.transferListener, this.playerId, this.cmcdConfiguration);
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = newPlayerTrackEmsgHandler;
        int i11 = trackGroupInfo.trackType;
        Allocator allocator = this.allocator;
        DrmSessionManager drmSessionManager = this.drmSessionManager;
        DrmSessionEventListener.EventDispatcher eventDispatcher = this.drmEventDispatcher;
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
        MediaSourceEventListener.EventDispatcher eventDispatcher2 = this.mediaSourceEventDispatcher;
        boolean z7 = this.canReportInitialDiscontinuity;
        C c7 = this.downloadExecutorSupplier;
        ChunkSampleStream<DashChunkSource> chunkSampleStream = new ChunkSampleStream<>(i11, iArr, formatArr, createDashChunkSource, this, allocator, j7, drmSessionManager, eventDispatcher, loadErrorHandlingPolicy, eventDispatcher2, z7, c7 != null ? (ReleasableExecutor) c7.get() : null);
        synchronized (this) {
            this.trackEmsgHandlerBySampleStream.put(chunkSampleStream, playerTrackEmsgHandler);
        }
        return chunkSampleStream;
    }

    private static Pair<TrackGroupArray, TrackGroupInfo[]> buildTrackGroups(DrmSessionManager drmSessionManager, DashChunkSource.Factory factory, List<AdaptationSet> list, List<EventStream> list2) {
        int[][] groupedAdaptationSetIndices = getGroupedAdaptationSetIndices(list);
        int length = groupedAdaptationSetIndices.length;
        boolean[] zArr = new boolean[length];
        Format[][] formatArr = new Format[length][];
        int size = list2.size() + identifyEmbeddedTracks(length, list, groupedAdaptationSetIndices, zArr, formatArr) + length;
        TrackGroup[] trackGroupArr = new TrackGroup[size];
        TrackGroupInfo[] trackGroupInfoArr = new TrackGroupInfo[size];
        buildManifestEventTrackGroupInfos(list2, trackGroupArr, trackGroupInfoArr, buildPrimaryAndEmbeddedTrackGroupInfos(drmSessionManager, factory, list, groupedAdaptationSetIndices, length, zArr, formatArr, trackGroupArr, trackGroupInfoArr));
        return Pair.create(new TrackGroupArray(trackGroupArr), trackGroupInfoArr);
    }

    private static boolean canMergeAdaptationSets(AdaptationSet adaptationSet, AdaptationSet adaptationSet2) {
        if (adaptationSet.type != adaptationSet2.type) {
            return false;
        }
        if (adaptationSet.representations.isEmpty() || adaptationSet2.representations.isEmpty()) {
            return true;
        }
        Format format = adaptationSet.representations.get(0).format;
        Format format2 = adaptationSet2.representations.get(0).format;
        return Objects.equals(format.language, format2.language) && (format.roleFlags & (-16385)) == (format2.roleFlags & (-16385));
    }

    private static Descriptor findAdaptationSetSwitchingProperty(List<Descriptor> list) {
        return findDescriptor(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    private static Descriptor findDescriptor(List<Descriptor> list, String str) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            Descriptor descriptor = list.get(i2);
            if (str.equals(descriptor.schemeIdUri)) {
                return descriptor;
            }
        }
        return null;
    }

    private static Descriptor findTrickPlayProperty(List<Descriptor> list) {
        return findDescriptor(list, "http://dashif.org/guidelines/trickmode");
    }

    private static Format[] getClosedCaptionTrackFormats(List<AdaptationSet> list, int[] iArr) {
        for (int i2 : iArr) {
            AdaptationSet adaptationSet = list.get(i2);
            List<Descriptor> list2 = list.get(i2).accessibilityDescriptors;
            for (int i7 = 0; i7 < list2.size(); i7++) {
                Descriptor descriptor = list2.get(i7);
                if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri)) {
                    return parseClosedCaptionDescriptor(descriptor, CEA608_SERVICE_DESCRIPTOR_REGEX, new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_CEA608).setId(adaptationSet.id + ":cea608").build());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri)) {
                    return parseClosedCaptionDescriptor(descriptor, CEA708_SERVICE_DESCRIPTOR_REGEX, new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_CEA708).setId(adaptationSet.id + ":cea708").build());
                }
            }
        }
        return new Format[0];
    }

    private static int[][] getGroupedAdaptationSetIndices(List<AdaptationSet> list) {
        Descriptor findAdaptationSetSwitchingProperty;
        Integer num;
        int size = list.size();
        HashMap newHashMapWithExpectedSize = com.google.common.collect.C.newHashMapWithExpectedSize(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i2 = 0; i2 < size; i2++) {
            newHashMapWithExpectedSize.put(Long.valueOf(list.get(i2).id), Integer.valueOf(i2));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i2));
            arrayList.add(arrayList2);
            sparseArray.put(i2, arrayList2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            AdaptationSet adaptationSet = list.get(i7);
            Descriptor findTrickPlayProperty = findTrickPlayProperty(adaptationSet.essentialProperties);
            if (findTrickPlayProperty == null) {
                findTrickPlayProperty = findTrickPlayProperty(adaptationSet.supplementalProperties);
            }
            int intValue = (findTrickPlayProperty == null || (num = (Integer) newHashMapWithExpectedSize.get(Long.valueOf(Long.parseLong(findTrickPlayProperty.value)))) == null || !canMergeAdaptationSets(adaptationSet, list.get(num.intValue()))) ? i7 : num.intValue();
            if (intValue == i7 && (findAdaptationSetSwitchingProperty = findAdaptationSetSwitchingProperty(adaptationSet.supplementalProperties)) != null) {
                for (String str : Util.split(findAdaptationSetSwitchingProperty.value, ",")) {
                    Integer num2 = (Integer) newHashMapWithExpectedSize.get(Long.valueOf(Long.parseLong(str)));
                    if (num2 != null && canMergeAdaptationSets(adaptationSet, list.get(num2.intValue()))) {
                        intValue = Math.min(intValue, num2.intValue());
                    }
                }
            }
            if (intValue != i7) {
                List list2 = (List) sparseArray.get(i7);
                List list3 = (List) sparseArray.get(intValue);
                list3.addAll(list2);
                sparseArray.put(i7, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i8 = 0; i8 < size2; i8++) {
            int[] array = com.google.common.primitives.a.toArray((Collection) arrayList.get(i8));
            iArr[i8] = array;
            Arrays.sort(array);
        }
        return iArr;
    }

    private int getPrimaryStreamIndex(int i2, int[] iArr) {
        int i7 = iArr[i2];
        if (i7 == -1) {
            return -1;
        }
        int i8 = this.trackGroupInfos[i7].primaryTrackGroupIndex;
        for (int i9 = 0; i9 < iArr.length; i9++) {
            int i10 = iArr[i9];
            if (i10 == i8 && this.trackGroupInfos[i10].trackGroupCategory == 0) {
                return i9;
            }
        }
        return -1;
    }

    private int[] getStreamIndexToTrackGroupIndex(ExoTrackSelection[] exoTrackSelectionArr) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                iArr[i2] = this.trackGroups.indexOf(exoTrackSelection.getTrackGroup());
            } else {
                iArr[i2] = -1;
            }
        }
        return iArr;
    }

    private static boolean hasEventMessageTrack(List<AdaptationSet> list, int[] iArr) {
        for (int i2 : iArr) {
            List<Representation> list2 = list.get(i2).representations;
            for (int i7 = 0; i7 < list2.size(); i7++) {
                if (!list2.get(i7).inbandEventStreams.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int identifyEmbeddedTracks(int i2, List<AdaptationSet> list, int[][] iArr, boolean[] zArr, Format[][] formatArr) {
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            if (hasEventMessageTrack(list, iArr[i8])) {
                zArr[i8] = true;
                i7++;
            }
            Format[] closedCaptionTrackFormats = getClosedCaptionTrackFormats(list, iArr[i8]);
            formatArr[i8] = closedCaptionTrackFormats;
            if (closedCaptionTrackFormats.length != 0) {
                i7++;
            }
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$selectTracks$0(ChunkSampleStream chunkSampleStream) {
        return ImmutableList.of(Integer.valueOf(chunkSampleStream.primaryTrackType));
    }

    private static void maybeUpdateFormatsForParsedText(DashChunkSource.Factory factory, Format[] formatArr) {
        for (int i2 = 0; i2 < formatArr.length; i2++) {
            formatArr[i2] = factory.getOutputTextFormat(formatArr[i2]);
        }
    }

    private static ChunkSampleStream<DashChunkSource>[] newSampleStreamArray(int i2) {
        return new ChunkSampleStream[i2];
    }

    private static Format[] parseClosedCaptionDescriptor(Descriptor descriptor, Pattern pattern, Format format) {
        String str = descriptor.value;
        if (str == null) {
            return new Format[]{format};
        }
        String[] split = Util.split(str, ";");
        Format[] formatArr = new Format[split.length];
        for (int i2 = 0; i2 < split.length; i2++) {
            Matcher matcher = pattern.matcher(split[i2]);
            if (!matcher.matches()) {
                return new Format[]{format};
            }
            int parseInt = Integer.parseInt(matcher.group(1));
            formatArr[i2] = format.buildUpon().setId(format.id + ":" + parseInt).setAccessibilityChannel(parseInt).setLanguage(matcher.group(2)).build();
        }
        return formatArr;
    }

    private void releaseDisabledStreams(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr) {
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            if (exoTrackSelectionArr[i2] == null || !zArr[i2]) {
                SampleStream sampleStream = sampleStreamArr[i2];
                if (sampleStream instanceof ChunkSampleStream) {
                    ((ChunkSampleStream) sampleStream).release(this);
                } else if (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream) {
                    ((ChunkSampleStream.EmbeddedSampleStream) sampleStream).release();
                }
                sampleStreamArr[i2] = null;
            }
        }
    }

    private void releaseOrphanEmbeddedStreams(ExoTrackSelection[] exoTrackSelectionArr, SampleStream[] sampleStreamArr, int[] iArr) {
        boolean z6;
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            SampleStream sampleStream = sampleStreamArr[i2];
            if ((sampleStream instanceof EmptySampleStream) || (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream)) {
                int primaryStreamIndex = getPrimaryStreamIndex(i2, iArr);
                if (primaryStreamIndex == -1) {
                    z6 = sampleStreamArr[i2] instanceof EmptySampleStream;
                } else {
                    SampleStream sampleStream2 = sampleStreamArr[i2];
                    z6 = (sampleStream2 instanceof ChunkSampleStream.EmbeddedSampleStream) && ((ChunkSampleStream.EmbeddedSampleStream) sampleStream2).parent == sampleStreamArr[primaryStreamIndex];
                }
                if (!z6) {
                    SampleStream sampleStream3 = sampleStreamArr[i2];
                    if (sampleStream3 instanceof ChunkSampleStream.EmbeddedSampleStream) {
                        ((ChunkSampleStream.EmbeddedSampleStream) sampleStream3).release();
                    }
                    sampleStreamArr[i2] = null;
                }
            }
        }
    }

    private void selectNewStreams(ExoTrackSelection[] exoTrackSelectionArr, SampleStream[] sampleStreamArr, boolean[] zArr, long j7, int[] iArr) {
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                SampleStream sampleStream = sampleStreamArr[i2];
                if (sampleStream == null) {
                    zArr[i2] = true;
                    TrackGroupInfo trackGroupInfo = this.trackGroupInfos[iArr[i2]];
                    int i7 = trackGroupInfo.trackGroupCategory;
                    if (i7 == 0) {
                        sampleStreamArr[i2] = buildSampleStream(trackGroupInfo, exoTrackSelection, j7);
                    } else if (i7 == 2) {
                        sampleStreamArr[i2] = new EventSampleStream(this.eventStreams.get(trackGroupInfo.eventStreamGroupIndex), exoTrackSelection.getTrackGroup().getFormat(0), this.manifest.dynamic);
                    }
                } else if (sampleStream instanceof ChunkSampleStream) {
                    ((DashChunkSource) ((ChunkSampleStream) sampleStream).getChunkSource()).updateTrackSelection(exoTrackSelection);
                }
            }
        }
        for (int i8 = 0; i8 < exoTrackSelectionArr.length; i8++) {
            if (sampleStreamArr[i8] == null && exoTrackSelectionArr[i8] != null) {
                TrackGroupInfo trackGroupInfo2 = this.trackGroupInfos[iArr[i8]];
                if (trackGroupInfo2.trackGroupCategory == 1) {
                    int primaryStreamIndex = getPrimaryStreamIndex(i8, iArr);
                    if (primaryStreamIndex == -1) {
                        sampleStreamArr[i8] = new EmptySampleStream();
                    } else {
                        sampleStreamArr[i8] = ((ChunkSampleStream) sampleStreamArr[primaryStreamIndex]).selectEmbeddedTrack(j7, trackGroupInfo2.trackType);
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return this.compositeSequenceableLoader.continueLoading(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j7, boolean z6) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.discardBuffer(j7, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.getAdjustedSeekPositionUs(j7, seekParameters);
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

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        List<AdaptationSet> list2 = this.manifest.getPeriod(this.periodIndex).adaptationSets;
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection exoTrackSelection : list) {
            TrackGroupInfo trackGroupInfo = this.trackGroupInfos[this.trackGroups.indexOf(exoTrackSelection.getTrackGroup())];
            if (trackGroupInfo.trackGroupCategory == 0) {
                int[] iArr = trackGroupInfo.adaptationSetIndices;
                int length = exoTrackSelection.length();
                int[] iArr2 = new int[length];
                for (int i2 = 0; i2 < exoTrackSelection.length(); i2++) {
                    iArr2[i2] = exoTrackSelection.getIndexInTrackGroup(i2);
                }
                Arrays.sort(iArr2);
                int size = list2.get(iArr[0]).representations.size();
                int i7 = 0;
                int i8 = 0;
                for (int i9 = 0; i9 < length; i9++) {
                    int i10 = iArr2[i9];
                    while (true) {
                        int i11 = i8 + size;
                        if (i10 >= i11) {
                            i7++;
                            size = list2.get(iArr[i7]).representations.size();
                            i8 = i11;
                        }
                    }
                    arrayList.add(new StreamKey(this.periodIndex, iArr[i7], i10 - i8));
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSampleStream.ReleaseCallback
    public synchronized void onSampleStreamReleased(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        PlayerEmsgHandler.PlayerTrackEmsgHandler remove = this.trackEmsgHandlerBySampleStream.remove(chunkSampleStream);
        if (remove != null) {
            remove.release();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j7) {
        this.callback = callback;
        callback.onPrepared(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            if (chunkSampleStream.consumeInitialDiscontinuity()) {
                return this.initialStartTimeUs;
            }
        }
        return androidx.media3.common.C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            if (!chunkSampleStream.isLoading()) {
                chunkSampleStream.discardUpstreamSamplesForClippedDuration(this.manifest.getPeriodDurationUs(this.periodIndex));
            }
        }
        this.compositeSequenceableLoader.reevaluateBuffer(j7);
    }

    public void release() {
        this.playerEmsgHandler.release();
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.release(this);
        }
        this.callback = null;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j7) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.seekToUs(j7);
        }
        for (EventSampleStream eventSampleStream : this.eventSampleStreams) {
            eventSampleStream.seekToUs(j7);
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j7) {
        int[] streamIndexToTrackGroupIndex = getStreamIndexToTrackGroupIndex(exoTrackSelectionArr);
        releaseDisabledStreams(exoTrackSelectionArr, zArr, sampleStreamArr);
        releaseOrphanEmbeddedStreams(exoTrackSelectionArr, sampleStreamArr, streamIndexToTrackGroupIndex);
        selectNewStreams(exoTrackSelectionArr, sampleStreamArr, zArr2, j7, streamIndexToTrackGroupIndex);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream instanceof ChunkSampleStream) {
                arrayList.add((ChunkSampleStream) sampleStream);
            } else if (sampleStream instanceof EventSampleStream) {
                arrayList2.add((EventSampleStream) sampleStream);
            }
        }
        ChunkSampleStream<DashChunkSource>[] newSampleStreamArray = newSampleStreamArray(arrayList.size());
        this.sampleStreams = newSampleStreamArray;
        arrayList.toArray(newSampleStreamArray);
        EventSampleStream[] eventSampleStreamArr = new EventSampleStream[arrayList2.size()];
        this.eventSampleStreams = eventSampleStreamArr;
        arrayList2.toArray(eventSampleStreamArr);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.create(arrayList, B.transform(arrayList, new c()));
        if (this.canReportInitialDiscontinuity) {
            this.canReportInitialDiscontinuity = false;
            this.initialStartTimeUs = j7;
        }
        return j7;
    }

    public void updateManifest(DashManifest dashManifest, int i2) {
        this.manifest = dashManifest;
        this.periodIndex = i2;
        this.playerEmsgHandler.updateManifest(dashManifest);
        ChunkSampleStream<DashChunkSource>[] chunkSampleStreamArr = this.sampleStreams;
        if (chunkSampleStreamArr != null) {
            for (ChunkSampleStream<DashChunkSource> chunkSampleStream : chunkSampleStreamArr) {
                chunkSampleStream.getChunkSource().updateManifest(dashManifest, i2);
            }
            this.callback.onContinueLoadingRequested(this);
        }
        this.eventStreams = dashManifest.getPeriod(i2).eventStreams;
        for (EventSampleStream eventSampleStream : this.eventSampleStreams) {
            Iterator<EventStream> it = this.eventStreams.iterator();
            while (true) {
                if (it.hasNext()) {
                    EventStream next = it.next();
                    if (next.id().equals(eventSampleStream.eventStreamId())) {
                        eventSampleStream.updateEventStream(next, dashManifest.dynamic && i2 == dashManifest.getPeriodCount() - 1);
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        this.callback.onContinueLoadingRequested(this);
    }
}
