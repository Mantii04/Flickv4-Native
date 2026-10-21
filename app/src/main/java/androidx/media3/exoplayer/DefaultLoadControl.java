package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSchemeDataSource;
import androidx.media3.datasource.RawResourceDataSource;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@UnstableApi
/* loaded from: classes.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 2000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 1000;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 26214400;
    public static final int DEFAULT_MAX_BUFFER_FOR_LOCAL_PLAYBACK_MS = 50000;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MAX_BUFFER_SIZE = 210239488;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_MIN_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 144310272;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS_FOR_LOCAL_PLAYBACK = true;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD = 144179200;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK = 19660800;
    public static final ImmutableList<String> LOCAL_PLAYBACK_SCHEMES = ImmutableList.of("file", FirebaseAnalytics.Param.CONTENT, DataSchemeDataSource.SCHEME_DATA, "android.resource", RawResourceDataSource.RAW_RESOURCE_SCHEME, "asset");
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferForLocalPlaybackUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackForLocalPlaybackUs;
    private final long bufferForPlaybackUs;
    private final ConcurrentHashMap<PlayerId, PlayerLoadingState> loadingStates;
    private final long maxBufferForLocalPlaybackUs;
    private final long maxBufferUs;
    private final long minBufferForLocalPlaybackUs;
    private final long minBufferUs;
    private final Timeline.Period period;
    private final ImmutableMap<String, Integer> playerTargetBufferBytesOverwrites;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
    private final boolean retainBackBufferFromKeyframe;
    private final int targetBufferBytesOverwrite;
    private long threadId;
    private final Timeline.Window window;

    public static final class Builder {
        private DefaultAllocator allocator;
        private int backBufferDurationMs;
        private int bufferForPlaybackAfterRebufferForLocalPlaybackMs;
        private int bufferForPlaybackAfterRebufferMs;
        private int bufferForPlaybackForLocalPlaybackMs;
        private int bufferForPlaybackMs;
        private boolean buildCalled;
        private int maxBufferForLocalPlaybackMs;
        private int maxBufferMs;
        private int minBufferForLocalPlaybackMs;
        private int minBufferMs;
        private Boolean onlyGenericConfigurationMethodsCalled;
        private final HashMap<String, Integer> playerTargetBufferBytes;
        private boolean prioritizeTimeOverSizeThresholds;
        private boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
        private boolean retainBackBufferFromKeyframe;
        private int targetBufferBytes;

        public Builder() {
            HashMap<String, Integer> hashMap = new HashMap<>();
            this.playerTargetBufferBytes = hashMap;
            hashMap.put(PlayerId.PRELOAD.name, Integer.valueOf(DefaultLoadControl.DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD));
            this.minBufferMs = 50000;
            this.minBufferForLocalPlaybackMs = 1000;
            this.maxBufferMs = 50000;
            this.maxBufferForLocalPlaybackMs = 50000;
            this.bufferForPlaybackMs = 1000;
            this.bufferForPlaybackForLocalPlaybackMs = 1000;
            this.bufferForPlaybackAfterRebufferMs = 2000;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = 1000;
            this.targetBufferBytes = -1;
            this.prioritizeTimeOverSizeThresholds = false;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = true;
            this.backBufferDurationMs = 0;
            this.retainBackBufferFromKeyframe = false;
        }

        public DefaultLoadControl build() {
            P3.v.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            Boolean bool = this.onlyGenericConfigurationMethodsCalled;
            if (bool != null && bool.booleanValue()) {
                this.minBufferForLocalPlaybackMs = this.minBufferMs;
                this.maxBufferForLocalPlaybackMs = this.maxBufferMs;
                this.bufferForPlaybackForLocalPlaybackMs = this.bufferForPlaybackMs;
                this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = this.bufferForPlaybackAfterRebufferMs;
                this.prioritizeTimeOverSizeThresholdsForLocalPlayback = this.prioritizeTimeOverSizeThresholds;
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.minBufferForLocalPlaybackMs, this.maxBufferMs, this.maxBufferForLocalPlaybackMs, this.bufferForPlaybackMs, this.bufferForPlaybackForLocalPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.bufferForPlaybackAfterRebufferForLocalPlaybackMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.prioritizeTimeOverSizeThresholdsForLocalPlayback, this.backBufferDurationMs, this.retainBackBufferFromKeyframe, this.playerTargetBufferBytes);
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            P3.v.checkState(!this.buildCalled);
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBackBuffer(int i2, boolean z6) {
            P3.v.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i2, 0, "backBufferDurationMs", "0");
            this.backBufferDurationMs = i2;
            this.retainBackBufferFromKeyframe = z6;
            return this;
        }

        public Builder setBufferDurationsMs(int i2, int i7, int i8, int i9) {
            P3.v.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i8, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i9, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i2, i8, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i9, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i7, i2, "maxBufferMs", "minBufferMs");
            this.minBufferMs = i2;
            this.maxBufferMs = i7;
            this.bufferForPlaybackMs = i8;
            this.bufferForPlaybackAfterRebufferMs = i9;
            this.minBufferForLocalPlaybackMs = i2;
            this.maxBufferForLocalPlaybackMs = i7;
            this.bufferForPlaybackForLocalPlaybackMs = i8;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = i9;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = Boolean.TRUE;
            }
            return this;
        }

        public Builder setBufferDurationsMsForLocalPlayback(int i2, int i7, int i8, int i9) {
            P3.v.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i8, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i9, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i2, i8, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i9, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i7, i2, "maxBufferMs", "minBufferMs");
            this.minBufferForLocalPlaybackMs = i2;
            this.maxBufferForLocalPlaybackMs = i7;
            this.bufferForPlaybackForLocalPlaybackMs = i8;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = i9;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setBufferDurationsMsForStreaming(int i2, int i7, int i8, int i9) {
            P3.v.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i8, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i9, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i2, i8, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i9, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i7, i2, "maxBufferMs", "minBufferMs");
            this.minBufferMs = i2;
            this.maxBufferMs = i7;
            this.bufferForPlaybackMs = i8;
            this.bufferForPlaybackAfterRebufferMs = i9;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setPlayerTargetBufferBytes(String str, int i2) {
            P3.v.checkState(!this.buildCalled);
            this.playerTargetBufferBytes.put(str, Integer.valueOf(i2));
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = z6;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z6;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = Boolean.TRUE;
            }
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholdsForLocalPlayback(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z6;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholdsForStreaming(boolean z6) {
            P3.v.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = z6;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setTargetBufferBytes(int i2) {
            P3.v.checkState(!this.buildCalled);
            this.targetBufferBytes = i2;
            return this;
        }
    }

    public static class PlayerLoadingState {
        private int allocatedCounts;
        public boolean isLoading;
        public int referenceCount = 1;
        public int targetBufferBytes;

        public synchronized void decreaseAllocatedCounts() {
            this.allocatedCounts--;
        }

        public synchronized int getAllocatedCounts() {
            return this.allocatedCounts;
        }

        public synchronized void increaseAllocatedCounts() {
            this.allocatedCounts++;
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 1000, 50000, 50000, 1000, 1000, 2000, 1000, -1, false, true, 0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertGreaterOrEqual(int i2, int i7, String str, String str2) {
        P3.v.checkArgument(i2 >= i7, "%s cannot be less than %s", str, str2);
    }

    private long getBufferForPlaybackAfterRebufferUs(boolean z6) {
        return z6 ? this.bufferForPlaybackAfterRebufferForLocalPlaybackUs : this.bufferForPlaybackAfterRebufferUs;
    }

    private long getBufferForPlaybackUs(boolean z6) {
        return z6 ? this.bufferForPlaybackForLocalPlaybackUs : this.bufferForPlaybackUs;
    }

    private static int getDefaultBufferSize(int i2, boolean z6) {
        switch (i2) {
            case -2:
                return 0;
            case -1:
                return 13107200;
            case 0:
                return DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                return z6 ? DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK : DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
                return 131072;
            case 4:
                return DEFAULT_IMAGE_BUFFER_SIZE;
            case 5:
            case 6:
                return 131072;
            default:
                throw new IllegalArgumentException();
        }
    }

    private long getMaxBufferUs(boolean z6) {
        return z6 ? this.maxBufferForLocalPlaybackUs : this.maxBufferUs;
    }

    private long getMinBufferUs(boolean z6) {
        return z6 ? this.minBufferForLocalPlaybackUs : this.minBufferUs;
    }

    private int getTargetBufferBytes(PlayerId playerId) {
        return ((PlayerLoadingState) P3.v.checkNotNull(this.loadingStates.get(playerId))).targetBufferBytes;
    }

    private int getTargetBufferBytesOverwrite(PlayerId playerId) {
        Integer num = this.playerTargetBufferBytesOverwrites.get(playerId.name);
        return (num == null || num.intValue() == -1) ? this.targetBufferBytesOverwrite : num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTotalBufferBytesAllocated(PlayerId playerId) {
        return this.allocator.getIndividualAllocationLength() * ((PlayerLoadingState) P3.v.checkNotNull(this.loadingStates.get(playerId))).getAllocatedCounts();
    }

    private boolean isLocalPlayback(LoadControl.Parameters parameters) {
        MediaItem.LocalConfiguration localConfiguration = parameters.timeline.getWindow(parameters.timeline.getPeriodByUid(parameters.mediaPeriodId.periodUid, this.period).windowIndex, this.window).mediaItem.localConfiguration;
        if (localConfiguration == null) {
            return false;
        }
        String scheme = localConfiguration.uri.getScheme();
        return TextUtils.isEmpty(scheme) || LOCAL_PLAYBACK_SCHEMES.contains(scheme);
    }

    private boolean prioritizeTimeOverSizeThresholds(boolean z6) {
        return z6 ? this.prioritizeTimeOverSizeThresholdsForLocalPlayback : this.prioritizeTimeOverSizeThresholds;
    }

    private void removePlayer(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState != null) {
            int i2 = playerLoadingState.referenceCount - 1;
            playerLoadingState.referenceCount = i2;
            if (i2 == 0) {
                this.loadingStates.remove(playerId);
                updateAllocator();
            }
        }
    }

    private void resetPlayerLoadingState(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) P3.v.checkNotNull(this.loadingStates.get(playerId));
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(playerId);
        if (targetBufferBytesOverwrite == -1) {
            targetBufferBytesOverwrite = 13107200;
        }
        playerLoadingState.targetBufferBytes = targetBufferBytesOverwrite;
        playerLoadingState.isLoading = false;
    }

    private void updateAllocator() {
        if (this.loadingStates.isEmpty()) {
            this.allocator.reset();
        } else {
            this.allocator.setTargetBufferSize(calculateTotalTargetBufferBytes());
        }
    }

    @Deprecated
    public int calculateTargetBufferBytes(ExoTrackSelection[] exoTrackSelectionArr) {
        return -1;
    }

    public int calculateTotalTargetBufferBytes() {
        Iterator<PlayerLoadingState> it = this.loadingStates.values().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += it.next().targetBufferBytes;
        }
        return i2;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public Allocator getAllocator(PlayerId playerId) {
        return new PlayerIdFilteringAllocatorImpl(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ long getBackBufferDurationUs() {
        return K.a(this);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ void onPrepared() {
        K.c(this);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ void onReleased() {
        K.e(this);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ void onStopped() {
        K.g(this);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ void onTracksSelected(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        K.i(this, timeline, mediaPeriodId, rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ boolean retainBackBufferFromKeyframe() {
        return K.m(this);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ boolean shouldContinueLoading(long j7, long j8, float f3) {
        return K.o(this, j7, j8, f3);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinuePreloading(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j7) {
        Iterator<PlayerLoadingState> it = this.loadingStates.values().iterator();
        while (it.hasNext()) {
            if (it.next().isLoading) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ boolean shouldStartPlayback(long j7, float f3, boolean z6, long j8) {
        return K.r(this, j7, f3, z6, j8);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, boolean z6, boolean z7, int i15, boolean z8, Map<String, Integer> map) {
        assertGreaterOrEqual(i10, 0, "bufferForPlaybackMs", "0");
        assertGreaterOrEqual(i11, 0, "bufferForPlaybackForLocalPlaybackMs", "0");
        assertGreaterOrEqual(i12, 0, "bufferForPlaybackAfterRebufferMs", "0");
        assertGreaterOrEqual(i13, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", "0");
        assertGreaterOrEqual(i2, i10, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i7, i11, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        assertGreaterOrEqual(i2, i12, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i7, i13, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        assertGreaterOrEqual(i8, i2, "maxBufferMs", "minBufferMs");
        assertGreaterOrEqual(i9, i7, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        assertGreaterOrEqual(i15, 0, "backBufferDurationMs", "0");
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.allocator = defaultAllocator;
        this.minBufferUs = Util.msToUs(i2);
        this.minBufferForLocalPlaybackUs = Util.msToUs(i7);
        this.maxBufferUs = Util.msToUs(i8);
        this.maxBufferForLocalPlaybackUs = Util.msToUs(i9);
        this.bufferForPlaybackUs = Util.msToUs(i10);
        this.bufferForPlaybackForLocalPlaybackUs = Util.msToUs(i11);
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(i12);
        this.bufferForPlaybackAfterRebufferForLocalPlaybackUs = Util.msToUs(i13);
        this.targetBufferBytesOverwrite = i14;
        this.prioritizeTimeOverSizeThresholds = z6;
        this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z7;
        this.backBufferDurationUs = Util.msToUs(i15);
        this.retainBackBufferFromKeyframe = z8;
        this.loadingStates = new ConcurrentHashMap<>();
        this.playerTargetBufferBytesOverwrites = ImmutableMap.copyOf((Map) map);
        this.threadId = -1L;
    }

    public int calculateTargetBufferBytes(LoadControl.Parameters parameters, ExoTrackSelection[] exoTrackSelectionArr) {
        int calculateTargetBufferBytes = calculateTargetBufferBytes(exoTrackSelectionArr);
        if (calculateTargetBufferBytes != -1) {
            return calculateTargetBufferBytes;
        }
        boolean isLocalPlayback = isLocalPlayback(parameters);
        int i2 = 0;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                i2 += getDefaultBufferSize(exoTrackSelection.getTrackGroup().type, isLocalPlayback);
            }
        }
        return Util.constrainValue(i2, 13107200, DEFAULT_MAX_BUFFER_SIZE);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public long getBackBufferDurationUs(PlayerId playerId) {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onPrepared(PlayerId playerId) {
        long id = Thread.currentThread().getId();
        long j7 = this.threadId;
        P3.v.checkState(j7 == -1 || j7 == id, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.threadId = id;
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState == null) {
            this.loadingStates.put(playerId, new PlayerLoadingState());
        } else {
            playerLoadingState.referenceCount++;
        }
        resetPlayerLoadingState(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onReleased(PlayerId playerId) {
        removePlayer(playerId);
        if (this.loadingStates.isEmpty()) {
            this.threadId = -1L;
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onStopped(PlayerId playerId) {
        removePlayer(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ void onTracksSelected(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        K.k(this, playerId, timeline, mediaPeriodId, rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean retainBackBufferFromKeyframe(PlayerId playerId) {
        return this.retainBackBufferFromKeyframe;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinueLoading(LoadControl.Parameters parameters) {
        PlayerId playerId = parameters.playerId;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) P3.v.checkNotNull(this.loadingStates.get(playerId));
        boolean z6 = getTotalBufferBytesAllocated(playerId) >= getTargetBufferBytes(playerId);
        if (playerId.equals(PlayerId.PRELOAD)) {
            return !z6;
        }
        boolean isLocalPlayback = isLocalPlayback(parameters);
        long minBufferUs = getMinBufferUs(isLocalPlayback);
        long maxBufferUs = getMaxBufferUs(isLocalPlayback);
        float f3 = parameters.playbackSpeed;
        if (f3 > 1.0f) {
            minBufferUs = Math.min(Util.getMediaDurationForPlayoutDuration(minBufferUs, f3), maxBufferUs);
        }
        long max = Math.max(minBufferUs, 500000L);
        long j7 = parameters.bufferedDurationUs;
        if (j7 < max) {
            boolean z7 = prioritizeTimeOverSizeThresholds(isLocalPlayback) || !z6;
            playerLoadingState.isLoading = z7;
            if (!z7 && parameters.bufferedDurationUs < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j7 >= maxBufferUs || z6) {
            playerLoadingState.isLoading = false;
        }
        return playerLoadingState.isLoading;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ boolean shouldStartPlayback(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j7, float f3, boolean z6, long j8) {
        return K.s(this, timeline, mediaPeriodId, j7, f3, z6, j8);
    }

    public final class PlayerIdFilteringAllocatorImpl implements PlayerIdAwareAllocator {
        private final HashMap<Allocation, PlayerId> allocationPlayerIdMap = new HashMap<>();
        private PlayerId playerId;

        public PlayerIdFilteringAllocatorImpl(PlayerId playerId) {
            this.playerId = playerId;
        }

        private void releaseInternal(Allocation allocation) {
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get((PlayerId) P3.v.checkNotNull(this.allocationPlayerIdMap.remove(allocation)));
            if (playerLoadingState != null) {
                playerLoadingState.decreaseAllocatedCounts();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized Allocation allocate() {
            Allocation allocate;
            allocate = DefaultLoadControl.this.allocator.allocate();
            this.allocationPlayerIdMap.put(allocate, this.playerId);
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get(this.playerId);
            if (playerLoadingState != null) {
                playerLoadingState.increaseAllocatedCounts();
            }
            return allocate;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getIndividualAllocationLength() {
            return DefaultLoadControl.this.allocator.getIndividualAllocationLength();
        }

        @Override // androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator, androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getTotalBytesAllocated() {
            return DefaultLoadControl.this.getTotalBufferBytesAllocated(this.playerId);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocation allocation) {
            DefaultLoadControl.this.allocator.release(allocation);
            releaseInternal(allocation);
        }

        @Override // androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator
        public synchronized void setPlayerId(PlayerId playerId) {
            this.playerId = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void trim() {
            DefaultLoadControl.this.allocator.trim();
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocator.AllocationNode allocationNode) {
            DefaultLoadControl.this.allocator.release(allocationNode);
            while (allocationNode != null) {
                releaseInternal(allocationNode.getAllocation());
                allocationNode = allocationNode.next();
            }
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public final /* synthetic */ void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        K.l(this, rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldStartPlayback(LoadControl.Parameters parameters) {
        long bufferForPlaybackUs;
        boolean isLocalPlayback = isLocalPlayback(parameters);
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(parameters.bufferedDurationUs, parameters.playbackSpeed);
        if (parameters.rebuffering) {
            bufferForPlaybackUs = getBufferForPlaybackAfterRebufferUs(isLocalPlayback);
        } else {
            bufferForPlaybackUs = getBufferForPlaybackUs(isLocalPlayback);
        }
        long j7 = parameters.targetLiveOffsetUs;
        if (j7 != androidx.media3.common.C.TIME_UNSET) {
            bufferForPlaybackUs = Math.min(j7 / 2, bufferForPlaybackUs);
        }
        if (bufferForPlaybackUs <= 0 || playoutDurationForMediaDuration >= bufferForPlaybackUs) {
            return true;
        }
        return !prioritizeTimeOverSizeThresholds(isLocalPlayback) && getTotalBufferBytesAllocated(parameters.playerId) >= getTargetBufferBytes(parameters.playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onTracksSelected(LoadControl.Parameters parameters, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(parameters.playerId);
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) P3.v.checkNotNull(this.loadingStates.get(parameters.playerId));
        if (targetBufferBytesOverwrite == -1) {
            targetBufferBytesOverwrite = calculateTargetBufferBytes(parameters, exoTrackSelectionArr);
        }
        playerLoadingState.targetBufferBytes = targetBufferBytesOverwrite;
        updateAllocator();
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, boolean z6, boolean z7, int i15, boolean z8) {
        this(defaultAllocator, i2, i7, i8, i9, i10, i11, i12, i13, i14, z6, z7, i15, z8, ImmutableMap.of());
    }
}
