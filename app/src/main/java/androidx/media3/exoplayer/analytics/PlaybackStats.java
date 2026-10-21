package androidx.media3.exoplayer.analytics;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.util.Collections;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public final class PlaybackStats {
    public static final PlaybackStats EMPTY = merge(new PlaybackStats[0]);
    public static final int PLAYBACK_STATE_ABANDONED = 15;
    public static final int PLAYBACK_STATE_BUFFERING = 6;
    static final int PLAYBACK_STATE_COUNT = 16;
    public static final int PLAYBACK_STATE_ENDED = 11;
    public static final int PLAYBACK_STATE_FAILED = 13;
    public static final int PLAYBACK_STATE_INTERRUPTED_BY_AD = 14;
    public static final int PLAYBACK_STATE_JOINING_BACKGROUND = 1;
    public static final int PLAYBACK_STATE_JOINING_FOREGROUND = 2;
    public static final int PLAYBACK_STATE_NOT_STARTED = 0;
    public static final int PLAYBACK_STATE_PAUSED = 4;
    public static final int PLAYBACK_STATE_PAUSED_BUFFERING = 7;
    public static final int PLAYBACK_STATE_PLAYING = 3;
    public static final int PLAYBACK_STATE_SEEKING = 5;
    public static final int PLAYBACK_STATE_STOPPED = 12;
    public static final int PLAYBACK_STATE_SUPPRESSED = 9;
    public static final int PLAYBACK_STATE_SUPPRESSED_BUFFERING = 10;
    public final int abandonedBeforeReadyCount;
    public final int adPlaybackCount;
    public final List<EventTimeAndFormat> audioFormatHistory;
    public final int backgroundJoiningCount;
    public final int endedCount;
    public final int fatalErrorCount;
    public final List<EventTimeAndException> fatalErrorHistory;
    public final int fatalErrorPlaybackCount;
    public final long firstReportedTimeMs;
    public final int foregroundPlaybackCount;
    public final int initialAudioFormatBitrateCount;
    public final int initialVideoFormatBitrateCount;
    public final int initialVideoFormatHeightCount;
    public final long maxRebufferTimeMs;
    public final List<long[]> mediaTimeHistory;
    public final int nonFatalErrorCount;
    public final List<EventTimeAndException> nonFatalErrorHistory;
    public final int playbackCount;
    private final long[] playbackStateDurationsMs;
    public final List<EventTimeAndPlaybackState> playbackStateHistory;
    public final long totalAudioFormatBitrateTimeProduct;
    public final long totalAudioFormatTimeMs;
    public final long totalAudioUnderruns;
    public final long totalBandwidthBytes;
    public final long totalBandwidthTimeMs;
    public final long totalDroppedFrames;
    public final long totalInitialAudioFormatBitrate;
    public final long totalInitialVideoFormatBitrate;
    public final int totalInitialVideoFormatHeight;
    public final int totalPauseBufferCount;
    public final int totalPauseCount;
    public final int totalRebufferCount;
    public final int totalSeekCount;
    public final long totalValidJoinTimeMs;
    public final long totalVideoFormatBitrateTimeMs;
    public final long totalVideoFormatBitrateTimeProduct;
    public final long totalVideoFormatHeightTimeMs;
    public final long totalVideoFormatHeightTimeProduct;
    public final int validJoinTimeCount;
    public final List<EventTimeAndFormat> videoFormatHistory;

    public static final class EventTimeAndException {
        public final AnalyticsListener.EventTime eventTime;
        public final Exception exception;

        public EventTimeAndException(AnalyticsListener.EventTime eventTime, Exception exc) {
            this.eventTime = eventTime;
            this.exception = exc;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndException.class != obj.getClass()) {
                return false;
            }
            EventTimeAndException eventTimeAndException = (EventTimeAndException) obj;
            if (this.eventTime.equals(eventTimeAndException.eventTime)) {
                return this.exception.equals(eventTimeAndException.exception);
            }
            return false;
        }

        public int hashCode() {
            return this.exception.hashCode() + (this.eventTime.hashCode() * 31);
        }
    }

    public static final class EventTimeAndFormat {
        public final AnalyticsListener.EventTime eventTime;
        public final Format format;

        public EventTimeAndFormat(AnalyticsListener.EventTime eventTime, Format format) {
            this.eventTime = eventTime;
            this.format = format;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && EventTimeAndFormat.class == obj.getClass()) {
                EventTimeAndFormat eventTimeAndFormat = (EventTimeAndFormat) obj;
                if (!this.eventTime.equals(eventTimeAndFormat.eventTime)) {
                    return false;
                }
                Format format = this.format;
                Format format2 = eventTimeAndFormat.format;
                if (format != null) {
                    return format.equals(format2);
                }
                if (format2 == null) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.eventTime.hashCode() * 31;
            Format format = this.format;
            return hashCode + (format != null ? format.hashCode() : 0);
        }
    }

    public static final class EventTimeAndPlaybackState {
        public final AnalyticsListener.EventTime eventTime;
        public final int playbackState;

        public EventTimeAndPlaybackState(AnalyticsListener.EventTime eventTime, int i2) {
            this.eventTime = eventTime;
            this.playbackState = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndPlaybackState.class != obj.getClass()) {
                return false;
            }
            EventTimeAndPlaybackState eventTimeAndPlaybackState = (EventTimeAndPlaybackState) obj;
            if (this.playbackState != eventTimeAndPlaybackState.playbackState) {
                return false;
            }
            return this.eventTime.equals(eventTimeAndPlaybackState.eventTime);
        }

        public int hashCode() {
            return (this.eventTime.hashCode() * 31) + this.playbackState;
        }
    }

    public PlaybackStats(int i2, long[] jArr, List<EventTimeAndPlaybackState> list, List<long[]> list2, long j7, int i7, int i8, int i9, int i10, long j8, int i11, int i12, int i13, int i14, int i15, long j9, int i16, List<EventTimeAndFormat> list3, List<EventTimeAndFormat> list4, long j10, long j11, long j12, long j13, long j14, long j15, int i17, int i18, int i19, long j16, int i20, long j17, long j18, long j19, long j20, long j21, int i21, int i22, int i23, List<EventTimeAndException> list5, List<EventTimeAndException> list6) {
        this.playbackCount = i2;
        this.playbackStateDurationsMs = jArr;
        this.playbackStateHistory = Collections.unmodifiableList(list);
        this.mediaTimeHistory = Collections.unmodifiableList(list2);
        this.firstReportedTimeMs = j7;
        this.foregroundPlaybackCount = i7;
        this.abandonedBeforeReadyCount = i8;
        this.endedCount = i9;
        this.backgroundJoiningCount = i10;
        this.totalValidJoinTimeMs = j8;
        this.validJoinTimeCount = i11;
        this.totalPauseCount = i12;
        this.totalPauseBufferCount = i13;
        this.totalSeekCount = i14;
        this.totalRebufferCount = i15;
        this.maxRebufferTimeMs = j9;
        this.adPlaybackCount = i16;
        this.videoFormatHistory = Collections.unmodifiableList(list3);
        this.audioFormatHistory = Collections.unmodifiableList(list4);
        this.totalVideoFormatHeightTimeMs = j10;
        this.totalVideoFormatHeightTimeProduct = j11;
        this.totalVideoFormatBitrateTimeMs = j12;
        this.totalVideoFormatBitrateTimeProduct = j13;
        this.totalAudioFormatTimeMs = j14;
        this.totalAudioFormatBitrateTimeProduct = j15;
        this.initialVideoFormatHeightCount = i17;
        this.initialVideoFormatBitrateCount = i18;
        this.totalInitialVideoFormatHeight = i19;
        this.totalInitialVideoFormatBitrate = j16;
        this.initialAudioFormatBitrateCount = i20;
        this.totalInitialAudioFormatBitrate = j17;
        this.totalBandwidthTimeMs = j18;
        this.totalBandwidthBytes = j19;
        this.totalDroppedFrames = j20;
        this.totalAudioUnderruns = j21;
        this.fatalErrorPlaybackCount = i21;
        this.fatalErrorCount = i22;
        this.nonFatalErrorCount = i23;
        this.fatalErrorHistory = Collections.unmodifiableList(list5);
        this.nonFatalErrorHistory = Collections.unmodifiableList(list6);
    }

    public static PlaybackStats merge(PlaybackStats... playbackStatsArr) {
        PlaybackStats[] playbackStatsArr2 = playbackStatsArr;
        int i2 = 16;
        long[] jArr = new long[16];
        int length = playbackStatsArr2.length;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = -1;
        long j18 = -1;
        long j19 = -1;
        long j20 = C.TIME_UNSET;
        int i22 = -1;
        long j21 = C.TIME_UNSET;
        long j22 = C.TIME_UNSET;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        while (i23 < length) {
            long j23 = j17;
            PlaybackStats playbackStats = playbackStatsArr2[i23];
            i7 += playbackStats.playbackCount;
            int i26 = 0;
            while (i26 < i2) {
                jArr[i26] = jArr[i26] + playbackStats.playbackStateDurationsMs[i26];
                i26++;
                i2 = 16;
            }
            if (j21 == C.TIME_UNSET) {
                j21 = playbackStats.firstReportedTimeMs;
            } else {
                long j24 = playbackStats.firstReportedTimeMs;
                if (j24 != C.TIME_UNSET) {
                    j21 = Math.min(j21, j24);
                }
            }
            i8 += playbackStats.foregroundPlaybackCount;
            i24 += playbackStats.abandonedBeforeReadyCount;
            i25 += playbackStats.endedCount;
            i9 += playbackStats.backgroundJoiningCount;
            if (j22 == C.TIME_UNSET) {
                j22 = playbackStats.totalValidJoinTimeMs;
            } else {
                long j25 = playbackStats.totalValidJoinTimeMs;
                if (j25 != C.TIME_UNSET) {
                    j22 += j25;
                }
            }
            i10 += playbackStats.validJoinTimeCount;
            i11 += playbackStats.totalPauseCount;
            i12 += playbackStats.totalPauseBufferCount;
            i13 += playbackStats.totalSeekCount;
            i14 += playbackStats.totalRebufferCount;
            if (j20 == C.TIME_UNSET) {
                j20 = playbackStats.maxRebufferTimeMs;
            } else {
                long j26 = playbackStats.maxRebufferTimeMs;
                if (j26 != C.TIME_UNSET) {
                    j20 = Math.max(j20, j26);
                }
            }
            i15 += playbackStats.adPlaybackCount;
            j7 += playbackStats.totalVideoFormatHeightTimeMs;
            j8 += playbackStats.totalVideoFormatHeightTimeProduct;
            j9 += playbackStats.totalVideoFormatBitrateTimeMs;
            j10 += playbackStats.totalVideoFormatBitrateTimeProduct;
            j11 += playbackStats.totalAudioFormatTimeMs;
            j12 += playbackStats.totalAudioFormatBitrateTimeProduct;
            i16 += playbackStats.initialVideoFormatHeightCount;
            i17 += playbackStats.initialVideoFormatBitrateCount;
            if (i22 == -1) {
                i22 = playbackStats.totalInitialVideoFormatHeight;
            } else {
                int i27 = playbackStats.totalInitialVideoFormatHeight;
                if (i27 != -1) {
                    i22 += i27;
                }
            }
            if (j18 == j23) {
                j18 = playbackStats.totalInitialVideoFormatBitrate;
            } else {
                long j27 = playbackStats.totalInitialVideoFormatBitrate;
                if (j27 != j23) {
                    j18 += j27;
                }
            }
            i18 += playbackStats.initialAudioFormatBitrateCount;
            if (j19 == j23) {
                j19 = playbackStats.totalInitialAudioFormatBitrate;
            } else {
                long j28 = playbackStats.totalInitialAudioFormatBitrate;
                if (j28 != j23) {
                    j19 += j28;
                }
            }
            j13 += playbackStats.totalBandwidthTimeMs;
            j14 += playbackStats.totalBandwidthBytes;
            j15 += playbackStats.totalDroppedFrames;
            j16 += playbackStats.totalAudioUnderruns;
            i19 += playbackStats.fatalErrorPlaybackCount;
            i20 += playbackStats.fatalErrorCount;
            i21 += playbackStats.nonFatalErrorCount;
            i23++;
            playbackStatsArr2 = playbackStatsArr;
            j17 = j23;
            i2 = 16;
        }
        long j29 = j20;
        List list = Collections.EMPTY_LIST;
        return new PlaybackStats(i7, jArr, list, list, j21, i8, i24, i25, i9, j22, i10, i11, i12, i13, i14, j29, i15, list, list, j7, j8, j9, j10, j11, j12, i16, i17, i22, j18, i18, j19, j13, j14, j15, j16, i19, i20, i21, list, list);
    }

    public float getAbandonedBeforeReadyRatio() {
        int i2 = this.abandonedBeforeReadyCount;
        int i7 = this.playbackCount;
        int i8 = this.foregroundPlaybackCount;
        int i9 = i2 - (i7 - i8);
        if (i8 == 0) {
            return 0.0f;
        }
        return i9 / i8;
    }

    public float getAudioUnderrunRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.totalAudioUnderruns * 1000.0f) / totalPlayTimeMs;
    }

    public float getDroppedFramesRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.totalDroppedFrames * 1000.0f) / totalPlayTimeMs;
    }

    public float getEndedRatio() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.endedCount / i2;
    }

    public float getFatalErrorRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.fatalErrorCount * 1000.0f) / totalPlayTimeMs;
    }

    public float getFatalErrorRatio() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.fatalErrorPlaybackCount / i2;
    }

    public float getJoinTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalJoinTimeMs() / totalPlayAndWaitTimeMs;
    }

    public int getMeanAudioFormatBitrate() {
        long j7 = this.totalAudioFormatTimeMs;
        if (j7 == 0) {
            return -1;
        }
        return (int) (this.totalAudioFormatBitrateTimeProduct / j7);
    }

    public int getMeanBandwidth() {
        long j7 = this.totalBandwidthTimeMs;
        if (j7 == 0) {
            return -1;
        }
        return (int) ((this.totalBandwidthBytes * 8000) / j7);
    }

    public long getMeanElapsedTimeMs() {
        return this.playbackCount == 0 ? C.TIME_UNSET : getTotalElapsedTimeMs() / this.playbackCount;
    }

    public int getMeanInitialAudioFormatBitrate() {
        int i2 = this.initialAudioFormatBitrateCount;
        if (i2 == 0) {
            return -1;
        }
        return (int) (this.totalInitialAudioFormatBitrate / i2);
    }

    public int getMeanInitialVideoFormatBitrate() {
        int i2 = this.initialVideoFormatBitrateCount;
        if (i2 == 0) {
            return -1;
        }
        return (int) (this.totalInitialVideoFormatBitrate / i2);
    }

    public int getMeanInitialVideoFormatHeight() {
        int i2 = this.initialVideoFormatHeightCount;
        if (i2 == 0) {
            return -1;
        }
        return this.totalInitialVideoFormatHeight / i2;
    }

    public long getMeanJoinTimeMs() {
        int i2 = this.validJoinTimeCount;
        return i2 == 0 ? C.TIME_UNSET : this.totalValidJoinTimeMs / i2;
    }

    public float getMeanNonFatalErrorCount() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.nonFatalErrorCount / i2;
    }

    public float getMeanPauseBufferCount() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.totalPauseBufferCount / i2;
    }

    public float getMeanPauseCount() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.totalPauseCount / i2;
    }

    public long getMeanPausedTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalPausedTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanPlayAndWaitTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalPlayAndWaitTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanPlayTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalPlayTimeMs() / this.foregroundPlaybackCount;
    }

    public float getMeanRebufferCount() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.totalRebufferCount / i2;
    }

    public long getMeanRebufferTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalRebufferTimeMs() / this.foregroundPlaybackCount;
    }

    public float getMeanSeekCount() {
        int i2 = this.foregroundPlaybackCount;
        if (i2 == 0) {
            return 0.0f;
        }
        return this.totalSeekCount / i2;
    }

    public long getMeanSeekTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalSeekTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanSingleRebufferTimeMs() {
        if (this.totalRebufferCount == 0) {
            return C.TIME_UNSET;
        }
        return (getPlaybackStateDurationMs(7) + getPlaybackStateDurationMs(6)) / this.totalRebufferCount;
    }

    public long getMeanSingleSeekTimeMs() {
        return this.totalSeekCount == 0 ? C.TIME_UNSET : getTotalSeekTimeMs() / this.totalSeekCount;
    }

    public float getMeanTimeBetweenFatalErrors() {
        return 1.0f / getFatalErrorRate();
    }

    public float getMeanTimeBetweenNonFatalErrors() {
        return 1.0f / getNonFatalErrorRate();
    }

    public float getMeanTimeBetweenRebuffers() {
        return 1.0f / getRebufferRate();
    }

    public int getMeanVideoFormatBitrate() {
        long j7 = this.totalVideoFormatBitrateTimeMs;
        if (j7 == 0) {
            return -1;
        }
        return (int) (this.totalVideoFormatBitrateTimeProduct / j7);
    }

    public int getMeanVideoFormatHeight() {
        long j7 = this.totalVideoFormatHeightTimeMs;
        if (j7 == 0) {
            return -1;
        }
        return (int) (this.totalVideoFormatHeightTimeProduct / j7);
    }

    public long getMeanWaitTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalWaitTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMediaTimeMsAtRealtimeMs(long j7) {
        if (this.mediaTimeHistory.isEmpty()) {
            return C.TIME_UNSET;
        }
        int i2 = 0;
        while (i2 < this.mediaTimeHistory.size() && this.mediaTimeHistory.get(i2)[0] <= j7) {
            i2++;
        }
        if (i2 == 0) {
            return this.mediaTimeHistory.get(0)[1];
        }
        if (i2 == this.mediaTimeHistory.size()) {
            return ((long[]) A.i.c(1, this.mediaTimeHistory))[1];
        }
        int i7 = i2 - 1;
        long j8 = this.mediaTimeHistory.get(i7)[0];
        long j9 = this.mediaTimeHistory.get(i7)[1];
        long j10 = this.mediaTimeHistory.get(i2)[0];
        long j11 = this.mediaTimeHistory.get(i2)[1];
        long j12 = j10 - j8;
        if (j12 == 0) {
            return j9;
        }
        return j9 + ((long) ((j11 - j9) * ((j7 - j8) / j12)));
    }

    public float getNonFatalErrorRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.nonFatalErrorCount * 1000.0f) / totalPlayTimeMs;
    }

    public int getPlaybackStateAtTime(long j7) {
        int i2 = 0;
        for (EventTimeAndPlaybackState eventTimeAndPlaybackState : this.playbackStateHistory) {
            if (eventTimeAndPlaybackState.eventTime.realtimeMs > j7) {
                break;
            }
            i2 = eventTimeAndPlaybackState.playbackState;
        }
        return i2;
    }

    public long getPlaybackStateDurationMs(int i2) {
        return this.playbackStateDurationsMs[i2];
    }

    public float getRebufferRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.totalRebufferCount * 1000.0f) / totalPlayTimeMs;
    }

    public float getRebufferTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalRebufferTimeMs() / totalPlayAndWaitTimeMs;
    }

    public float getSeekTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalSeekTimeMs() / totalPlayAndWaitTimeMs;
    }

    public long getTotalElapsedTimeMs() {
        long j7 = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            j7 += this.playbackStateDurationsMs[i2];
        }
        return j7;
    }

    public long getTotalJoinTimeMs() {
        return getPlaybackStateDurationMs(2);
    }

    public long getTotalPausedTimeMs() {
        return getPlaybackStateDurationMs(7) + getPlaybackStateDurationMs(4);
    }

    public long getTotalPlayAndWaitTimeMs() {
        return getTotalWaitTimeMs() + getTotalPlayTimeMs();
    }

    public long getTotalPlayTimeMs() {
        return getPlaybackStateDurationMs(3);
    }

    public long getTotalRebufferTimeMs() {
        return getPlaybackStateDurationMs(6);
    }

    public long getTotalSeekTimeMs() {
        return getPlaybackStateDurationMs(5);
    }

    public long getTotalWaitTimeMs() {
        return getPlaybackStateDurationMs(5) + getPlaybackStateDurationMs(6) + getPlaybackStateDurationMs(2);
    }

    public float getWaitTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalWaitTimeMs() / totalPlayAndWaitTimeMs;
    }
}
