package androidx.media3.common;

import Q3.C0248s;
import V3.F;
import android.graphics.Rect;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public abstract class SimpleBasePlayer extends BasePlayer {
    private static final long POSITION_DISCONTINUITY_THRESHOLD_MS = 1000;
    private final HandlerWrapper applicationHandler;
    private final Looper applicationLooper;
    private final ListenerSet<Player.Listener> listeners;
    private final HashSet<F> pendingOperations;
    private final Timeline.Period period;
    private boolean released;
    private State state;

    public static final class LivePositionSupplier implements PositionSupplier {
        private long finalValue = C.TIME_UNSET;
        private final PositionSupplier livePosition;

        public LivePositionSupplier(PositionSupplier positionSupplier) {
            this.livePosition = positionSupplier;
        }

        public void disconnect(long j7) {
            this.finalValue = j7;
        }

        @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
        public long get() {
            long j7 = this.finalValue;
            return j7 != C.TIME_UNSET ? j7 : this.livePosition.get();
        }
    }

    public static final class MediaItemData {
        public final long defaultPositionUs;
        public final long durationUs;
        public final long elapsedRealtimeEpochOffsetMs;
        public final boolean isDynamic;
        public final boolean isPlaceholder;
        public final boolean isSeekable;
        public final MediaItem.LiveConfiguration liveConfiguration;
        public final Object manifest;
        public final MediaItem mediaItem;
        public final MediaMetadata mediaMetadata;
        private final long[] periodPositionInWindowUs;
        public final ImmutableList<PeriodData> periods;
        public final long positionInFirstPeriodUs;
        public final long presentationStartTimeMs;
        public final Tracks tracks;
        public final Object uid;
        public final long windowStartTimeMs;

        public static final class Builder {
            private long defaultPositionUs;
            private long durationUs;
            private long elapsedRealtimeEpochOffsetMs;
            private boolean isDynamic;
            private boolean isPlaceholder;
            private boolean isSeekable;
            private MediaItem.LiveConfiguration liveConfiguration;
            private Object manifest;
            private MediaItem mediaItem;
            private MediaMetadata mediaMetadata;
            private ImmutableList<PeriodData> periods;
            private long positionInFirstPeriodUs;
            private long presentationStartTimeMs;
            private Tracks tracks;
            private Object uid;
            private long windowStartTimeMs;

            public MediaItemData build() {
                return new MediaItemData(this);
            }

            public Builder setDefaultPositionUs(long j7) {
                P3.v.checkArgument(j7 >= 0);
                this.defaultPositionUs = j7;
                return this;
            }

            public Builder setDurationUs(long j7) {
                P3.v.checkArgument(j7 == C.TIME_UNSET || j7 >= 0);
                this.durationUs = j7;
                return this;
            }

            public Builder setElapsedRealtimeEpochOffsetMs(long j7) {
                this.elapsedRealtimeEpochOffsetMs = j7;
                return this;
            }

            public Builder setIsDynamic(boolean z6) {
                this.isDynamic = z6;
                return this;
            }

            public Builder setIsPlaceholder(boolean z6) {
                this.isPlaceholder = z6;
                return this;
            }

            public Builder setIsSeekable(boolean z6) {
                this.isSeekable = z6;
                return this;
            }

            public Builder setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration) {
                this.liveConfiguration = liveConfiguration;
                return this;
            }

            public Builder setManifest(Object obj) {
                this.manifest = obj;
                return this;
            }

            public Builder setMediaItem(MediaItem mediaItem) {
                this.mediaItem = mediaItem;
                return this;
            }

            public Builder setMediaMetadata(MediaMetadata mediaMetadata) {
                this.mediaMetadata = mediaMetadata;
                return this;
            }

            public Builder setPeriods(List<PeriodData> list) {
                int size = list.size();
                int i2 = 0;
                while (i2 < size - 1) {
                    P3.v.checkArgument(list.get(i2).durationUs != C.TIME_UNSET, "Periods other than last need a duration");
                    int i7 = i2 + 1;
                    for (int i8 = i7; i8 < size; i8++) {
                        P3.v.checkArgument(!list.get(i2).uid.equals(list.get(i8).uid), "Duplicate PeriodData UIDs in period list");
                    }
                    i2 = i7;
                }
                this.periods = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setPositionInFirstPeriodUs(long j7) {
                P3.v.checkArgument(j7 >= 0);
                this.positionInFirstPeriodUs = j7;
                return this;
            }

            public Builder setPresentationStartTimeMs(long j7) {
                this.presentationStartTimeMs = j7;
                return this;
            }

            public Builder setTracks(Tracks tracks) {
                this.tracks = tracks;
                return this;
            }

            public Builder setUid(Object obj) {
                this.uid = obj;
                return this;
            }

            public Builder setWindowStartTimeMs(long j7) {
                this.windowStartTimeMs = j7;
                return this;
            }

            public Builder(Object obj) {
                this.uid = obj;
                this.tracks = Tracks.EMPTY;
                this.mediaItem = MediaItem.EMPTY;
                this.mediaMetadata = null;
                this.manifest = null;
                this.liveConfiguration = null;
                this.presentationStartTimeMs = C.TIME_UNSET;
                this.windowStartTimeMs = C.TIME_UNSET;
                this.elapsedRealtimeEpochOffsetMs = C.TIME_UNSET;
                this.isSeekable = false;
                this.isDynamic = false;
                this.defaultPositionUs = 0L;
                this.durationUs = C.TIME_UNSET;
                this.positionInFirstPeriodUs = 0L;
                this.isPlaceholder = false;
                this.periods = ImmutableList.of();
            }

            private Builder(MediaItemData mediaItemData) {
                this.uid = mediaItemData.uid;
                this.tracks = mediaItemData.tracks;
                this.mediaItem = mediaItemData.mediaItem;
                this.mediaMetadata = mediaItemData.mediaMetadata;
                this.manifest = mediaItemData.manifest;
                this.liveConfiguration = mediaItemData.liveConfiguration;
                this.presentationStartTimeMs = mediaItemData.presentationStartTimeMs;
                this.windowStartTimeMs = mediaItemData.windowStartTimeMs;
                this.elapsedRealtimeEpochOffsetMs = mediaItemData.elapsedRealtimeEpochOffsetMs;
                this.isSeekable = mediaItemData.isSeekable;
                this.isDynamic = mediaItemData.isDynamic;
                this.defaultPositionUs = mediaItemData.defaultPositionUs;
                this.durationUs = mediaItemData.durationUs;
                this.positionInFirstPeriodUs = mediaItemData.positionInFirstPeriodUs;
                this.isPlaceholder = mediaItemData.isPlaceholder;
                this.periods = mediaItemData.periods;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static MediaItemData buildFromState(State state, int i2, Timeline.Period period, Timeline.Window window) {
            boolean z6 = SimpleBasePlayer.getCurrentMediaItemIndexInternal(state) == i2;
            state.timeline.getWindow(i2, window);
            C0248s builder = ImmutableList.builder();
            for (int i7 = window.firstPeriodIndex; i7 <= window.lastPeriodIndex; i7++) {
                state.timeline.getPeriod(i7, period, true);
                builder.add((Object) new PeriodData.Builder(P3.v.checkNotNull(period.uid)).setAdPlaybackState(period.adPlaybackState).setDurationUs(period.durationUs).setIsPlaceholder(period.isPlaceholder).build());
            }
            return new Builder(window.uid).setDefaultPositionUs(window.defaultPositionUs).setDurationUs(window.durationUs).setElapsedRealtimeEpochOffsetMs(window.elapsedRealtimeEpochOffsetMs).setIsDynamic(window.isDynamic).setIsPlaceholder(window.isPlaceholder).setIsSeekable(window.isSeekable).setLiveConfiguration(window.liveConfiguration).setManifest(window.manifest).setMediaItem(window.mediaItem).setMediaMetadata(z6 ? state.currentMetadata : null).setPeriods(builder.build()).setPositionInFirstPeriodUs(window.positionInFirstPeriodUs).setPresentationStartTimeMs(window.presentationStartTimeMs).setTracks(z6 ? state.currentTracks : Tracks.EMPTY).setWindowStartTimeMs(window.windowStartTimeMs).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Period getPeriod(int i2, int i7, Timeline.Period period) {
            if (this.periods.isEmpty()) {
                Object obj = this.uid;
                long j7 = this.positionInFirstPeriodUs;
                period.set(obj, obj, i2, j7 + this.durationUs, -j7, AdPlaybackState.NONE, this.isPlaceholder);
                return period;
            }
            PeriodData periodData = this.periods.get(i7);
            Object obj2 = periodData.uid;
            period.set(obj2, Pair.create(this.uid, obj2), i2, periodData.durationUs, this.periodPositionInWindowUs[i7], periodData.adPlaybackState, periodData.isPlaceholder);
            return period;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object getPeriodUid(int i2) {
            if (this.periods.isEmpty()) {
                return this.uid;
            }
            return Pair.create(this.uid, this.periods.get(i2).uid);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Window getWindow(int i2, Timeline.Window window) {
            int size;
            boolean z6;
            if (this.periods.isEmpty()) {
                size = 1;
                z6 = true;
            } else {
                size = this.periods.size();
                z6 = true;
            }
            window.set(this.uid, this.mediaItem, this.manifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, this.isSeekable, this.isDynamic, this.liveConfiguration, this.defaultPositionUs, this.durationUs, i2, (i2 + size) - 1, this.positionInFirstPeriodUs);
            window.isPlaceholder = this.isPlaceholder;
            return window;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaItemData)) {
                return false;
            }
            MediaItemData mediaItemData = (MediaItemData) obj;
            return this.uid.equals(mediaItemData.uid) && this.tracks.equals(mediaItemData.tracks) && this.mediaItem.equals(mediaItemData.mediaItem) && Objects.equals(this.mediaMetadata, mediaItemData.mediaMetadata) && Objects.equals(this.manifest, mediaItemData.manifest) && Objects.equals(this.liveConfiguration, mediaItemData.liveConfiguration) && this.presentationStartTimeMs == mediaItemData.presentationStartTimeMs && this.windowStartTimeMs == mediaItemData.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == mediaItemData.elapsedRealtimeEpochOffsetMs && this.isSeekable == mediaItemData.isSeekable && this.isDynamic == mediaItemData.isDynamic && this.defaultPositionUs == mediaItemData.defaultPositionUs && this.durationUs == mediaItemData.durationUs && this.positionInFirstPeriodUs == mediaItemData.positionInFirstPeriodUs && this.isPlaceholder == mediaItemData.isPlaceholder && this.periods.equals(mediaItemData.periods);
        }

        public int hashCode() {
            int hashCode = (this.mediaItem.hashCode() + ((this.tracks.hashCode() + ((this.uid.hashCode() + 217) * 31)) * 31)) * 31;
            MediaMetadata mediaMetadata = this.mediaMetadata;
            int hashCode2 = (hashCode + (mediaMetadata == null ? 0 : mediaMetadata.hashCode())) * 31;
            Object obj = this.manifest;
            int hashCode3 = (hashCode2 + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int hashCode4 = liveConfiguration != null ? liveConfiguration.hashCode() : 0;
            long j7 = this.presentationStartTimeMs;
            int i2 = (((hashCode3 + hashCode4) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31;
            long j8 = this.windowStartTimeMs;
            int i7 = (i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
            long j9 = this.elapsedRealtimeEpochOffsetMs;
            int i8 = (((((i7 + ((int) (j9 ^ (j9 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31;
            long j10 = this.defaultPositionUs;
            int i9 = (i8 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.durationUs;
            int i10 = (i9 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.positionInFirstPeriodUs;
            return this.periods.hashCode() + ((((i10 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31);
        }

        private MediaItemData(Builder builder) {
            int i2 = 0;
            if (builder.liveConfiguration == null) {
                P3.v.checkArgument(builder.presentationStartTimeMs == C.TIME_UNSET, "presentationStartTimeMs can only be set if liveConfiguration != null");
                P3.v.checkArgument(builder.windowStartTimeMs == C.TIME_UNSET, "windowStartTimeMs can only be set if liveConfiguration != null");
                P3.v.checkArgument(builder.elapsedRealtimeEpochOffsetMs == C.TIME_UNSET, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null");
            } else if (builder.presentationStartTimeMs != C.TIME_UNSET && builder.windowStartTimeMs != C.TIME_UNSET) {
                P3.v.checkArgument(builder.windowStartTimeMs >= builder.presentationStartTimeMs, "windowStartTimeMs can't be less than presentationStartTimeMs");
            }
            int size = builder.periods.size();
            if (builder.durationUs != C.TIME_UNSET) {
                P3.v.checkArgument(builder.defaultPositionUs <= builder.durationUs, "defaultPositionUs can't be greater than durationUs");
            }
            this.uid = builder.uid;
            this.tracks = builder.tracks;
            this.mediaItem = builder.mediaItem;
            this.mediaMetadata = builder.mediaMetadata;
            this.manifest = builder.manifest;
            this.liveConfiguration = builder.liveConfiguration;
            this.presentationStartTimeMs = builder.presentationStartTimeMs;
            this.windowStartTimeMs = builder.windowStartTimeMs;
            this.elapsedRealtimeEpochOffsetMs = builder.elapsedRealtimeEpochOffsetMs;
            this.isSeekable = builder.isSeekable;
            this.isDynamic = builder.isDynamic;
            this.defaultPositionUs = builder.defaultPositionUs;
            this.durationUs = builder.durationUs;
            long j7 = builder.positionInFirstPeriodUs;
            this.positionInFirstPeriodUs = j7;
            this.isPlaceholder = builder.isPlaceholder;
            ImmutableList<PeriodData> immutableList = builder.periods;
            this.periods = immutableList;
            long[] jArr = new long[immutableList.size()];
            this.periodPositionInWindowUs = jArr;
            if (immutableList.isEmpty()) {
                return;
            }
            jArr[0] = -j7;
            while (i2 < size - 1) {
                long[] jArr2 = this.periodPositionInWindowUs;
                int i7 = i2 + 1;
                jArr2[i7] = jArr2[i2] + this.periods.get(i2).durationUs;
                i2 = i7;
            }
        }
    }

    public static final class PeriodData {
        public final AdPlaybackState adPlaybackState;
        public final long durationUs;
        public final boolean isPlaceholder;
        public final Object uid;

        public static final class Builder {
            private AdPlaybackState adPlaybackState;
            private long durationUs;
            private boolean isPlaceholder;
            private Object uid;

            public PeriodData build() {
                return new PeriodData(this);
            }

            public Builder setAdPlaybackState(AdPlaybackState adPlaybackState) {
                this.adPlaybackState = adPlaybackState;
                return this;
            }

            public Builder setDurationUs(long j7) {
                P3.v.checkArgument(j7 == C.TIME_UNSET || j7 >= 0);
                this.durationUs = j7;
                return this;
            }

            public Builder setIsPlaceholder(boolean z6) {
                this.isPlaceholder = z6;
                return this;
            }

            public Builder setUid(Object obj) {
                this.uid = obj;
                return this;
            }

            public Builder(Object obj) {
                this.uid = obj;
                this.durationUs = 0L;
                this.adPlaybackState = AdPlaybackState.NONE;
                this.isPlaceholder = false;
            }

            private Builder(PeriodData periodData) {
                this.uid = periodData.uid;
                this.durationUs = periodData.durationUs;
                this.adPlaybackState = periodData.adPlaybackState;
                this.isPlaceholder = periodData.isPlaceholder;
            }
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PeriodData)) {
                return false;
            }
            PeriodData periodData = (PeriodData) obj;
            return this.uid.equals(periodData.uid) && this.durationUs == periodData.durationUs && this.adPlaybackState.equals(periodData.adPlaybackState) && this.isPlaceholder == periodData.isPlaceholder;
        }

        public int hashCode() {
            int hashCode = (this.uid.hashCode() + 217) * 31;
            long j7 = this.durationUs;
            return ((this.adPlaybackState.hashCode() + ((hashCode + ((int) (j7 ^ (j7 >>> 32)))) * 31)) * 31) + (this.isPlaceholder ? 1 : 0);
        }

        private PeriodData(Builder builder) {
            this.uid = builder.uid;
            this.durationUs = builder.durationUs;
            this.adPlaybackState = builder.adPlaybackState;
            this.isPlaceholder = builder.isPlaceholder;
        }
    }

    public static final class PlaceholderUid {
        private PlaceholderUid() {
        }
    }

    public static final class PlaylistTimeline extends Timeline {
        private final int[] firstPeriodIndexByWindowIndex;
        private final HashMap<Object, Integer> periodIndexByUid;
        private final ImmutableList<MediaItemData> playlist;
        private final int[] windowIndexByPeriodIndex;

        public PlaylistTimeline(List<MediaItemData> list) {
            int size = list.size();
            this.playlist = ImmutableList.copyOf((Collection) list);
            this.firstPeriodIndexByWindowIndex = new int[size];
            int i2 = 0;
            for (int i7 = 0; i7 < size; i7++) {
                MediaItemData mediaItemData = list.get(i7);
                this.firstPeriodIndexByWindowIndex[i7] = i2;
                i2 += getPeriodCountInMediaItem(mediaItemData);
            }
            this.windowIndexByPeriodIndex = new int[i2];
            this.periodIndexByUid = new HashMap<>();
            int i8 = 0;
            for (int i9 = 0; i9 < size; i9++) {
                MediaItemData mediaItemData2 = list.get(i9);
                for (int i10 = 0; i10 < getPeriodCountInMediaItem(mediaItemData2); i10++) {
                    this.periodIndexByUid.put(mediaItemData2.getPeriodUid(i10), Integer.valueOf(i8));
                    this.windowIndexByPeriodIndex[i8] = i9;
                    i8++;
                }
            }
        }

        private static int getPeriodCountInMediaItem(MediaItemData mediaItemData) {
            if (mediaItemData.periods.isEmpty()) {
                return 1;
            }
            return mediaItemData.periods.size();
        }

        @Override // androidx.media3.common.Timeline
        public int getFirstWindowIndex(boolean z6) {
            return super.getFirstWindowIndex(z6);
        }

        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            Integer num = this.periodIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // androidx.media3.common.Timeline
        public int getLastWindowIndex(boolean z6) {
            return super.getLastWindowIndex(z6);
        }

        @Override // androidx.media3.common.Timeline
        public int getNextWindowIndex(int i2, int i7, boolean z6) {
            return super.getNextWindowIndex(i2, i7, z6);
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i2, Timeline.Period period, boolean z6) {
            int i7 = this.windowIndexByPeriodIndex[i2];
            return this.playlist.get(i7).getPeriod(i7, i2 - this.firstPeriodIndexByWindowIndex[i7], period);
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
            return getPeriod(((Integer) P3.v.checkNotNull(this.periodIndexByUid.get(obj))).intValue(), period, true);
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return this.windowIndexByPeriodIndex.length;
        }

        @Override // androidx.media3.common.Timeline
        public int getPreviousWindowIndex(int i2, int i7, boolean z6) {
            return super.getPreviousWindowIndex(i2, i7, z6);
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i2) {
            int i7 = this.windowIndexByPeriodIndex[i2];
            return this.playlist.get(i7).getPeriodUid(i2 - this.firstPeriodIndexByWindowIndex[i7]);
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i2, Timeline.Window window, long j7) {
            return this.playlist.get(i2).getWindow(this.firstPeriodIndexByWindowIndex[i2], window);
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return this.playlist.size();
        }
    }

    public interface PositionSupplier {
        public static final PositionSupplier ZERO = y.a(0);

        long get();
    }

    public static final class State {
        public final PositionSupplier adBufferedPositionMsSupplier;
        public final PositionSupplier adPositionMsSupplier;
        public final AudioAttributes audioAttributes;
        public final int audioSessionId;
        public final Player.Commands availableCommands;
        public final PositionSupplier contentBufferedPositionMsSupplier;
        public final PositionSupplier contentPositionMsSupplier;
        public final int currentAdGroupIndex;
        public final int currentAdIndexInAdGroup;
        public final CueGroup currentCues;
        public final int currentMediaItemIndex;
        public final MediaMetadata currentMetadata;
        public final Tracks currentTracks;
        public final DeviceInfo deviceInfo;
        public final int deviceVolume;
        public final long discontinuityPositionMs;
        public final boolean hasPositionDiscontinuity;
        public final boolean isDeviceMuted;
        public final boolean isLoading;
        public final long maxSeekToPreviousPositionMs;
        public final boolean newlyRenderedFirstFrame;
        public final boolean playWhenReady;
        public final int playWhenReadyChangeReason;
        public final PlaybackParameters playbackParameters;
        public final int playbackState;
        public final int playbackSuppressionReason;
        public final PlaybackException playerError;
        public final MediaMetadata playlistMetadata;
        public final int positionDiscontinuityReason;
        public final int repeatMode;
        public final long seekBackIncrementMs;
        public final long seekForwardIncrementMs;
        public final boolean shuffleModeEnabled;
        public final Size surfaceSize;
        public final Metadata timedMetadata;
        public final Timeline timeline;
        public final PositionSupplier totalBufferedDurationMsSupplier;
        public final TrackSelectionParameters trackSelectionParameters;
        public final float unmuteVolume;
        private final boolean usesDerivedMediaMetadata;
        public final VideoSize videoSize;
        public final float volume;

        public static final class Builder {
            private PositionSupplier adBufferedPositionMsSupplier;
            private Long adPositionMs;
            private PositionSupplier adPositionMsSupplier;
            private AudioAttributes audioAttributes;
            private int audioSessionId;
            private Player.Commands availableCommands;
            private PositionSupplier contentBufferedPositionMsSupplier;
            private Long contentPositionMs;
            private PositionSupplier contentPositionMsSupplier;
            private int currentAdGroupIndex;
            private int currentAdIndexInAdGroup;
            private CueGroup currentCues;
            private int currentMediaItemIndex;
            private MediaMetadata currentMetadata;
            private Tracks currentTracks;
            private DeviceInfo deviceInfo;
            private int deviceVolume;
            private long discontinuityPositionMs;
            private boolean hasPositionDiscontinuity;
            private boolean isDeviceMuted;
            private boolean isLoading;
            private long maxSeekToPreviousPositionMs;
            private boolean newlyRenderedFirstFrame;
            private boolean playWhenReady;
            private int playWhenReadyChangeReason;
            private PlaybackParameters playbackParameters;
            private int playbackState;
            private int playbackSuppressionReason;
            private PlaybackException playerError;
            private ImmutableList<MediaItemData> playlist;
            private MediaMetadata playlistMetadata;
            private int positionDiscontinuityReason;
            private int repeatMode;
            private long seekBackIncrementMs;
            private long seekForwardIncrementMs;
            private boolean shuffleModeEnabled;
            private Size surfaceSize;
            private Metadata timedMetadata;
            private Timeline timeline;
            private PositionSupplier totalBufferedDurationMsSupplier;
            private TrackSelectionParameters trackSelectionParameters;
            private float unmuteVolume;
            private VideoSize videoSize;
            private float volume;

            public State build() {
                return new State(this);
            }

            public Builder clearPositionDiscontinuity() {
                this.hasPositionDiscontinuity = false;
                return this;
            }

            public Builder setAdBufferedPositionMs(PositionSupplier positionSupplier) {
                this.adBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setAdPositionMs(long j7) {
                this.adPositionMs = Long.valueOf(j7);
                return this;
            }

            public Builder setAudioAttributes(AudioAttributes audioAttributes) {
                this.audioAttributes = audioAttributes;
                return this;
            }

            public Builder setAudioSessionId(int i2) {
                this.audioSessionId = i2;
                return this;
            }

            public Builder setAvailableCommands(Player.Commands commands) {
                this.availableCommands = commands;
                return this;
            }

            public Builder setContentBufferedPositionMs(PositionSupplier positionSupplier) {
                this.contentBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setContentPositionMs(long j7) {
                this.contentPositionMs = Long.valueOf(j7);
                return this;
            }

            public Builder setCurrentAd(int i2, int i7) {
                P3.v.checkArgument((i2 == -1) == (i7 == -1));
                this.currentAdGroupIndex = i2;
                this.currentAdIndexInAdGroup = i7;
                return this;
            }

            public Builder setCurrentCues(CueGroup cueGroup) {
                this.currentCues = cueGroup;
                return this;
            }

            public Builder setCurrentMediaItemIndex(int i2) {
                this.currentMediaItemIndex = i2;
                return this;
            }

            public Builder setDeviceInfo(DeviceInfo deviceInfo) {
                this.deviceInfo = deviceInfo;
                return this;
            }

            public Builder setDeviceVolume(int i2) {
                P3.v.checkArgument(i2 >= 0);
                this.deviceVolume = i2;
                return this;
            }

            public Builder setIsDeviceMuted(boolean z6) {
                this.isDeviceMuted = z6;
                return this;
            }

            public Builder setIsLoading(boolean z6) {
                this.isLoading = z6;
                return this;
            }

            public Builder setMaxSeekToPreviousPositionMs(long j7) {
                this.maxSeekToPreviousPositionMs = j7;
                return this;
            }

            public Builder setNewlyRenderedFirstFrame(boolean z6) {
                this.newlyRenderedFirstFrame = z6;
                return this;
            }

            public Builder setPlayWhenReady(boolean z6, int i2) {
                this.playWhenReady = z6;
                this.playWhenReadyChangeReason = i2;
                return this;
            }

            public Builder setPlaybackParameters(PlaybackParameters playbackParameters) {
                this.playbackParameters = playbackParameters;
                return this;
            }

            public Builder setPlaybackState(int i2) {
                this.playbackState = i2;
                return this;
            }

            public Builder setPlaybackSuppressionReason(int i2) {
                this.playbackSuppressionReason = i2;
                return this;
            }

            public Builder setPlayerError(PlaybackException playbackException) {
                this.playerError = playbackException;
                return this;
            }

            public Builder setPlaylist(List<MediaItemData> list) {
                HashSet hashSet = new HashSet();
                for (int i2 = 0; i2 < list.size(); i2++) {
                    P3.v.checkArgument(hashSet.add(list.get(i2).uid), "Duplicate MediaItemData UID in playlist");
                }
                this.playlist = ImmutableList.copyOf((Collection) list);
                this.timeline = new PlaylistTimeline(this.playlist);
                this.currentTracks = null;
                this.currentMetadata = null;
                return this;
            }

            public Builder setPlaylistMetadata(MediaMetadata mediaMetadata) {
                this.playlistMetadata = mediaMetadata;
                return this;
            }

            public Builder setPositionDiscontinuity(int i2, long j7) {
                this.hasPositionDiscontinuity = true;
                this.positionDiscontinuityReason = i2;
                this.discontinuityPositionMs = j7;
                return this;
            }

            public Builder setRepeatMode(int i2) {
                this.repeatMode = i2;
                return this;
            }

            public Builder setSeekBackIncrementMs(long j7) {
                this.seekBackIncrementMs = j7;
                return this;
            }

            public Builder setSeekForwardIncrementMs(long j7) {
                this.seekForwardIncrementMs = j7;
                return this;
            }

            public Builder setShuffleModeEnabled(boolean z6) {
                this.shuffleModeEnabled = z6;
                return this;
            }

            public Builder setSurfaceSize(Size size) {
                this.surfaceSize = size;
                return this;
            }

            public Builder setTimedMetadata(Metadata metadata) {
                this.timedMetadata = metadata;
                return this;
            }

            public Builder setTotalBufferedDurationMs(PositionSupplier positionSupplier) {
                this.totalBufferedDurationMsSupplier = positionSupplier;
                return this;
            }

            public Builder setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
                this.trackSelectionParameters = trackSelectionParameters;
                return this;
            }

            public Builder setUnmuteVolume(float f3) {
                P3.v.checkArgument(f3 >= 0.0f && f3 <= 1.0f);
                this.unmuteVolume = f3;
                return this;
            }

            public Builder setVideoSize(VideoSize videoSize) {
                this.videoSize = videoSize;
                return this;
            }

            public Builder setVolume(float f3) {
                P3.v.checkArgument(f3 >= 0.0f && f3 <= 1.0f);
                this.unmuteVolume = f3 != 0.0f ? f3 : this.volume;
                this.volume = f3;
                return this;
            }

            public Builder() {
                this.availableCommands = Player.Commands.EMPTY;
                this.playWhenReady = false;
                this.playWhenReadyChangeReason = 1;
                this.playbackState = 1;
                this.playbackSuppressionReason = 0;
                this.playerError = null;
                this.repeatMode = 0;
                this.shuffleModeEnabled = false;
                this.isLoading = false;
                this.seekBackIncrementMs = 5000L;
                this.seekForwardIncrementMs = 15000L;
                this.maxSeekToPreviousPositionMs = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
                this.playbackParameters = PlaybackParameters.DEFAULT;
                this.trackSelectionParameters = TrackSelectionParameters.DEFAULT;
                this.audioAttributes = AudioAttributes.DEFAULT;
                this.audioSessionId = 0;
                this.volume = 1.0f;
                this.unmuteVolume = 1.0f;
                this.videoSize = VideoSize.UNKNOWN;
                this.currentCues = CueGroup.EMPTY_TIME_ZERO;
                this.deviceInfo = DeviceInfo.UNKNOWN;
                this.deviceVolume = 0;
                this.isDeviceMuted = false;
                this.surfaceSize = Size.UNKNOWN;
                this.newlyRenderedFirstFrame = false;
                this.timedMetadata = new Metadata(C.TIME_UNSET, new Metadata.Entry[0]);
                this.playlist = ImmutableList.of();
                this.timeline = Timeline.EMPTY;
                this.currentTracks = null;
                this.currentMetadata = null;
                this.playlistMetadata = MediaMetadata.EMPTY;
                this.currentMediaItemIndex = -1;
                this.currentAdGroupIndex = -1;
                this.currentAdIndexInAdGroup = -1;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = y.a(C.TIME_UNSET);
                this.adPositionMs = null;
                PositionSupplier positionSupplier = PositionSupplier.ZERO;
                this.adPositionMsSupplier = positionSupplier;
                this.contentBufferedPositionMsSupplier = y.a(C.TIME_UNSET);
                this.adBufferedPositionMsSupplier = positionSupplier;
                this.totalBufferedDurationMsSupplier = positionSupplier;
                this.hasPositionDiscontinuity = false;
                this.positionDiscontinuityReason = 5;
                this.discontinuityPositionMs = 0L;
            }

            public Builder setAdPositionMs(PositionSupplier positionSupplier) {
                this.adPositionMs = null;
                this.adPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setContentPositionMs(PositionSupplier positionSupplier) {
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setPlaylist(Timeline timeline, Tracks tracks, MediaMetadata mediaMetadata) {
                this.playlist = null;
                this.timeline = timeline;
                this.currentTracks = tracks;
                this.currentMetadata = mediaMetadata;
                return this;
            }

            private Builder(State state) {
                this.availableCommands = state.availableCommands;
                this.playWhenReady = state.playWhenReady;
                this.playWhenReadyChangeReason = state.playWhenReadyChangeReason;
                this.playbackState = state.playbackState;
                this.playbackSuppressionReason = state.playbackSuppressionReason;
                this.playerError = state.playerError;
                this.repeatMode = state.repeatMode;
                this.shuffleModeEnabled = state.shuffleModeEnabled;
                this.isLoading = state.isLoading;
                this.seekBackIncrementMs = state.seekBackIncrementMs;
                this.seekForwardIncrementMs = state.seekForwardIncrementMs;
                this.maxSeekToPreviousPositionMs = state.maxSeekToPreviousPositionMs;
                this.playbackParameters = state.playbackParameters;
                this.trackSelectionParameters = state.trackSelectionParameters;
                this.audioAttributes = state.audioAttributes;
                this.audioSessionId = state.audioSessionId;
                this.volume = state.volume;
                this.unmuteVolume = state.unmuteVolume;
                this.videoSize = state.videoSize;
                this.currentCues = state.currentCues;
                this.deviceInfo = state.deviceInfo;
                this.deviceVolume = state.deviceVolume;
                this.isDeviceMuted = state.isDeviceMuted;
                this.surfaceSize = state.surfaceSize;
                this.newlyRenderedFirstFrame = state.newlyRenderedFirstFrame;
                this.timedMetadata = state.timedMetadata;
                Timeline timeline = state.timeline;
                this.timeline = timeline;
                if (timeline instanceof PlaylistTimeline) {
                    this.playlist = ((PlaylistTimeline) timeline).playlist;
                } else {
                    this.currentTracks = state.currentTracks;
                    this.currentMetadata = state.usesDerivedMediaMetadata ? null : state.currentMetadata;
                }
                this.playlistMetadata = state.playlistMetadata;
                this.currentMediaItemIndex = state.currentMediaItemIndex;
                this.currentAdGroupIndex = state.currentAdGroupIndex;
                this.currentAdIndexInAdGroup = state.currentAdIndexInAdGroup;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = state.contentPositionMsSupplier;
                this.adPositionMs = null;
                this.adPositionMsSupplier = state.adPositionMsSupplier;
                this.contentBufferedPositionMsSupplier = state.contentBufferedPositionMsSupplier;
                this.adBufferedPositionMsSupplier = state.adBufferedPositionMsSupplier;
                this.totalBufferedDurationMsSupplier = state.totalBufferedDurationMsSupplier;
                this.hasPositionDiscontinuity = state.hasPositionDiscontinuity;
                this.positionDiscontinuityReason = state.positionDiscontinuityReason;
                this.discontinuityPositionMs = state.discontinuityPositionMs;
            }
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof State)) {
                return false;
            }
            State state = (State) obj;
            return this.playWhenReady == state.playWhenReady && this.playWhenReadyChangeReason == state.playWhenReadyChangeReason && this.availableCommands.equals(state.availableCommands) && this.playbackState == state.playbackState && this.playbackSuppressionReason == state.playbackSuppressionReason && Objects.equals(this.playerError, state.playerError) && this.repeatMode == state.repeatMode && this.shuffleModeEnabled == state.shuffleModeEnabled && this.isLoading == state.isLoading && this.seekBackIncrementMs == state.seekBackIncrementMs && this.seekForwardIncrementMs == state.seekForwardIncrementMs && this.maxSeekToPreviousPositionMs == state.maxSeekToPreviousPositionMs && this.playbackParameters.equals(state.playbackParameters) && this.trackSelectionParameters.equals(state.trackSelectionParameters) && this.audioAttributes.equals(state.audioAttributes) && this.volume == state.volume && this.unmuteVolume == state.unmuteVolume && this.videoSize.equals(state.videoSize) && this.currentCues.equals(state.currentCues) && this.deviceInfo.equals(state.deviceInfo) && this.deviceVolume == state.deviceVolume && this.isDeviceMuted == state.isDeviceMuted && this.surfaceSize.equals(state.surfaceSize) && this.newlyRenderedFirstFrame == state.newlyRenderedFirstFrame && this.timedMetadata.equals(state.timedMetadata) && this.timeline.equals(state.timeline) && this.currentTracks.equals(state.currentTracks) && this.currentMetadata.equals(state.currentMetadata) && this.playlistMetadata.equals(state.playlistMetadata) && this.currentMediaItemIndex == state.currentMediaItemIndex && this.currentAdGroupIndex == state.currentAdGroupIndex && this.currentAdIndexInAdGroup == state.currentAdIndexInAdGroup && this.contentPositionMsSupplier.equals(state.contentPositionMsSupplier) && this.adPositionMsSupplier.equals(state.adPositionMsSupplier) && this.contentBufferedPositionMsSupplier.equals(state.contentBufferedPositionMsSupplier) && this.adBufferedPositionMsSupplier.equals(state.adBufferedPositionMsSupplier) && this.totalBufferedDurationMsSupplier.equals(state.totalBufferedDurationMsSupplier) && this.hasPositionDiscontinuity == state.hasPositionDiscontinuity && this.positionDiscontinuityReason == state.positionDiscontinuityReason && this.discontinuityPositionMs == state.discontinuityPositionMs;
        }

        public ImmutableList<MediaItemData> getPlaylist() {
            Timeline timeline = this.timeline;
            if (timeline instanceof PlaylistTimeline) {
                return ((PlaylistTimeline) timeline).playlist;
            }
            Timeline.Window window = new Timeline.Window();
            Timeline.Period period = new Timeline.Period();
            C0248s builderWithExpectedSize = ImmutableList.builderWithExpectedSize(this.timeline.getWindowCount());
            for (int i2 = 0; i2 < this.timeline.getWindowCount(); i2++) {
                builderWithExpectedSize.add((Object) MediaItemData.buildFromState(this, i2, period, window));
            }
            return builderWithExpectedSize.build();
        }

        public int hashCode() {
            int hashCode = (((((((((this.availableCommands.hashCode() + 217) * 31) + (this.playWhenReady ? 1 : 0)) * 31) + this.playWhenReadyChangeReason) * 31) + this.playbackState) * 31) + this.playbackSuppressionReason) * 31;
            PlaybackException playbackException = this.playerError;
            int hashCode2 = (((((((hashCode + (playbackException == null ? 0 : playbackException.hashCode())) * 31) + this.repeatMode) * 31) + (this.shuffleModeEnabled ? 1 : 0)) * 31) + (this.isLoading ? 1 : 0)) * 31;
            long j7 = this.seekBackIncrementMs;
            int i2 = (hashCode2 + ((int) (j7 ^ (j7 >>> 32)))) * 31;
            long j8 = this.seekForwardIncrementMs;
            int i7 = (i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
            long j9 = this.maxSeekToPreviousPositionMs;
            int hashCode3 = (((((this.totalBufferedDurationMsSupplier.hashCode() + ((this.adBufferedPositionMsSupplier.hashCode() + ((this.contentBufferedPositionMsSupplier.hashCode() + ((this.adPositionMsSupplier.hashCode() + ((this.contentPositionMsSupplier.hashCode() + ((((((((this.playlistMetadata.hashCode() + ((this.currentMetadata.hashCode() + ((this.currentTracks.hashCode() + ((this.timeline.hashCode() + ((this.timedMetadata.hashCode() + ((((this.surfaceSize.hashCode() + ((((((this.deviceInfo.hashCode() + ((this.currentCues.hashCode() + ((this.videoSize.hashCode() + ((Float.floatToRawIntBits(this.unmuteVolume) + ((Float.floatToRawIntBits(this.volume) + ((this.audioAttributes.hashCode() + ((this.trackSelectionParameters.hashCode() + ((this.playbackParameters.hashCode() + ((i7 + ((int) (j9 ^ (j9 >>> 32)))) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + this.deviceVolume) * 31) + (this.isDeviceMuted ? 1 : 0)) * 31)) * 31) + (this.newlyRenderedFirstFrame ? 1 : 0)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + this.currentMediaItemIndex) * 31) + this.currentAdGroupIndex) * 31) + this.currentAdIndexInAdGroup) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.hasPositionDiscontinuity ? 1 : 0)) * 31) + this.positionDiscontinuityReason) * 31;
            long j10 = this.discontinuityPositionMs;
            return hashCode3 + ((int) ((j10 >>> 32) ^ j10));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:21:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x018a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private State(androidx.media3.common.SimpleBasePlayer.State.Builder r18) {
            /*
                Method dump skipped, instructions count: 684
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.SimpleBasePlayer.State.<init>(androidx.media3.common.SimpleBasePlayer$State$Builder):void");
        }
    }

    public SimpleBasePlayer(Looper looper) {
        this(looper, Clock.DEFAULT);
    }

    private static List<MediaItemData> buildMutablePlaylistFromState(State state, Timeline.Period period, Timeline.Window window) {
        if (state.timeline instanceof PlaylistTimeline) {
            return new ArrayList(((PlaylistTimeline) state.timeline).playlist);
        }
        ArrayList arrayList = new ArrayList(state.timeline.getWindowCount());
        for (int i2 = 0; i2 < state.timeline.getWindowCount(); i2++) {
            arrayList.add(MediaItemData.buildFromState(state, i2, period, window));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static State buildStateForNewPosition(State.Builder builder, State state, long j7, Timeline timeline, int i2, long j8, boolean z6, Timeline.Window window) {
        long j9;
        int i7 = i2;
        long positionOrDefaultInMediaItem = getPositionOrDefaultInMediaItem(j7, state, window);
        boolean z7 = false;
        if (timeline.isEmpty() || (i7 != -1 && i7 < timeline.getWindowCount())) {
            j9 = j8;
        } else {
            j9 = -9223372036854775807L;
            i7 = 0;
        }
        if (!timeline.isEmpty() && j9 == C.TIME_UNSET) {
            j9 = timeline.getWindow(i7, window).getDefaultPositionMs();
        }
        boolean z8 = state.timeline.isEmpty() || timeline.isEmpty();
        boolean z9 = (z8 || state.timeline.getWindow(getCurrentMediaItemIndexInternal(state), window).uid.equals(timeline.getWindow(i7, window).uid)) ? false : true;
        if (timeline.isEmpty()) {
            builder.setPlaylist(timeline, Tracks.EMPTY, null);
        } else if (timeline instanceof PlaylistTimeline) {
            MediaItemData mediaItemData = (MediaItemData) ((PlaylistTimeline) timeline).playlist.get(i7);
            builder.setPlaylist(timeline, mediaItemData.tracks, mediaItemData.mediaMetadata);
        } else {
            if (!z8 && !z9) {
                z7 = true;
            }
            builder.setPlaylist(timeline, z7 ? state.currentTracks : Tracks.EMPTY, z7 ? state.currentMetadata : null);
        }
        if (z8 || z9 || j9 < positionOrDefaultInMediaItem) {
            builder.setCurrentMediaItemIndex(i7).setCurrentAd(-1, -1).setContentPositionMs(j9).setContentBufferedPositionMs(y.a(j9)).setTotalBufferedDurationMs(PositionSupplier.ZERO);
        } else if (j9 == positionOrDefaultInMediaItem) {
            builder.setCurrentMediaItemIndex(i7);
            if (state.currentAdGroupIndex == -1 || !z6) {
                builder.setCurrentAd(-1, -1).setTotalBufferedDurationMs(y.a(getContentBufferedPositionMsInternal(state, window) - positionOrDefaultInMediaItem));
            } else {
                builder.setTotalBufferedDurationMs(y.a(state.adBufferedPositionMsSupplier.get() - state.adPositionMsSupplier.get()));
            }
        } else {
            builder.setCurrentMediaItemIndex(i7).setCurrentAd(-1, -1).setContentPositionMs(j9).setContentBufferedPositionMs(y.a(Math.max(getContentBufferedPositionMsInternal(state, window), j9))).setTotalBufferedDurationMs(y.a(Math.max(0L, state.totalBufferedDurationMsSupplier.get() - (j9 - positionOrDefaultInMediaItem))));
        }
        return builder.build();
    }

    private void clearVideoOutput(Object obj) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            updateStateForPendingOperation(handleClearVideoOutput(obj), new i(state, 6));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaMetadata getCombinedMediaMetadata(MediaItem mediaItem, Tracks tracks) {
        MediaMetadata.Builder builder = new MediaMetadata.Builder();
        int size = tracks.getGroups().size();
        for (int i2 = 0; i2 < size; i2++) {
            Tracks.Group group = tracks.getGroups().get(i2);
            for (int i7 = 0; i7 < group.length; i7++) {
                if (group.isTrackSelected(i7)) {
                    Format trackFormat = group.getTrackFormat(i7);
                    if (trackFormat.metadata != null) {
                        for (int i8 = 0; i8 < trackFormat.metadata.length(); i8++) {
                            trackFormat.metadata.get(i8).populateMediaMetadata(builder);
                        }
                    }
                }
            }
        }
        return builder.populate(mediaItem.mediaMetadata).build();
    }

    private static long getContentBufferedPositionMsInternal(State state, Timeline.Window window) {
        return getPositionOrDefaultInMediaItem(state.contentBufferedPositionMsSupplier.get(), state, window);
    }

    private static long getContentPositionMsInternal(State state, Timeline.Window window) {
        return getPositionOrDefaultInMediaItem(state.contentPositionMsSupplier.get(), state, window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getCurrentMediaItemIndexInternal(State state) {
        int i2 = state.currentMediaItemIndex;
        if (i2 != -1) {
            return i2;
        }
        return 0;
    }

    private static int getCurrentPeriodIndexInternal(State state, Timeline.Window window, Timeline.Period period) {
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        return state.timeline.isEmpty() ? currentMediaItemIndexInternal : getPeriodIndexFromWindowPosition(state.timeline, currentMediaItemIndexInternal, getContentPositionMsInternal(state, window), window, period);
    }

    private static long getCurrentPeriodOrAdPositionMs(State state, Object obj, Timeline.Period period, Timeline.Window window) {
        return state.currentAdGroupIndex != -1 ? state.adPositionMsSupplier.get() : getContentPositionMsInternal(state, window) - state.timeline.getPeriodByUid(obj, period).getPositionInWindowMs();
    }

    private static int getMediaItemIndexInNewPlaylist(Timeline timeline, Timeline timeline2, int i2, Timeline.Period period, Timeline.Window window) {
        if (timeline.isEmpty()) {
            if (i2 < timeline2.getWindowCount()) {
                return i2;
            }
            return -1;
        }
        Object checkNotNull = P3.v.checkNotNull(timeline.getPeriod(timeline.getWindow(i2, window).firstPeriodIndex, period, true).uid);
        if (timeline2.getIndexOfPeriod(checkNotNull) == -1) {
            return -1;
        }
        return timeline2.getPeriodByUid(checkNotNull, period).windowIndex;
    }

    private static int getMediaItemTransitionReason(State state, State state2, int i2, boolean z6, Timeline.Window window) {
        Timeline timeline = state.timeline;
        Timeline timeline2 = state2.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return -1;
        }
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return 3;
        }
        Object obj = state.timeline.getWindow(getCurrentMediaItemIndexInternal(state), window).uid;
        Object obj2 = state2.timeline.getWindow(getCurrentMediaItemIndexInternal(state2), window).uid;
        if ((obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (!obj.equals(obj2)) {
            if (i2 == 0) {
                return 1;
            }
            return i2 == 1 ? 2 : 3;
        }
        if (i2 != 0 || getContentPositionMsInternal(state, window) <= getContentPositionMsInternal(state2, window)) {
            return (i2 == 1 && z6) ? 2 : -1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPeriodIndexFromWindowPosition(Timeline timeline, int i2, long j7, Timeline.Window window, Timeline.Period period) {
        return timeline.getIndexOfPeriod(timeline.getPeriodPositionUs(window, period, i2, Util.msToUs(j7)).first);
    }

    private static long getPeriodOrAdDurationMs(State state, Object obj, Timeline.Period period) {
        state.timeline.getPeriodByUid(obj, period);
        int i2 = state.currentAdGroupIndex;
        return Util.usToMs(i2 == -1 ? period.durationUs : period.getAdDurationUs(i2, state.currentAdIndexInAdGroup));
    }

    private static int getPositionDiscontinuityReason(State state, State state2, boolean z6, Timeline.Window window, Timeline.Period period) {
        if (state2.hasPositionDiscontinuity) {
            return state2.positionDiscontinuityReason;
        }
        if (z6) {
            return 1;
        }
        if (state.timeline.isEmpty()) {
            return -1;
        }
        if (state2.timeline.isEmpty()) {
            return 4;
        }
        Object uidOfPeriod = state.timeline.getUidOfPeriod(getCurrentPeriodIndexInternal(state, window, period));
        Object uidOfPeriod2 = state2.timeline.getUidOfPeriod(getCurrentPeriodIndexInternal(state2, window, period));
        if ((uidOfPeriod instanceof PlaceholderUid) && !(uidOfPeriod2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (uidOfPeriod2.equals(uidOfPeriod) && state.currentAdGroupIndex == state2.currentAdGroupIndex && state.currentAdIndexInAdGroup == state2.currentAdIndexInAdGroup) {
            long currentPeriodOrAdPositionMs = getCurrentPeriodOrAdPositionMs(state, uidOfPeriod, period, window);
            if (Math.abs(currentPeriodOrAdPositionMs - getCurrentPeriodOrAdPositionMs(state2, uidOfPeriod2, period, window)) < 1000) {
                return -1;
            }
            long periodOrAdDurationMs = getPeriodOrAdDurationMs(state, uidOfPeriod, period);
            return (periodOrAdDurationMs == C.TIME_UNSET || currentPeriodOrAdPositionMs < periodOrAdDurationMs) ? 5 : 0;
        }
        if (state2.timeline.getIndexOfPeriod(uidOfPeriod) == -1) {
            return 4;
        }
        long currentPeriodOrAdPositionMs2 = getCurrentPeriodOrAdPositionMs(state, uidOfPeriod, period, window);
        long periodOrAdDurationMs2 = getPeriodOrAdDurationMs(state, uidOfPeriod, period);
        return (periodOrAdDurationMs2 == C.TIME_UNSET || currentPeriodOrAdPositionMs2 < periodOrAdDurationMs2) ? 3 : 0;
    }

    private static Player.PositionInfo getPositionInfo(State state, boolean z6, Timeline.Window window, Timeline.Period period) {
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        long contentPositionMsInternal;
        long j7;
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        int currentPeriodIndexInternal = getCurrentPeriodIndexInternal(state, window, period);
        if (state.timeline.isEmpty()) {
            obj = null;
            mediaItem = null;
            obj2 = null;
        } else {
            Object obj3 = state.timeline.getPeriod(currentPeriodIndexInternal, period, true).uid;
            Object obj4 = state.timeline.getWindow(currentMediaItemIndexInternal, window).uid;
            obj2 = obj3;
            mediaItem = window.mediaItem;
            obj = obj4;
        }
        if (z6) {
            j7 = state.discontinuityPositionMs;
            contentPositionMsInternal = state.currentAdGroupIndex == -1 ? j7 : getContentPositionMsInternal(state, window);
        } else {
            contentPositionMsInternal = getContentPositionMsInternal(state, window);
            j7 = state.currentAdGroupIndex != -1 ? state.adPositionMsSupplier.get() : contentPositionMsInternal;
        }
        return new Player.PositionInfo(obj, currentMediaItemIndexInternal, mediaItem, obj2, currentPeriodIndexInternal, j7, contentPositionMsInternal, state.currentAdGroupIndex, state.currentAdIndexInAdGroup);
    }

    private static long getPositionOrDefaultInMediaItem(long j7, State state, Timeline.Window window) {
        if (j7 != C.TIME_UNSET) {
            return j7;
        }
        if (state.timeline.isEmpty()) {
            return 0L;
        }
        return state.timeline.getWindow(getCurrentMediaItemIndexInternal(state), window).getDefaultPositionMs();
    }

    private static State getStateWithNewPlaylist(State state, List<MediaItemData> list, Timeline.Period period, Timeline.Window window) {
        State.Builder buildUpon = state.buildUpon();
        PlaylistTimeline playlistTimeline = new PlaylistTimeline(list);
        Timeline timeline = state.timeline;
        long j7 = state.contentPositionMsSupplier.get();
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        int mediaItemIndexInNewPlaylist = getMediaItemIndexInNewPlaylist(timeline, playlistTimeline, currentMediaItemIndexInternal, period, window);
        long j8 = mediaItemIndexInNewPlaylist == -1 ? C.TIME_UNSET : j7;
        for (int i2 = currentMediaItemIndexInternal + 1; mediaItemIndexInNewPlaylist == -1 && i2 < timeline.getWindowCount(); i2++) {
            mediaItemIndexInNewPlaylist = getMediaItemIndexInNewPlaylist(timeline, playlistTimeline, i2, period, window);
        }
        if (state.playbackState != 1 && mediaItemIndexInNewPlaylist == -1) {
            buildUpon.setPlaybackState(4).setIsLoading(false);
        }
        return buildStateForNewPosition(buildUpon, state, j7, playlistTimeline, mediaItemIndexInNewPlaylist, j8, true, window);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v9, types: [androidx.media3.common.Timeline] */
    private static State getStateWithNewPlaylistAndPosition(State state, List<MediaItemData> list, int i2, long j7, Timeline.Window window) {
        State.Builder buildUpon = state.buildUpon();
        PlaylistTimeline playlistTimeline = list == null ? state.timeline : new PlaylistTimeline(list);
        if (state.playbackState != 1) {
            if (playlistTimeline.isEmpty() || (i2 != -1 && i2 >= playlistTimeline.getWindowCount())) {
                buildUpon.setPlaybackState(4).setIsLoading(false);
            } else {
                buildUpon.setPlaybackState(2);
            }
        }
        return buildStateForNewPosition(buildUpon, state, state.contentPositionMsSupplier.get(), playlistTimeline, i2, j7, false, window);
    }

    private static Size getSurfaceHolderSize(SurfaceHolder surfaceHolder) {
        if (!surfaceHolder.getSurface().isValid()) {
            return Size.ZERO;
        }
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        return new Size(surfaceFrame.width(), surfaceFrame.height());
    }

    private static int getTimelineChangeReason(Timeline timeline, Timeline timeline2, Timeline.Window window) {
        if (timeline.getWindowCount() != timeline2.getWindowCount()) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= timeline.getWindowCount()) {
                return 1;
            }
            Object obj = timeline.getWindow(i2, window).uid;
            Object obj2 = timeline2.getWindow(i2, window).uid;
            boolean z6 = (obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid);
            if (!obj.equals(obj2) && !z6) {
                return 0;
            }
            i2++;
        }
    }

    private static boolean isPlaying(State state) {
        return state.playWhenReady && state.playbackState == 3 && state.playbackSuppressionReason == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$addMediaItems$3(State state, List list, int i2) {
        List<MediaItemData> buildMutablePlaylistFromState = buildMutablePlaylistFromState(state, this.period, this.window);
        for (int i7 = 0; i7 < list.size(); i7++) {
            buildMutablePlaylistFromState.add(i7 + i2, getPlaceholderMediaItemData((MediaItem) list.get(i7)));
        }
        return !state.timeline.isEmpty() ? getStateWithNewPlaylist(state, buildMutablePlaylistFromState, this.period, this.window) : getStateWithNewPlaylistAndPosition(state, buildMutablePlaylistFromState, state.currentMediaItemIndex, state.contentPositionMsSupplier.get(), this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$clearVideoOutput$23(State state) {
        return state.buildUpon().setSurfaceSize(Size.ZERO).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$decreaseDeviceVolume$28(State state) {
        return state.buildUpon().setDeviceVolume(Math.max(0, state.deviceVolume - 1)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$decreaseDeviceVolume$29(State state) {
        return state.buildUpon().setDeviceVolume(Math.max(0, state.deviceVolume - 1)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$increaseDeviceVolume$26(State state) {
        return state.buildUpon().setDeviceVolume(state.deviceVolume + 1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$increaseDeviceVolume$27(State state) {
        return state.buildUpon().setDeviceVolume(state.deviceVolume + 1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$moveMediaItems$4(State state, int i2, int i7, int i8) {
        List<MediaItemData> buildMutablePlaylistFromState = buildMutablePlaylistFromState(state, this.period, this.window);
        Util.moveItems(buildMutablePlaylistFromState, i2, i7, i8);
        return getStateWithNewPlaylist(state, buildMutablePlaylistFromState, this.period, this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$mute$17(State state) {
        return state.buildUpon().setVolume(0.0f).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this, new Player.Events(flagSet));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$prepare$7(State state) {
        return state.buildUpon().setPlayerError(null).setPlaybackState(state.timeline.isEmpty() ? 4 : 2).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$release$13(State state) {
        return state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$removeMediaItems$6(State state, int i2, int i7) {
        List<MediaItemData> buildMutablePlaylistFromState = buildMutablePlaylistFromState(state, this.period, this.window);
        Util.removeRange(buildMutablePlaylistFromState, i2, i7);
        return getStateWithNewPlaylist(state, buildMutablePlaylistFromState, this.period, this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$replaceMediaItems$5(State state, List list, int i2, int i7) {
        List<MediaItemData> buildMutablePlaylistFromState = buildMutablePlaylistFromState(state, this.period, this.window);
        for (int i8 = 0; i8 < list.size(); i8++) {
            buildMutablePlaylistFromState.add(i8 + i2, getPlaceholderMediaItemData((MediaItem) list.get(i8)));
        }
        State stateWithNewPlaylist = !state.timeline.isEmpty() ? getStateWithNewPlaylist(state, buildMutablePlaylistFromState, this.period, this.window) : getStateWithNewPlaylistAndPosition(state, buildMutablePlaylistFromState, state.currentMediaItemIndex, state.contentPositionMsSupplier.get(), this.window);
        if (i7 >= i2) {
            return stateWithNewPlaylist;
        }
        Util.removeRange(buildMutablePlaylistFromState, i7, i2);
        return getStateWithNewPlaylist(stateWithNewPlaylist, buildMutablePlaylistFromState, this.period, this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$seekTo$10(boolean z6, State state, int i2, long j7) {
        return z6 ? state : getStateWithNewPlaylistAndPosition(state, null, i2, j7, this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setAudioAttributes$32(State state, AudioAttributes audioAttributes) {
        return state.buildUpon().setAudioAttributes(audioAttributes).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceMuted$30(State state, boolean z6) {
        return state.buildUpon().setIsDeviceMuted(z6).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceMuted$31(State state, boolean z6) {
        return state.buildUpon().setIsDeviceMuted(z6).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceVolume$24(State state, int i2) {
        return state.buildUpon().setDeviceVolume(i2).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceVolume$25(State state, int i2) {
        return state.buildUpon().setDeviceVolume(i2).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$setMediaItemsInternal$2(List list, State state, int i2, long j7) {
        ArrayList arrayList = new ArrayList();
        for (int i7 = 0; i7 < list.size(); i7++) {
            arrayList.add(getPlaceholderMediaItemData((MediaItem) list.get(i7)));
        }
        return getStateWithNewPlaylistAndPosition(state, arrayList, i2, j7, this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setPlayWhenReady$1(State state, boolean z6) {
        return state.buildUpon().setPlayWhenReady(z6, 1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setPlaybackParameters$11(State state, PlaybackParameters playbackParameters) {
        return state.buildUpon().setPlaybackParameters(playbackParameters).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setPlaylistMetadata$15(State state, MediaMetadata mediaMetadata) {
        return state.buildUpon().setPlaylistMetadata(mediaMetadata).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setRepeatMode$8(State state, int i2) {
        return state.buildUpon().setRepeatMode(i2).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setShuffleModeEnabled$9(State state, boolean z6) {
        return state.buildUpon().setShuffleModeEnabled(z6).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setTrackSelectionParameters$14(State state, TrackSelectionParameters trackSelectionParameters) {
        return state.buildUpon().setTrackSelectionParameters(trackSelectionParameters).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoSurface$19(State state) {
        return state.buildUpon().setSurfaceSize(Size.UNKNOWN).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoSurfaceHolder$20(State state, SurfaceHolder surfaceHolder) {
        return state.buildUpon().setSurfaceSize(getSurfaceHolderSize(surfaceHolder)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoSurfaceView$21(State state, SurfaceView surfaceView) {
        return state.buildUpon().setSurfaceSize(getSurfaceHolderSize(surfaceView.getHolder())).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoTextureView$22(State state, Size size) {
        return state.buildUpon().setSurfaceSize(size).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVolume$16(State state, float f3) {
        return state.buildUpon().setVolume(f3).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$stop$12(State state) {
        return state.buildUpon().setPlaybackState(1).setTotalBufferedDurationMs(PositionSupplier.ZERO).setContentBufferedPositionMs(y.a(getContentPositionMsInternal(state, this.window))).setAdBufferedPositionMs(state.adPositionMsSupplier).setIsLoading(false).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$unmute$18(State state) {
        return state.buildUpon().setVolume(state.unmuteVolume).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$34(State state, int i2, Player.Listener listener) {
        listener.onTimelineChanged(state.timeline, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$35(int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i2);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$37(State state, Player.Listener listener) {
        listener.onPlayerErrorChanged(state.playerError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$38(State state, Player.Listener listener) {
        listener.onPlayerError((PlaybackException) Util.castNonNull(state.playerError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$39(State state, Player.Listener listener) {
        listener.onTrackSelectionParametersChanged(state.trackSelectionParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$40(State state, Player.Listener listener) {
        listener.onTracksChanged(state.currentTracks);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$41(State state, Player.Listener listener) {
        listener.onMediaMetadataChanged(state.currentMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$42(State state, Player.Listener listener) {
        listener.onLoadingChanged(state.isLoading);
        listener.onIsLoadingChanged(state.isLoading);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$43(State state, Player.Listener listener) {
        listener.onPlayerStateChanged(state.playWhenReady, state.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$44(State state, Player.Listener listener) {
        listener.onPlaybackStateChanged(state.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$45(State state, Player.Listener listener) {
        listener.onPlayWhenReadyChanged(state.playWhenReady, state.playWhenReadyChangeReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$46(State state, Player.Listener listener) {
        listener.onPlaybackSuppressionReasonChanged(state.playbackSuppressionReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$47(State state, Player.Listener listener) {
        listener.onIsPlayingChanged(isPlaying(state));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$48(State state, Player.Listener listener) {
        listener.onPlaybackParametersChanged(state.playbackParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$49(State state, Player.Listener listener) {
        listener.onRepeatModeChanged(state.repeatMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$50(State state, Player.Listener listener) {
        listener.onShuffleModeEnabledChanged(state.shuffleModeEnabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$51(State state, Player.Listener listener) {
        listener.onSeekBackIncrementChanged(state.seekBackIncrementMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$52(State state, Player.Listener listener) {
        listener.onSeekForwardIncrementChanged(state.seekForwardIncrementMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$53(State state, Player.Listener listener) {
        listener.onMaxSeekToPreviousPositionChanged(state.maxSeekToPreviousPositionMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$54(State state, Player.Listener listener) {
        listener.onAudioAttributesChanged(state.audioAttributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$55(State state, Player.Listener listener) {
        listener.onVideoSizeChanged(state.videoSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$56(State state, Player.Listener listener) {
        listener.onDeviceInfoChanged(state.deviceInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$57(State state, Player.Listener listener) {
        listener.onPlaylistMetadataChanged(state.playlistMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$58(State state, Player.Listener listener) {
        listener.onSurfaceSizeChanged(state.surfaceSize.getWidth(), state.surfaceSize.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$59(State state, Player.Listener listener) {
        listener.onVolumeChanged(state.volume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$60(State state, Player.Listener listener) {
        listener.onDeviceVolumeChanged(state.deviceVolume, state.isDeviceMuted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$61(State state, Player.Listener listener) {
        listener.onCues(state.currentCues.cues);
        listener.onCues(state.currentCues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$62(State state, Player.Listener listener) {
        listener.onMetadata(state.timedMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$63(State state, Player.Listener listener) {
        listener.onAvailableCommandsChanged(state.availableCommands);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStateForPendingOperation$64(F f3) {
        Util.castNonNull(this.state);
        this.pendingOperations.remove(f3);
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        updateStateAndInformListeners(getState(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOrRunOnApplicationHandler(Runnable runnable) {
        if (this.applicationHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.applicationHandler.post(runnable);
        }
    }

    private void setMediaItemsInternal(final List<MediaItem> list, final int i2, final long j7) {
        P3.v.checkArgument(i2 == -1 || i2 >= 0);
        final State state = this.state;
        if (shouldHandleCommand(20) || (list.size() == 1 && shouldHandleCommand(31))) {
            updateStateForPendingOperation(handleSetMediaItems(list, i2, j7), new P3.C() { // from class: androidx.media3.common.n
                @Override // P3.C
                public final Object get() {
                    SimpleBasePlayer.State lambda$setMediaItemsInternal$2;
                    lambda$setMediaItemsInternal$2 = SimpleBasePlayer.this.lambda$setMediaItemsInternal$2(list, state, i2, j7);
                    return lambda$setMediaItemsInternal$2;
                }
            });
        }
    }

    private boolean shouldHandleCommand(int i2) {
        return !this.released && this.state.availableCommands.contains(i2);
    }

    private void updateStateAndInformListeners(final State state, boolean z6, boolean z7) {
        State state2 = this.state;
        this.state = state;
        if (state.hasPositionDiscontinuity || state.newlyRenderedFirstFrame) {
            this.state = state.buildUpon().clearPositionDiscontinuity().setNewlyRenderedFirstFrame(false).build();
        }
        boolean z8 = state2.playWhenReady != state.playWhenReady;
        boolean z9 = state2.playbackState != state.playbackState;
        int positionDiscontinuityReason = getPositionDiscontinuityReason(state2, state, z6, this.window, this.period);
        boolean equals = state2.timeline.equals(state.timeline);
        int mediaItemTransitionReason = getMediaItemTransitionReason(state2, state, positionDiscontinuityReason, z7, this.window);
        if (!equals) {
            this.listeners.queueEvent(0, new H3.c(state, getTimelineChangeReason(state2.timeline, state.timeline, this.window), 2));
        }
        if (positionDiscontinuityReason != -1) {
            this.listeners.queueEvent(11, new Z2.j(getPositionInfo(state2, false, this.window, this.period), getPositionInfo(state, state.hasPositionDiscontinuity, this.window, this.period), positionDiscontinuityReason));
        }
        if (mediaItemTransitionReason != -1) {
            this.listeners.queueEvent(1, new H3.c(state.timeline.isEmpty() ? null : state.timeline.getWindow(getCurrentMediaItemIndexInternal(state), this.window).mediaItem, mediaItemTransitionReason, 1));
        }
        if (!Objects.equals(state2.playerError, state.playerError)) {
            final int i2 = 15;
            this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i2) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
            if (state.playerError != null) {
                final int i7 = 16;
                this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: androidx.media3.common.j
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        switch (i7) {
                            case 0:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                                break;
                            case 1:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                                break;
                            case 2:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                                break;
                            case 3:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                                break;
                            case 4:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                                break;
                            case 5:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                                break;
                            case 6:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                                break;
                            case 7:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                                break;
                            case 8:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                                break;
                            case 9:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                                break;
                            case 10:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                                break;
                            case 11:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                                break;
                            case 12:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                                break;
                            case 13:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                                break;
                            case 14:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                                break;
                            case 15:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                                break;
                            case 16:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                                break;
                            case 17:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                                break;
                            case 18:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                                break;
                            case 19:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                                break;
                            case 20:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                                break;
                            case 21:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                                break;
                            case 22:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                                break;
                            case 23:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                                break;
                            case 24:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                                break;
                            case 25:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                                break;
                            default:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                                break;
                        }
                    }
                });
            }
        }
        if (!state2.trackSelectionParameters.equals(state.trackSelectionParameters)) {
            final int i8 = 17;
            this.listeners.queueEvent(19, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i8) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.currentTracks.equals(state.currentTracks)) {
            final int i9 = 18;
            this.listeners.queueEvent(2, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i9) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.currentMetadata.equals(state.currentMetadata)) {
            final int i10 = 19;
            this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i10) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.isLoading != state.isLoading) {
            final int i11 = 20;
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i11) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (z8 || z9) {
            final int i12 = 21;
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i12) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (z9) {
            final int i13 = 22;
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i13) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (z8 || state2.playWhenReadyChangeReason != state.playWhenReadyChangeReason) {
            final int i14 = 23;
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i14) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.playbackSuppressionReason != state.playbackSuppressionReason) {
            final int i15 = 24;
            this.listeners.queueEvent(6, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i15) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (isPlaying(state2) != isPlaying(state)) {
            final int i16 = 25;
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i16) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.playbackParameters.equals(state.playbackParameters)) {
            final int i17 = 26;
            this.listeners.queueEvent(12, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i17) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.repeatMode != state.repeatMode) {
            final int i18 = 0;
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i18) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.shuffleModeEnabled != state.shuffleModeEnabled) {
            final int i19 = 1;
            this.listeners.queueEvent(9, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i19) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.seekBackIncrementMs != state.seekBackIncrementMs) {
            final int i20 = 2;
            this.listeners.queueEvent(16, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i20) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.seekForwardIncrementMs != state.seekForwardIncrementMs) {
            final int i21 = 3;
            this.listeners.queueEvent(17, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i21) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.maxSeekToPreviousPositionMs != state.maxSeekToPreviousPositionMs) {
            final int i22 = 4;
            this.listeners.queueEvent(18, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i22) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.audioAttributes.equals(state.audioAttributes)) {
            final int i23 = 5;
            this.listeners.queueEvent(20, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i23) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.videoSize.equals(state.videoSize)) {
            final int i24 = 6;
            this.listeners.queueEvent(25, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i24) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.deviceInfo.equals(state.deviceInfo)) {
            final int i25 = 7;
            this.listeners.queueEvent(29, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i25) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.playlistMetadata.equals(state.playlistMetadata)) {
            final int i26 = 8;
            this.listeners.queueEvent(15, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i26) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state.newlyRenderedFirstFrame) {
            this.listeners.queueEvent(26, new J0.g(19));
        }
        if (!state2.surfaceSize.equals(state.surfaceSize)) {
            final int i27 = 9;
            this.listeners.queueEvent(24, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i27) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.volume != state.volume) {
            final int i28 = 10;
            this.listeners.queueEvent(22, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i28) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (state2.deviceVolume != state.deviceVolume || state2.isDeviceMuted != state.isDeviceMuted) {
            final int i29 = 11;
            this.listeners.queueEvent(30, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i29) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.currentCues.equals(state.currentCues)) {
            final int i30 = 12;
            this.listeners.queueEvent(27, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i30) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.timedMetadata.equals(state.timedMetadata) && state.timedMetadata.presentationTimeUs != C.TIME_UNSET) {
            final int i31 = 13;
            this.listeners.queueEvent(28, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i31) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        if (!state2.availableCommands.equals(state.availableCommands)) {
            final int i32 = 14;
            this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: androidx.media3.common.j
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    switch (i32) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state, (Player.Listener) obj);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state, (Player.Listener) obj);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state, (Player.Listener) obj);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state, (Player.Listener) obj);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state, (Player.Listener) obj);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state, (Player.Listener) obj);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state, (Player.Listener) obj);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state, (Player.Listener) obj);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state, (Player.Listener) obj);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state, (Player.Listener) obj);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state, (Player.Listener) obj);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state, (Player.Listener) obj);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$61(state, (Player.Listener) obj);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$62(state, (Player.Listener) obj);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$63(state, (Player.Listener) obj);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$37(state, (Player.Listener) obj);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$38(state, (Player.Listener) obj);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state, (Player.Listener) obj);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state, (Player.Listener) obj);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state, (Player.Listener) obj);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state, (Player.Listener) obj);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state, (Player.Listener) obj);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state, (Player.Listener) obj);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state, (Player.Listener) obj);
                            break;
                        case 24:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state, (Player.Listener) obj);
                            break;
                        case 25:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state, (Player.Listener) obj);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state, (Player.Listener) obj);
                            break;
                    }
                }
            });
        }
        this.listeners.flushEvents();
    }

    private void updateStateForPendingOperation(F f3, P3.C c7) {
        updateStateForPendingOperation(f3, c7, false, false);
    }

    private void verifyApplicationThreadAndInitState() {
        verifyApplicationThread();
        if (this.state == null) {
            this.state = getState();
        }
    }

    @Override // androidx.media3.common.Player
    public final void addListener(Player.Listener listener) {
        this.listeners.add((Player.Listener) P3.v.checkNotNull(listener));
    }

    @Override // androidx.media3.common.Player
    public final void addMediaItems(int i2, List<MediaItem> list) {
        verifyApplicationThreadAndInitState();
        P3.v.checkArgument(i2 >= 0);
        State state = this.state;
        int windowCount = state.timeline.getWindowCount();
        if (!shouldHandleCommand(20) || list.isEmpty()) {
            return;
        }
        int min = Math.min(i2, windowCount);
        updateStateForPendingOperation(handleAddMediaItems(min, list), new q(this, state, list, min));
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoSurface() {
        clearVideoOutput(null);
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        clearVideoOutput(surfaceHolder);
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoSurfaceView(SurfaceView surfaceView) {
        clearVideoOutput(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoTextureView(TextureView textureView) {
        clearVideoOutput(textureView);
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public final void decreaseDeviceVolume() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleDecreaseDeviceVolume(1), new i(state, 4));
        }
    }

    @Override // androidx.media3.common.Player
    public final Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    @Override // androidx.media3.common.Player
    public final AudioAttributes getAudioAttributes() {
        verifyApplicationThreadAndInitState();
        return this.state.audioAttributes;
    }

    @Override // androidx.media3.common.BasePlayer, androidx.media3.common.Player
    public final int getAudioSessionId() {
        verifyApplicationThreadAndInitState();
        return this.state.audioSessionId;
    }

    @Override // androidx.media3.common.Player
    public final Player.Commands getAvailableCommands() {
        verifyApplicationThreadAndInitState();
        return this.state.availableCommands;
    }

    @Override // androidx.media3.common.Player
    public final long getBufferedPosition() {
        verifyApplicationThreadAndInitState();
        return isPlayingAd() ? Math.max(this.state.adBufferedPositionMsSupplier.get(), this.state.adPositionMsSupplier.get()) : getContentBufferedPosition();
    }

    @Override // androidx.media3.common.Player
    public final long getContentBufferedPosition() {
        verifyApplicationThreadAndInitState();
        return Math.max(getContentBufferedPositionMsInternal(this.state, this.window), getContentPositionMsInternal(this.state, this.window));
    }

    @Override // androidx.media3.common.Player
    public final long getContentPosition() {
        verifyApplicationThreadAndInitState();
        return getContentPositionMsInternal(this.state, this.window);
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentAdGroupIndex() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdGroupIndex;
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentAdIndexInAdGroup() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdIndexInAdGroup;
    }

    @Override // androidx.media3.common.Player
    public final CueGroup getCurrentCues() {
        verifyApplicationThreadAndInitState();
        return this.state.currentCues;
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentMediaItemIndex() {
        verifyApplicationThreadAndInitState();
        return getCurrentMediaItemIndexInternal(this.state);
    }

    @Override // androidx.media3.common.Player
    public final int getCurrentPeriodIndex() {
        verifyApplicationThreadAndInitState();
        return getCurrentPeriodIndexInternal(this.state, this.window, this.period);
    }

    @Override // androidx.media3.common.Player
    public final long getCurrentPosition() {
        verifyApplicationThreadAndInitState();
        return isPlayingAd() ? this.state.adPositionMsSupplier.get() : getContentPosition();
    }

    @Override // androidx.media3.common.Player
    public final Timeline getCurrentTimeline() {
        verifyApplicationThreadAndInitState();
        return this.state.timeline;
    }

    @Override // androidx.media3.common.Player
    public final Tracks getCurrentTracks() {
        verifyApplicationThreadAndInitState();
        return this.state.currentTracks;
    }

    @Override // androidx.media3.common.Player
    public final DeviceInfo getDeviceInfo() {
        verifyApplicationThreadAndInitState();
        return this.state.deviceInfo;
    }

    @Override // androidx.media3.common.Player
    public final int getDeviceVolume() {
        verifyApplicationThreadAndInitState();
        return this.state.deviceVolume;
    }

    @Override // androidx.media3.common.Player
    public final long getDuration() {
        verifyApplicationThreadAndInitState();
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        this.state.timeline.getPeriod(getCurrentPeriodIndex(), this.period);
        Timeline.Period period = this.period;
        State state = this.state;
        return Util.usToMs(period.getAdDurationUs(state.currentAdGroupIndex, state.currentAdIndexInAdGroup));
    }

    @Override // androidx.media3.common.Player
    public final long getMaxSeekToPreviousPosition() {
        verifyApplicationThreadAndInitState();
        return this.state.maxSeekToPreviousPositionMs;
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata getMediaMetadata() {
        verifyApplicationThreadAndInitState();
        return this.state.currentMetadata;
    }

    public MediaItemData getPlaceholderMediaItemData(MediaItem mediaItem) {
        return new MediaItemData.Builder(new PlaceholderUid()).setMediaItem(mediaItem).setIsDynamic(true).setIsPlaceholder(true).build();
    }

    public State getPlaceholderState(State state) {
        return state;
    }

    @Override // androidx.media3.common.Player
    public final boolean getPlayWhenReady() {
        verifyApplicationThreadAndInitState();
        return this.state.playWhenReady;
    }

    @Override // androidx.media3.common.Player
    public final PlaybackParameters getPlaybackParameters() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackParameters;
    }

    @Override // androidx.media3.common.Player
    public final int getPlaybackState() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackState;
    }

    @Override // androidx.media3.common.Player
    public final int getPlaybackSuppressionReason() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackSuppressionReason;
    }

    @Override // androidx.media3.common.Player
    public final PlaybackException getPlayerError() {
        verifyApplicationThreadAndInitState();
        return this.state.playerError;
    }

    @Override // androidx.media3.common.Player
    public final MediaMetadata getPlaylistMetadata() {
        verifyApplicationThreadAndInitState();
        return this.state.playlistMetadata;
    }

    @Override // androidx.media3.common.Player
    public final int getRepeatMode() {
        verifyApplicationThreadAndInitState();
        return this.state.repeatMode;
    }

    @Override // androidx.media3.common.Player
    public final long getSeekBackIncrement() {
        verifyApplicationThreadAndInitState();
        return this.state.seekBackIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public final long getSeekForwardIncrement() {
        verifyApplicationThreadAndInitState();
        return this.state.seekForwardIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public final boolean getShuffleModeEnabled() {
        verifyApplicationThreadAndInitState();
        return this.state.shuffleModeEnabled;
    }

    public abstract State getState();

    @Override // androidx.media3.common.Player
    public final Size getSurfaceSize() {
        verifyApplicationThreadAndInitState();
        return this.state.surfaceSize;
    }

    @Override // androidx.media3.common.Player
    public final long getTotalBufferedDuration() {
        verifyApplicationThreadAndInitState();
        return this.state.totalBufferedDurationMsSupplier.get();
    }

    @Override // androidx.media3.common.Player
    public final TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThreadAndInitState();
        return this.state.trackSelectionParameters;
    }

    @Override // androidx.media3.common.Player
    public final VideoSize getVideoSize() {
        verifyApplicationThreadAndInitState();
        return this.state.videoSize;
    }

    @Override // androidx.media3.common.Player
    public final float getVolume() {
        verifyApplicationThreadAndInitState();
        return this.state.volume;
    }

    public F handleAddMediaItems(int i2, List<MediaItem> list) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    public F handleClearVideoOutput(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    public F handleDecreaseDeviceVolume(int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS");
    }

    public F handleIncreaseDeviceVolume(int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS");
    }

    public F handleMoveMediaItems(int i2, int i7, int i8) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    public F handlePrepare() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PREPARE");
    }

    public F handleRelease() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_RELEASE");
    }

    public F handleRemoveMediaItems(int i2, int i7) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    public F handleReplaceMediaItems(int i2, int i7, List<MediaItem> list) {
        F handleAddMediaItems = handleAddMediaItems(i7, list);
        return i2 == i7 ? handleAddMediaItems : Util.transformFutureAsync(handleAddMediaItems, new A0.a(handleRemoveMediaItems(i2, i7), 18));
    }

    public F handleSeek(int i2, long j7, int i7) {
        throw new IllegalStateException("Missing implementation to handle one of the COMMAND_SEEK_*");
    }

    public F handleSetAudioAttributes(AudioAttributes audioAttributes, boolean z6) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_AUDIO_ATTRIBUTES");
    }

    public F handleSetDeviceMuted(boolean z6, int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS");
    }

    public F handleSetDeviceVolume(int i2, int i7) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_DEVICE_VOLUME or COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS");
    }

    public F handleSetMediaItems(List<MediaItem> list, int i2, long j7) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)");
    }

    public F handleSetPlayWhenReady(boolean z6) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PLAY_PAUSE");
    }

    public F handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH");
    }

    public F handleSetPlaylistMetadata(MediaMetadata mediaMetadata) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_PLAYLIST_METADATA");
    }

    public F handleSetRepeatMode(int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_REPEAT_MODE");
    }

    public F handleSetShuffleModeEnabled(boolean z6) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SHUFFLE_MODE");
    }

    public F handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS");
    }

    public F handleSetVideoOutput(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    @Deprecated
    public F handleSetVolume(float f3) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VOLUME");
    }

    public F handleStop() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_STOP");
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public final void increaseDeviceVolume() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleIncreaseDeviceVolume(1), new i(state, 7));
        }
    }

    public final void invalidateState() {
        verifyApplicationThreadAndInitState();
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        updateStateAndInformListeners(getState(), false, false);
    }

    @Override // androidx.media3.common.Player
    public final boolean isDeviceMuted() {
        verifyApplicationThreadAndInitState();
        return this.state.isDeviceMuted;
    }

    @Override // androidx.media3.common.Player
    public final boolean isLoading() {
        verifyApplicationThreadAndInitState();
        return this.state.isLoading;
    }

    @Override // androidx.media3.common.Player
    public final boolean isPlayingAd() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdGroupIndex != -1;
    }

    @Override // androidx.media3.common.Player
    public final void moveMediaItems(final int i2, int i7, int i8) {
        verifyApplicationThreadAndInitState();
        P3.v.checkArgument(i2 >= 0 && i7 >= i2 && i8 >= 0);
        final State state = this.state;
        int windowCount = state.timeline.getWindowCount();
        if (shouldHandleCommand(20) && windowCount != 0 && i2 < windowCount) {
            final int min = Math.min(i7, windowCount);
            final int min2 = Math.min(i8, windowCount - (min - i2));
            if (i2 != min && min2 != i2) {
                updateStateForPendingOperation(handleMoveMediaItems(i2, min, min2), new P3.C() { // from class: androidx.media3.common.t
                    @Override // P3.C
                    public final Object get() {
                        SimpleBasePlayer.State lambda$moveMediaItems$4;
                        lambda$moveMediaItems$4 = SimpleBasePlayer.this.lambda$moveMediaItems$4(state, i2, min, min2);
                        return lambda$moveMediaItems$4;
                    }
                });
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void mute() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(24) && this.state.volume != 0.0f) {
            updateStateForPendingOperation(handleSetVolume(0.0f, 1), new i(state, 1));
        }
    }

    @Override // androidx.media3.common.Player
    public final void prepare() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(2)) {
            updateStateForPendingOperation(handlePrepare(), new i(state, 8));
        }
    }

    @Override // androidx.media3.common.Player
    public final void release() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(32)) {
            updateStateForPendingOperation(handleRelease(), new i(state, 5));
            this.released = true;
            this.listeners.release();
            this.state = this.state.buildUpon().setPlaybackState(1).setTotalBufferedDurationMs(PositionSupplier.ZERO).setContentBufferedPositionMs(y.a(getContentPositionMsInternal(state, this.window))).setAdBufferedPositionMs(state.adPositionMsSupplier).setIsLoading(false).build();
        }
    }

    @Override // androidx.media3.common.Player
    public final void removeListener(Player.Listener listener) {
        verifyApplicationThreadAndInitState();
        this.listeners.remove(listener);
    }

    @Override // androidx.media3.common.Player
    public final void removeMediaItems(final int i2, int i7) {
        final int min;
        verifyApplicationThreadAndInitState();
        P3.v.checkArgument(i2 >= 0 && i7 >= i2);
        final State state = this.state;
        int windowCount = state.timeline.getWindowCount();
        if (!shouldHandleCommand(20) || windowCount == 0 || i2 >= windowCount || i2 == (min = Math.min(i7, windowCount))) {
            return;
        }
        updateStateForPendingOperation(handleRemoveMediaItems(i2, min), new P3.C() { // from class: androidx.media3.common.v
            @Override // P3.C
            public final Object get() {
                SimpleBasePlayer.State lambda$removeMediaItems$6;
                lambda$removeMediaItems$6 = SimpleBasePlayer.this.lambda$removeMediaItems$6(state, i2, min);
                return lambda$removeMediaItems$6;
            }
        });
    }

    @Override // androidx.media3.common.Player
    public final void replaceMediaItems(final int i2, int i7, final List<MediaItem> list) {
        verifyApplicationThreadAndInitState();
        P3.v.checkArgument(i2 >= 0 && i2 <= i7);
        final State state = this.state;
        int windowCount = state.timeline.getWindowCount();
        if (!shouldHandleCommand(20) || i2 > windowCount) {
            return;
        }
        final int min = Math.min(i7, windowCount);
        updateStateForPendingOperation(handleReplaceMediaItems(i2, min, list), new P3.C() { // from class: androidx.media3.common.m
            @Override // P3.C
            public final Object get() {
                SimpleBasePlayer.State lambda$replaceMediaItems$5;
                lambda$replaceMediaItems$5 = SimpleBasePlayer.this.lambda$replaceMediaItems$5(state, list, min, i2);
                return lambda$replaceMediaItems$5;
            }
        });
    }

    @Override // androidx.media3.common.BasePlayer
    public final void seekTo(final int i2, final long j7, int i7, boolean z6) {
        verifyApplicationThreadAndInitState();
        P3.v.checkArgument(i2 == -1 || i2 >= 0);
        final State state = this.state;
        if (shouldHandleCommand(i7)) {
            final boolean z7 = i2 == -1 || isPlayingAd() || (!state.timeline.isEmpty() && i2 >= state.timeline.getWindowCount());
            updateStateForPendingOperation(handleSeek(i2, j7, i7), new P3.C() { // from class: androidx.media3.common.u
                @Override // P3.C
                public final Object get() {
                    SimpleBasePlayer.State lambda$seekTo$10;
                    lambda$seekTo$10 = SimpleBasePlayer.this.lambda$seekTo$10(z7, state, i2, j7);
                    return lambda$seekTo$10;
                }
            }, !z7, z6);
        }
    }

    @Override // androidx.media3.common.Player
    public final void setAudioAttributes(AudioAttributes audioAttributes, boolean z6) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(35)) {
            updateStateForPendingOperation(handleSetAudioAttributes(audioAttributes, z6), new o(state, audioAttributes, 4));
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public final void setDeviceMuted(boolean z6) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleSetDeviceMuted(z6, 1), new k(state, z6, 2));
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public final void setDeviceVolume(int i2) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(25)) {
            updateStateForPendingOperation(handleSetDeviceVolume(i2, 1), new l(state, i2, 0));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setMediaItems(List<MediaItem> list, boolean z6) {
        verifyApplicationThreadAndInitState();
        setMediaItemsInternal(list, z6 ? -1 : this.state.currentMediaItemIndex, z6 ? C.TIME_UNSET : this.state.contentPositionMsSupplier.get());
    }

    @Override // androidx.media3.common.Player
    public final void setPlayWhenReady(boolean z6) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(1)) {
            updateStateForPendingOperation(handleSetPlayWhenReady(z6), new k(state, z6, 0));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setPlaybackParameters(PlaybackParameters playbackParameters) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(13)) {
            updateStateForPendingOperation(handleSetPlaybackParameters(playbackParameters), new o(state, playbackParameters, 6));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(19)) {
            updateStateForPendingOperation(handleSetPlaylistMetadata(mediaMetadata), new o(state, mediaMetadata, 1));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setRepeatMode(int i2) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(15)) {
            updateStateForPendingOperation(handleSetRepeatMode(i2), new l(state, i2, 2));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setShuffleModeEnabled(boolean z6) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(14)) {
            updateStateForPendingOperation(handleSetShuffleModeEnabled(z6), new k(state, z6, 1));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(29)) {
            updateStateForPendingOperation(handleSetTrackSelectionParameters(trackSelectionParameters), new o(state, trackSelectionParameters, 7));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setVideoSurface(Surface surface) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surface == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surface), new i(state, 2));
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surfaceHolder == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surfaceHolder), new o(state, surfaceHolder, 2));
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void setVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surfaceView == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surfaceView), new o(state, surfaceView, 3));
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void setVideoTextureView(TextureView textureView) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (textureView == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(textureView), new o(state, textureView.isAvailable() ? new Size(textureView.getWidth(), textureView.getHeight()) : Size.ZERO, 0));
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final void setVolume(final float f3) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(24)) {
            updateStateForPendingOperation(handleSetVolume(f3, 0), new P3.C() { // from class: androidx.media3.common.s
                @Override // P3.C
                public final Object get() {
                    SimpleBasePlayer.State lambda$setVolume$16;
                    lambda$setVolume$16 = SimpleBasePlayer.lambda$setVolume$16(SimpleBasePlayer.State.this, f3);
                    return lambda$setVolume$16;
                }
            });
        }
    }

    @Override // androidx.media3.common.Player
    public final void stop() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(3)) {
            updateStateForPendingOperation(handleStop(), new o(this, state));
        }
    }

    @Override // androidx.media3.common.Player
    public final void unmute() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(24) && this.state.volume == 0.0f) {
            updateStateForPendingOperation(handleSetVolume(state.unmuteVolume, 2), new i(state, 0));
        }
    }

    public final void verifyApplicationThread() {
        if (Thread.currentThread() != this.applicationLooper.getThread()) {
            throw new IllegalStateException(Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\n", Thread.currentThread().getName(), this.applicationLooper.getThread().getName()));
        }
    }

    public SimpleBasePlayer(Looper looper, Clock clock) {
        this.applicationLooper = looper;
        this.applicationHandler = clock.createHandler(looper, null);
        this.pendingOperations = new HashSet<>();
        this.period = new Timeline.Period();
        this.listeners = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: androidx.media3.common.r
            @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
            public final void invoke(Object obj, FlagSet flagSet) {
                SimpleBasePlayer.this.lambda$new$0((Player.Listener) obj, flagSet);
            }
        });
    }

    private void updateStateForPendingOperation(F f3, P3.C c7, boolean z6, boolean z7) {
        if (f3.isDone() && this.pendingOperations.isEmpty()) {
            updateStateAndInformListeners(getState(), z6, z7);
            return;
        }
        this.pendingOperations.add(f3);
        updateStateAndInformListeners(getPlaceholderState((State) c7.get()), z6, z7);
        f3.addListener(new A4.n(18, this, f3), new p(this, 0));
    }

    @Override // androidx.media3.common.Player
    public final void clearVideoSurface(Surface surface) {
        clearVideoOutput(surface);
    }

    public F handleSetVolume(float f3, int i2) {
        return handleSetVolume(f3);
    }

    @Override // androidx.media3.common.Player
    public final void setMediaItems(List<MediaItem> list, int i2, long j7) {
        verifyApplicationThreadAndInitState();
        if (i2 == -1) {
            State state = this.state;
            int i7 = state.currentMediaItemIndex;
            long j8 = state.contentPositionMsSupplier.get();
            i2 = i7;
            j7 = j8;
        }
        setMediaItemsInternal(list, i2, j7);
    }

    @Override // androidx.media3.common.Player
    public final void decreaseDeviceVolume(int i2) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(34)) {
            updateStateForPendingOperation(handleDecreaseDeviceVolume(i2), new i(state, 9));
        }
    }

    @Override // androidx.media3.common.Player
    public final void increaseDeviceVolume(int i2) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(34)) {
            updateStateForPendingOperation(handleIncreaseDeviceVolume(i2), new i(state, 3));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setDeviceMuted(boolean z6, int i2) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(34)) {
            updateStateForPendingOperation(handleSetDeviceMuted(z6, i2), new k(state, z6, 3));
        }
    }

    @Override // androidx.media3.common.Player
    public final void setDeviceVolume(int i2, int i7) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(33)) {
            updateStateForPendingOperation(handleSetDeviceVolume(i2, i7), new l(state, i2, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ F lambda$handleReplaceMediaItems$33(F f3, Object obj) throws Exception {
        return f3;
    }
}
