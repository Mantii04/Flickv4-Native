package androidx.media3.exoplayer.dash;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.dash.manifest.RangedUri;

@UnstableApi
/* loaded from: classes.dex */
public interface DashSegmentIndex {
    public static final int INDEX_UNBOUNDED = -1;

    long getAvailableSegmentCount(long j7, long j8);

    long getDurationUs(long j7, long j8);

    long getFirstAvailableSegmentNum(long j7, long j8);

    long getFirstSegmentNum();

    long getNextSegmentAvailableTimeUs(long j7, long j8);

    long getSegmentCount(long j7);

    long getSegmentNum(long j7, long j8);

    RangedUri getSegmentUrl(long j7);

    long getTimeUs(long j7);

    boolean isExplicit();
}
