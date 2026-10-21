package androidx.media3.common;

import Q3.C0248s;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class Timeline {
    public static final Timeline EMPTY = new Timeline() { // from class: androidx.media3.common.Timeline.1
        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public Period getPeriod(int i2, Period period, boolean z6) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i2) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public Window getWindow(int i2, Window window, long j7) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return 0;
        }
    };
    private static final String FIELD_WINDOWS = Util.intToStringMaxRadix(0);
    private static final String FIELD_PERIODS = Util.intToStringMaxRadix(1);
    private static final String FIELD_SHUFFLED_WINDOW_INDICES = Util.intToStringMaxRadix(2);

    public static final class Period {

        @UnstableApi
        public AdPlaybackState adPlaybackState = AdPlaybackState.NONE;

        @UnstableApi
        public long durationUs;
        public Object id;
        public boolean isPlaceholder;

        @UnstableApi
        public long positionInWindowUs;
        public Object uid;
        public int windowIndex;
        private static final String FIELD_WINDOW_INDEX = Util.intToStringMaxRadix(0);
        private static final String FIELD_DURATION_US = Util.intToStringMaxRadix(1);
        private static final String FIELD_POSITION_IN_WINDOW_US = Util.intToStringMaxRadix(2);
        private static final String FIELD_PLACEHOLDER = Util.intToStringMaxRadix(3);
        private static final String FIELD_AD_PLAYBACK_STATE = Util.intToStringMaxRadix(4);

        @UnstableApi
        public static Period fromBundle(Bundle bundle) {
            int i2 = bundle.getInt(FIELD_WINDOW_INDEX, 0);
            long j7 = bundle.getLong(FIELD_DURATION_US, C.TIME_UNSET);
            long j8 = bundle.getLong(FIELD_POSITION_IN_WINDOW_US, 0L);
            boolean z6 = bundle.getBoolean(FIELD_PLACEHOLDER, false);
            Bundle bundle2 = bundle.getBundle(FIELD_AD_PLAYBACK_STATE);
            AdPlaybackState fromBundle = bundle2 != null ? AdPlaybackState.fromBundle(bundle2) : AdPlaybackState.NONE;
            Period period = new Period();
            period.set(null, null, i2, j7, j8, fromBundle, z6);
            return period;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Period.class.equals(obj.getClass())) {
                Period period = (Period) obj;
                if (Objects.equals(this.id, period.id) && Objects.equals(this.uid, period.uid) && this.windowIndex == period.windowIndex && this.durationUs == period.durationUs && this.positionInWindowUs == period.positionInWindowUs && this.isPlaceholder == period.isPlaceholder && Objects.equals(this.adPlaybackState, period.adPlaybackState)) {
                    return true;
                }
            }
            return false;
        }

        public int getAdCountInAdGroup(int i2) {
            return this.adPlaybackState.getAdGroup(i2).count;
        }

        public long getAdDurationUs(int i2, int i7) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.getAdGroup(i2);
            return adGroup.count != -1 ? adGroup.durationsUs[i7] : C.TIME_UNSET;
        }

        public int getAdGroupCount() {
            return this.adPlaybackState.adGroupCount;
        }

        public int getAdGroupIndexAfterPositionUs(long j7) {
            return this.adPlaybackState.getAdGroupIndexAfterPositionUs(j7, this.durationUs);
        }

        public int getAdGroupIndexForPositionUs(long j7) {
            return this.adPlaybackState.getAdGroupIndexForPositionUs(j7, this.durationUs);
        }

        public long getAdGroupTimeUs(int i2) {
            return this.adPlaybackState.getAdGroup(i2).timeUs;
        }

        public long getAdResumePositionUs() {
            return this.adPlaybackState.adResumePositionUs;
        }

        @UnstableApi
        public int getAdState(int i2, int i7) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.getAdGroup(i2);
            if (adGroup.count != -1) {
                return adGroup.states[i7];
            }
            return 0;
        }

        public Object getAdsId() {
            return this.adPlaybackState.adsId;
        }

        @UnstableApi
        public long getContentResumeOffsetUs(int i2) {
            return this.adPlaybackState.getAdGroup(i2).contentResumeOffsetUs;
        }

        public long getDurationMs() {
            return Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public int getFirstAdIndexToPlay(int i2) {
            return this.adPlaybackState.getAdGroup(i2).getFirstAdIndexToPlay();
        }

        public int getNextAdIndexToPlay(int i2, int i7) {
            return this.adPlaybackState.getAdGroup(i2).getNextAdIndexToPlay(i7);
        }

        public long getPositionInWindowMs() {
            return Util.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public int getRemovedAdGroupCount() {
            return this.adPlaybackState.removedAdGroupCount;
        }

        public boolean hasPlayedAdGroup(int i2) {
            return !this.adPlaybackState.getAdGroup(i2).hasUnplayedAds();
        }

        public int hashCode() {
            Object obj = this.id;
            int hashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.uid;
            int hashCode2 = (((hashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.windowIndex) * 31;
            long j7 = this.durationUs;
            int i2 = (hashCode2 + ((int) (j7 ^ (j7 >>> 32)))) * 31;
            long j8 = this.positionInWindowUs;
            return this.adPlaybackState.hashCode() + ((((i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31);
        }

        @UnstableApi
        public boolean isLivePostrollPlaceholder(int i2) {
            return i2 == getAdGroupCount() - 1 && this.adPlaybackState.isLivePostrollPlaceholder(i2);
        }

        @UnstableApi
        public boolean isServerSideInsertedAdGroup(int i2) {
            return this.adPlaybackState.getAdGroup(i2).isServerSideInserted;
        }

        @UnstableApi
        public Period set(Object obj, Object obj2, int i2, long j7, long j8) {
            return set(obj, obj2, i2, j7, j8, AdPlaybackState.NONE, false);
        }

        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            int i2 = this.windowIndex;
            if (i2 != 0) {
                bundle.putInt(FIELD_WINDOW_INDEX, i2);
            }
            long j7 = this.durationUs;
            if (j7 != C.TIME_UNSET) {
                bundle.putLong(FIELD_DURATION_US, j7);
            }
            long j8 = this.positionInWindowUs;
            if (j8 != 0) {
                bundle.putLong(FIELD_POSITION_IN_WINDOW_US, j8);
            }
            boolean z6 = this.isPlaceholder;
            if (z6) {
                bundle.putBoolean(FIELD_PLACEHOLDER, z6);
            }
            if (!this.adPlaybackState.equals(AdPlaybackState.NONE)) {
                bundle.putBundle(FIELD_AD_PLAYBACK_STATE, this.adPlaybackState.toBundle());
            }
            return bundle;
        }

        @UnstableApi
        public Period set(Object obj, Object obj2, int i2, long j7, long j8, AdPlaybackState adPlaybackState, boolean z6) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i2;
            this.durationUs = j7;
            this.positionInWindowUs = j8;
            this.adPlaybackState = adPlaybackState;
            this.isPlaceholder = z6;
            return this;
        }
    }

    @UnstableApi
    public static final class RemotableTimeline extends Timeline {
        private final ImmutableList<Period> periods;
        private final int[] shuffledWindowIndices;
        private final int[] windowIndicesInShuffled;
        private final ImmutableList<Window> windows;

        public RemotableTimeline(ImmutableList<Window> immutableList, ImmutableList<Period> immutableList2, int[] iArr) {
            P3.v.checkArgument(immutableList.size() == iArr.length);
            this.windows = immutableList;
            this.periods = immutableList2;
            this.shuffledWindowIndices = iArr;
            this.windowIndicesInShuffled = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                this.windowIndicesInShuffled[iArr[i2]] = i2;
            }
        }

        @Override // androidx.media3.common.Timeline
        public int getFirstWindowIndex(boolean z6) {
            if (isEmpty()) {
                return -1;
            }
            if (z6) {
                return this.shuffledWindowIndices[0];
            }
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public int getLastWindowIndex(boolean z6) {
            if (isEmpty()) {
                return -1;
            }
            return z6 ? this.shuffledWindowIndices[getWindowCount() - 1] : getWindowCount() - 1;
        }

        @Override // androidx.media3.common.Timeline
        public int getNextWindowIndex(int i2, int i7, boolean z6) {
            if (i7 == 1) {
                return i2;
            }
            if (i2 != getLastWindowIndex(z6)) {
                return z6 ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i2] + 1] : i2 + 1;
            }
            if (i7 == 2) {
                return getFirstWindowIndex(z6);
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public Period getPeriod(int i2, Period period, boolean z6) {
            Period period2 = this.periods.get(i2);
            period.set(period2.id, period2.uid, period2.windowIndex, period2.durationUs, period2.positionInWindowUs, period2.adPlaybackState, period2.isPlaceholder);
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return this.periods.size();
        }

        @Override // androidx.media3.common.Timeline
        public int getPreviousWindowIndex(int i2, int i7, boolean z6) {
            if (i7 == 1) {
                return i2;
            }
            if (i2 != getFirstWindowIndex(z6)) {
                return z6 ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i2] - 1] : i2 - 1;
            }
            if (i7 == 2) {
                return getLastWindowIndex(z6);
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public Window getWindow(int i2, Window window, long j7) {
            Window window2 = this.windows.get(i2);
            window.set(window2.uid, window2.mediaItem, window2.manifest, window2.presentationStartTimeMs, window2.windowStartTimeMs, window2.elapsedRealtimeEpochOffsetMs, window2.isSeekable, window2.isDynamic, window2.liveConfiguration, window2.defaultPositionUs, window2.durationUs, window2.firstPeriodIndex, window2.lastPeriodIndex, window2.positionInFirstPeriodUs);
            window.isPlaceholder = window2.isPlaceholder;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return this.windows.size();
        }
    }

    public static final class Window {

        @UnstableApi
        public long defaultPositionUs;

        @UnstableApi
        public long durationUs;
        public long elapsedRealtimeEpochOffsetMs;
        public int firstPeriodIndex;
        public boolean isDynamic;
        public boolean isPlaceholder;
        public boolean isSeekable;
        public int lastPeriodIndex;
        public MediaItem.LiveConfiguration liveConfiguration;
        public Object manifest;

        @UnstableApi
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @UnstableApi
        @Deprecated
        public Object tag;
        public long windowStartTimeMs;
        public static final Object SINGLE_WINDOW_UID = new Object();
        private static final Object FAKE_WINDOW_UID = new Object();
        private static final MediaItem PLACEHOLDER_MEDIA_ITEM = new MediaItem.Builder().setMediaId("androidx.media3.common.Timeline").setUri(Uri.EMPTY).build();
        private static final String FIELD_MEDIA_ITEM = Util.intToStringMaxRadix(1);
        private static final String FIELD_PRESENTATION_START_TIME_MS = Util.intToStringMaxRadix(2);
        private static final String FIELD_WINDOW_START_TIME_MS = Util.intToStringMaxRadix(3);
        private static final String FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS = Util.intToStringMaxRadix(4);
        private static final String FIELD_IS_SEEKABLE = Util.intToStringMaxRadix(5);
        private static final String FIELD_IS_DYNAMIC = Util.intToStringMaxRadix(6);
        private static final String FIELD_LIVE_CONFIGURATION = Util.intToStringMaxRadix(7);
        private static final String FIELD_IS_PLACEHOLDER = Util.intToStringMaxRadix(8);
        private static final String FIELD_DEFAULT_POSITION_US = Util.intToStringMaxRadix(9);
        private static final String FIELD_DURATION_US = Util.intToStringMaxRadix(10);
        private static final String FIELD_FIRST_PERIOD_INDEX = Util.intToStringMaxRadix(11);
        private static final String FIELD_LAST_PERIOD_INDEX = Util.intToStringMaxRadix(12);
        private static final String FIELD_POSITION_IN_FIRST_PERIOD_US = Util.intToStringMaxRadix(13);
        public Object uid = SINGLE_WINDOW_UID;
        public MediaItem mediaItem = PLACEHOLDER_MEDIA_ITEM;

        @UnstableApi
        public static Window fromBundle(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(FIELD_MEDIA_ITEM);
            MediaItem fromBundle = bundle2 != null ? MediaItem.fromBundle(bundle2) : MediaItem.EMPTY;
            long j7 = bundle.getLong(FIELD_PRESENTATION_START_TIME_MS, C.TIME_UNSET);
            long j8 = bundle.getLong(FIELD_WINDOW_START_TIME_MS, C.TIME_UNSET);
            long j9 = bundle.getLong(FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS, C.TIME_UNSET);
            boolean z6 = bundle.getBoolean(FIELD_IS_SEEKABLE, false);
            boolean z7 = bundle.getBoolean(FIELD_IS_DYNAMIC, false);
            Bundle bundle3 = bundle.getBundle(FIELD_LIVE_CONFIGURATION);
            MediaItem.LiveConfiguration fromBundle2 = bundle3 != null ? MediaItem.LiveConfiguration.fromBundle(bundle3) : null;
            boolean z8 = bundle.getBoolean(FIELD_IS_PLACEHOLDER, false);
            long j10 = bundle.getLong(FIELD_DEFAULT_POSITION_US, 0L);
            long j11 = bundle.getLong(FIELD_DURATION_US, C.TIME_UNSET);
            int i2 = bundle.getInt(FIELD_FIRST_PERIOD_INDEX, 0);
            int i7 = bundle.getInt(FIELD_LAST_PERIOD_INDEX, 0);
            long j12 = bundle.getLong(FIELD_POSITION_IN_FIRST_PERIOD_US, 0L);
            Window window = new Window();
            window.set(FAKE_WINDOW_UID, fromBundle, null, j7, j8, j9, z6, z7, fromBundle2, j10, j11, i2, i7, j12);
            window.isPlaceholder = z8;
            return window;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Window.class.equals(obj.getClass())) {
                Window window = (Window) obj;
                if (Objects.equals(this.uid, window.uid) && Objects.equals(this.mediaItem, window.mediaItem) && Objects.equals(this.manifest, window.manifest) && Objects.equals(this.liveConfiguration, window.liveConfiguration) && this.presentationStartTimeMs == window.presentationStartTimeMs && this.windowStartTimeMs == window.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == window.elapsedRealtimeEpochOffsetMs && this.isSeekable == window.isSeekable && this.isDynamic == window.isDynamic && this.isPlaceholder == window.isPlaceholder && this.defaultPositionUs == window.defaultPositionUs && this.durationUs == window.durationUs && this.firstPeriodIndex == window.firstPeriodIndex && this.lastPeriodIndex == window.lastPeriodIndex && this.positionInFirstPeriodUs == window.positionInFirstPeriodUs) {
                    return true;
                }
            }
            return false;
        }

        public long getCurrentUnixTimeMs() {
            return Util.getNowUnixTimeMs(this.elapsedRealtimeEpochOffsetMs);
        }

        public long getDefaultPositionMs() {
            return Util.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return Util.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }

        public int hashCode() {
            int hashCode = (this.mediaItem.hashCode() + ((this.uid.hashCode() + 217) * 31)) * 31;
            Object obj = this.manifest;
            int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int hashCode3 = (hashCode2 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j7 = this.presentationStartTimeMs;
            int i2 = (hashCode3 + ((int) (j7 ^ (j7 >>> 32)))) * 31;
            long j8 = this.windowStartTimeMs;
            int i7 = (i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
            long j9 = this.elapsedRealtimeEpochOffsetMs;
            int i8 = (((((((i7 + ((int) (j9 ^ (j9 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31) + (this.isPlaceholder ? 1 : 0)) * 31;
            long j10 = this.defaultPositionUs;
            int i9 = (i8 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.durationUs;
            int i10 = (((((i9 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.firstPeriodIndex) * 31) + this.lastPeriodIndex) * 31;
            long j12 = this.positionInFirstPeriodUs;
            return i10 + ((int) (j12 ^ (j12 >>> 32)));
        }

        public boolean isLive() {
            return this.liveConfiguration != null;
        }

        @UnstableApi
        public Window set(Object obj, MediaItem mediaItem, Object obj2, long j7, long j8, long j9, boolean z6, boolean z7, MediaItem.LiveConfiguration liveConfiguration, long j10, long j11, int i2, int i7, long j12) {
            MediaItem.LocalConfiguration localConfiguration;
            this.uid = obj;
            this.mediaItem = mediaItem != null ? mediaItem : PLACEHOLDER_MEDIA_ITEM;
            this.tag = (mediaItem == null || (localConfiguration = mediaItem.localConfiguration) == null) ? null : localConfiguration.tag;
            this.manifest = obj2;
            this.presentationStartTimeMs = j7;
            this.windowStartTimeMs = j8;
            this.elapsedRealtimeEpochOffsetMs = j9;
            this.isSeekable = z6;
            this.isDynamic = z7;
            this.liveConfiguration = liveConfiguration;
            this.defaultPositionUs = j10;
            this.durationUs = j11;
            this.firstPeriodIndex = i2;
            this.lastPeriodIndex = i7;
            this.positionInFirstPeriodUs = j12;
            this.isPlaceholder = false;
            return this;
        }

        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (!MediaItem.EMPTY.equals(this.mediaItem)) {
                bundle.putBundle(FIELD_MEDIA_ITEM, this.mediaItem.toBundle());
            }
            long j7 = this.presentationStartTimeMs;
            if (j7 != C.TIME_UNSET) {
                bundle.putLong(FIELD_PRESENTATION_START_TIME_MS, j7);
            }
            long j8 = this.windowStartTimeMs;
            if (j8 != C.TIME_UNSET) {
                bundle.putLong(FIELD_WINDOW_START_TIME_MS, j8);
            }
            long j9 = this.elapsedRealtimeEpochOffsetMs;
            if (j9 != C.TIME_UNSET) {
                bundle.putLong(FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS, j9);
            }
            boolean z6 = this.isSeekable;
            if (z6) {
                bundle.putBoolean(FIELD_IS_SEEKABLE, z6);
            }
            boolean z7 = this.isDynamic;
            if (z7) {
                bundle.putBoolean(FIELD_IS_DYNAMIC, z7);
            }
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            if (liveConfiguration != null) {
                bundle.putBundle(FIELD_LIVE_CONFIGURATION, liveConfiguration.toBundle());
            }
            boolean z8 = this.isPlaceholder;
            if (z8) {
                bundle.putBoolean(FIELD_IS_PLACEHOLDER, z8);
            }
            long j10 = this.defaultPositionUs;
            if (j10 != 0) {
                bundle.putLong(FIELD_DEFAULT_POSITION_US, j10);
            }
            long j11 = this.durationUs;
            if (j11 != C.TIME_UNSET) {
                bundle.putLong(FIELD_DURATION_US, j11);
            }
            int i2 = this.firstPeriodIndex;
            if (i2 != 0) {
                bundle.putInt(FIELD_FIRST_PERIOD_INDEX, i2);
            }
            int i7 = this.lastPeriodIndex;
            if (i7 != 0) {
                bundle.putInt(FIELD_LAST_PERIOD_INDEX, i7);
            }
            long j12 = this.positionInFirstPeriodUs;
            if (j12 != 0) {
                bundle.putLong(FIELD_POSITION_IN_FIRST_PERIOD_US, j12);
            }
            return bundle;
        }
    }

    @UnstableApi
    public Timeline() {
    }

    @UnstableApi
    public static Timeline fromBundle(Bundle bundle) {
        ImmutableList fromBundleListRetriever = fromBundleListRetriever(new P0.y(12), bundle.getBinder(FIELD_WINDOWS));
        ImmutableList fromBundleListRetriever2 = fromBundleListRetriever(new P0.y(13), bundle.getBinder(FIELD_PERIODS));
        int[] intArray = bundle.getIntArray(FIELD_SHUFFLED_WINDOW_INDICES);
        if (intArray == null) {
            intArray = generateUnshuffledIndices(fromBundleListRetriever.size());
        }
        return new RemotableTimeline(fromBundleListRetriever, fromBundleListRetriever2, intArray);
    }

    private static <T> ImmutableList<T> fromBundleListRetriever(P3.p pVar, IBinder iBinder) {
        return iBinder == null ? ImmutableList.of() : BundleCollectionUtil.fromBundleList(pVar, BundleListRetriever.getList(iBinder));
    }

    private static int[] generateUnshuffledIndices(int i2) {
        int[] iArr = new int[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            iArr[i7] = i7;
        }
        return iArr;
    }

    @UnstableApi
    public final Timeline copyWithSingleWindow(int i2) {
        if (getWindowCount() == 1) {
            return this;
        }
        Window window = getWindow(i2, new Window(), 0L);
        C0248s builder = ImmutableList.builder();
        int i7 = window.firstPeriodIndex;
        while (true) {
            int i8 = window.lastPeriodIndex;
            if (i7 > i8) {
                window.lastPeriodIndex = i8 - window.firstPeriodIndex;
                window.firstPeriodIndex = 0;
                return new RemotableTimeline(ImmutableList.of(window), builder.build(), new int[]{0});
            }
            Period period = getPeriod(i7, new Period(), true);
            period.windowIndex = 0;
            builder.add((Object) period);
            i7++;
        }
    }

    public boolean equals(Object obj) {
        int lastWindowIndex;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.getWindowCount() != getWindowCount() || timeline.getPeriodCount() != getPeriodCount()) {
            return false;
        }
        Window window = new Window();
        Period period = new Period();
        Window window2 = new Window();
        Period period2 = new Period();
        for (int i2 = 0; i2 < getWindowCount(); i2++) {
            if (!getWindow(i2, window).equals(timeline.getWindow(i2, window2))) {
                return false;
            }
        }
        for (int i7 = 0; i7 < getPeriodCount(); i7++) {
            if (!getPeriod(i7, period, true).equals(timeline.getPeriod(i7, period2, true))) {
                return false;
            }
        }
        int firstWindowIndex = getFirstWindowIndex(true);
        if (firstWindowIndex != timeline.getFirstWindowIndex(true) || (lastWindowIndex = getLastWindowIndex(true)) != timeline.getLastWindowIndex(true)) {
            return false;
        }
        while (firstWindowIndex != lastWindowIndex) {
            int nextWindowIndex = getNextWindowIndex(firstWindowIndex, 0, true);
            if (nextWindowIndex != timeline.getNextWindowIndex(firstWindowIndex, 0, true)) {
                return false;
            }
            firstWindowIndex = nextWindowIndex;
        }
        return true;
    }

    public int getFirstWindowIndex(boolean z6) {
        return isEmpty() ? -1 : 0;
    }

    public abstract int getIndexOfPeriod(Object obj);

    public int getLastWindowIndex(boolean z6) {
        if (isEmpty()) {
            return -1;
        }
        return getWindowCount() - 1;
    }

    public final int getNextPeriodIndex(int i2, Period period, Window window, int i7, boolean z6) {
        int i8 = getPeriod(i2, period).windowIndex;
        if (getWindow(i8, window).lastPeriodIndex != i2) {
            return i2 + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i8, i7, z6);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public int getNextWindowIndex(int i2, int i7, boolean z6) {
        if (i7 == 0) {
            if (i2 == getLastWindowIndex(z6)) {
                return -1;
            }
            return i2 + 1;
        }
        if (i7 == 1) {
            return i2;
        }
        if (i7 == 2) {
            return i2 == getLastWindowIndex(z6) ? getFirstWindowIndex(z6) : i2 + 1;
        }
        throw new IllegalStateException();
    }

    public final Period getPeriod(int i2, Period period) {
        return getPeriod(i2, period, false);
    }

    public abstract Period getPeriod(int i2, Period period, boolean z6);

    public Period getPeriodByUid(Object obj, Period period) {
        return getPeriod(getIndexOfPeriod(obj), period, true);
    }

    public abstract int getPeriodCount();

    @UnstableApi
    @Deprecated
    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i2, long j7) {
        return getPeriodPositionUs(window, period, i2, j7);
    }

    public final Pair<Object, Long> getPeriodPositionUs(Window window, Period period, int i2, long j7) {
        return (Pair) P3.v.checkNotNull(getPeriodPositionUs(window, period, i2, j7, 0L));
    }

    public int getPreviousWindowIndex(int i2, int i7, boolean z6) {
        if (i7 == 0) {
            if (i2 == getFirstWindowIndex(z6)) {
                return -1;
            }
            return i2 - 1;
        }
        if (i7 == 1) {
            return i2;
        }
        if (i7 == 2) {
            return i2 == getFirstWindowIndex(z6) ? getLastWindowIndex(z6) : i2 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object getUidOfPeriod(int i2);

    public final Window getWindow(int i2, Window window) {
        return getWindow(i2, window, 0L);
    }

    public abstract Window getWindow(int i2, Window window, long j7);

    public abstract int getWindowCount();

    public int hashCode() {
        Window window = new Window();
        Period period = new Period();
        int windowCount = getWindowCount() + 217;
        for (int i2 = 0; i2 < getWindowCount(); i2++) {
            windowCount = (windowCount * 31) + getWindow(i2, window).hashCode();
        }
        int periodCount = getPeriodCount() + (windowCount * 31);
        for (int i7 = 0; i7 < getPeriodCount(); i7++) {
            periodCount = (periodCount * 31) + getPeriod(i7, period, true).hashCode();
        }
        int firstWindowIndex = getFirstWindowIndex(true);
        while (firstWindowIndex != -1) {
            periodCount = (periodCount * 31) + firstWindowIndex;
            firstWindowIndex = getNextWindowIndex(firstWindowIndex, 0, true);
        }
        return periodCount;
    }

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public final boolean isLastPeriod(int i2, Period period, Window window, int i7, boolean z6) {
        return getNextPeriodIndex(i2, period, window, i7, z6) == -1;
    }

    @UnstableApi
    public final Bundle toBundle() {
        ArrayList arrayList = new ArrayList();
        int windowCount = getWindowCount();
        Window window = new Window();
        for (int i2 = 0; i2 < windowCount; i2++) {
            arrayList.add(getWindow(i2, window, 0L).toBundle());
        }
        ArrayList arrayList2 = new ArrayList();
        int periodCount = getPeriodCount();
        Period period = new Period();
        for (int i7 = 0; i7 < periodCount; i7++) {
            arrayList2.add(getPeriod(i7, period, false).toBundle());
        }
        int[] iArr = new int[windowCount];
        if (windowCount > 0) {
            iArr[0] = getFirstWindowIndex(true);
        }
        for (int i8 = 1; i8 < windowCount; i8++) {
            iArr[i8] = getNextWindowIndex(iArr[i8 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        bundle.putBinder(FIELD_WINDOWS, new BundleListRetriever(arrayList));
        bundle.putBinder(FIELD_PERIODS, new BundleListRetriever(arrayList2));
        bundle.putIntArray(FIELD_SHUFFLED_WINDOW_INDICES, iArr);
        return bundle;
    }

    @UnstableApi
    @Deprecated
    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i2, long j7, long j8) {
        return getPeriodPositionUs(window, period, i2, j7, j8);
    }

    public final Pair<Object, Long> getPeriodPositionUs(Window window, Period period, int i2, long j7, long j8) {
        P3.v.checkElementIndex(i2, getWindowCount());
        getWindow(i2, window, j8);
        if (j7 == C.TIME_UNSET) {
            j7 = window.getDefaultPositionUs();
            if (j7 == C.TIME_UNSET) {
                return null;
            }
        }
        int i7 = window.firstPeriodIndex;
        getPeriod(i7, period);
        while (i7 < window.lastPeriodIndex && period.positionInWindowUs != j7) {
            int i8 = i7 + 1;
            if (getPeriod(i8, period).positionInWindowUs > j7) {
                break;
            }
            i7 = i8;
        }
        getPeriod(i7, period, true);
        long j9 = j7 - period.positionInWindowUs;
        long j10 = period.durationUs;
        if (j10 != C.TIME_UNSET) {
            j9 = Math.min(j9, j10 - 1);
        }
        return Pair.create(P3.v.checkNotNull(period.uid), Long.valueOf(Math.max(0L, j9)));
    }
}
