package androidx.media3.common.util;

import P3.v;
import androidx.media3.common.C;
import java.util.concurrent.TimeoutException;

@UnstableApi
/* loaded from: classes.dex */
public final class TimestampAdjuster {
    private static final long MAX_PTS_PLUS_ONE = 8589934592L;
    public static final long MODE_NO_OFFSET = Long.MAX_VALUE;
    public static final long MODE_SHARED = 9223372036854775806L;
    private long firstSampleTimestampUs;
    private long lastUnadjustedTimestampUs;
    private final ThreadLocal<Long> nextSampleTimestampUs = new ThreadLocal<>();
    private long timestampOffsetUs;

    public TimestampAdjuster(long j7) {
        reset(j7);
    }

    public static long ptsToUs(long j7) {
        return Util.scaleLargeTimestamp(j7, 1000000L, 90000L);
    }

    public static long usToNonWrappedPts(long j7) {
        return Util.scaleLargeTimestamp(j7, 90000L, 1000000L);
    }

    public static long usToWrappedPts(long j7) {
        return usToNonWrappedPts(j7) % MAX_PTS_PLUS_ONE;
    }

    public synchronized long adjustSampleTimestamp(long j7) {
        if (j7 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            if (!isInitialized()) {
                long j8 = this.firstSampleTimestampUs;
                if (j8 == MODE_SHARED) {
                    j8 = ((Long) v.checkNotNull(this.nextSampleTimestampUs.get())).longValue();
                }
                this.timestampOffsetUs = j8 - j7;
                notifyAll();
            }
            this.lastUnadjustedTimestampUs = j7;
            return j7 + this.timestampOffsetUs;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long adjustTsTimestamp(long j7) {
        if (j7 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        try {
            long j8 = this.lastUnadjustedTimestampUs;
            if (j8 != C.TIME_UNSET) {
                long usToNonWrappedPts = usToNonWrappedPts(j8);
                long j9 = (4294967296L + usToNonWrappedPts) / MAX_PTS_PLUS_ONE;
                long j10 = ((j9 - 1) * MAX_PTS_PLUS_ONE) + j7;
                long j11 = (j9 * MAX_PTS_PLUS_ONE) + j7;
                j7 = Math.abs(j10 - usToNonWrappedPts) < Math.abs(j11 - usToNonWrappedPts) ? j10 : j11;
            }
            return adjustSampleTimestamp(ptsToUs(j7));
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long adjustTsTimestampGreaterThanPreviousTimestamp(long j7) {
        if (j7 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j8 = this.lastUnadjustedTimestampUs;
        if (j8 != C.TIME_UNSET) {
            long usToNonWrappedPts = usToNonWrappedPts(j8);
            long j9 = usToNonWrappedPts / MAX_PTS_PLUS_ONE;
            Long.signum(j9);
            long j10 = (j9 * MAX_PTS_PLUS_ONE) + j7;
            j7 = j10 >= usToNonWrappedPts ? j10 : ((j9 + 1) * MAX_PTS_PLUS_ONE) + j7;
        }
        return adjustSampleTimestamp(ptsToUs(j7));
    }

    public synchronized long getFirstSampleTimestampUs() {
        long j7;
        j7 = this.firstSampleTimestampUs;
        if (j7 == Long.MAX_VALUE || j7 == MODE_SHARED) {
            j7 = C.TIME_UNSET;
        }
        return j7;
    }

    public synchronized long getLastAdjustedTimestampUs() {
        long j7;
        try {
            j7 = this.lastUnadjustedTimestampUs;
        } catch (Throwable th) {
            throw th;
        }
        return j7 != C.TIME_UNSET ? j7 + this.timestampOffsetUs : getFirstSampleTimestampUs();
    }

    public synchronized long getTimestampOffsetUs() {
        return this.timestampOffsetUs;
    }

    public synchronized boolean isInitialized() {
        return this.timestampOffsetUs != C.TIME_UNSET;
    }

    public synchronized void reset(long j7) {
        this.firstSampleTimestampUs = j7;
        this.timestampOffsetUs = j7 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.lastUnadjustedTimestampUs = C.TIME_UNSET;
    }

    public synchronized void sharedInitializeOrWait(boolean z6, long j7, long j8) throws InterruptedException, TimeoutException {
        try {
            v.checkState(this.firstSampleTimestampUs == MODE_SHARED);
            if (isInitialized()) {
                return;
            }
            if (z6) {
                this.nextSampleTimestampUs.set(Long.valueOf(j7));
            } else {
                long j9 = 0;
                long j10 = j8;
                while (!isInitialized()) {
                    if (j8 == 0) {
                        wait();
                    } else {
                        v.checkState(j10 > 0);
                        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                        wait(j10);
                        j9 += android.os.SystemClock.elapsedRealtime() - elapsedRealtime;
                        if (j9 >= j8 && !isInitialized()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j8 + " milliseconds");
                        }
                        j10 = j8 - j9;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
