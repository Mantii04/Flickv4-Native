package androidx.media3.exoplayer.dash;

import androidx.media3.common.C;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import v0.r;

@UnstableApi
/* loaded from: classes.dex */
public final class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final r chunkIndex;
    private final long timeOffsetUs;

    public DashWrappingSegmentIndex(r rVar, long j7) {
        this.chunkIndex = rVar;
        this.timeOffsetUs = j7;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getAvailableSegmentCount(long j7, long j8) {
        return this.chunkIndex.f20517a;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getDurationUs(long j7, long j8) {
        return this.chunkIndex.f20520d[(int) j7];
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getFirstAvailableSegmentNum(long j7, long j8) {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getFirstSegmentNum() {
        return 0L;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getNextSegmentAvailableTimeUs(long j7, long j8) {
        return C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getSegmentCount(long j7) {
        return this.chunkIndex.f20517a;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getSegmentNum(long j7, long j8) {
        return this.chunkIndex.getChunkIndex(j7 + this.timeOffsetUs);
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(long j7) {
        return new RangedUri(null, this.chunkIndex.f20519c[(int) j7], r1.f20518b[r7]);
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public long getTimeUs(long j7) {
        return this.chunkIndex.f20521e[(int) j7] - this.timeOffsetUs;
    }

    @Override // androidx.media3.exoplayer.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }
}
