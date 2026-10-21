package androidx.media3.exoplayer.dash.manifest;

import S3.a;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public abstract class SegmentBase {
    final RangedUri initialization;
    final long presentationTimeOffset;
    final long timescale;

    public static abstract class MultiSegmentBase extends SegmentBase {
        final long availabilityTimeOffsetUs;
        final long duration;
        private final long periodStartUnixTimeUs;
        final List<SegmentTimelineElement> segmentTimeline;
        final long startNumber;
        private final long timeShiftBufferDepthUs;

        public MultiSegmentBase(RangedUri rangedUri, long j7, long j8, long j9, long j10, List<SegmentTimelineElement> list, long j11, long j12, long j13) {
            super(rangedUri, j7, j8);
            this.startNumber = j9;
            this.duration = j10;
            this.segmentTimeline = list;
            this.availabilityTimeOffsetUs = j11;
            this.timeShiftBufferDepthUs = j12;
            this.periodStartUnixTimeUs = j13;
        }

        public long getAvailableSegmentCount(long j7, long j8) {
            long segmentCount = getSegmentCount(j7);
            return segmentCount != -1 ? segmentCount : (int) (getSegmentNum((j8 - this.periodStartUnixTimeUs) + this.availabilityTimeOffsetUs, j7) - getFirstAvailableSegmentNum(j7, j8));
        }

        public long getFirstAvailableSegmentNum(long j7, long j8) {
            if (getSegmentCount(j7) == -1) {
                long j9 = this.timeShiftBufferDepthUs;
                if (j9 != C.TIME_UNSET) {
                    return Math.max(getFirstSegmentNum(), getSegmentNum((j8 - this.periodStartUnixTimeUs) - j9, j7));
                }
            }
            return getFirstSegmentNum();
        }

        public long getFirstSegmentNum() {
            return this.startNumber;
        }

        public long getNextSegmentAvailableTimeUs(long j7, long j8) {
            if (this.segmentTimeline != null) {
                return C.TIME_UNSET;
            }
            long availableSegmentCount = getAvailableSegmentCount(j7, j8) + getFirstAvailableSegmentNum(j7, j8);
            return (getSegmentDurationUs(availableSegmentCount, j7) + getSegmentTimeUs(availableSegmentCount)) - this.availabilityTimeOffsetUs;
        }

        public abstract long getSegmentCount(long j7);

        public final long getSegmentDurationUs(long j7, long j8) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            if (list != null) {
                return (list.get((int) (j7 - this.startNumber)).duration * 1000000) / this.timescale;
            }
            long segmentCount = getSegmentCount(j8);
            return (segmentCount == -1 || j7 != (getFirstSegmentNum() + segmentCount) - 1) ? (this.duration * 1000000) / this.timescale : j8 - getSegmentTimeUs(j7);
        }

        public long getSegmentNum(long j7, long j8) {
            long firstSegmentNum = getFirstSegmentNum();
            long segmentCount = getSegmentCount(j8);
            if (segmentCount != 0) {
                if (this.segmentTimeline != null) {
                    long j9 = (segmentCount + firstSegmentNum) - 1;
                    long j10 = firstSegmentNum;
                    while (j10 <= j9) {
                        long j11 = ((j9 - j10) / 2) + j10;
                        long segmentTimeUs = getSegmentTimeUs(j11);
                        if (segmentTimeUs < j7) {
                            j10 = j11 + 1;
                        } else {
                            if (segmentTimeUs <= j7) {
                                return j11;
                            }
                            j9 = j11 - 1;
                        }
                    }
                    return j10 == firstSegmentNum ? j10 : j9;
                }
                long j12 = (j7 / ((this.duration * 1000000) / this.timescale)) + this.startNumber;
                if (j12 >= firstSegmentNum) {
                    return segmentCount == -1 ? j12 : Math.min(j12, (firstSegmentNum + segmentCount) - 1);
                }
            }
            return firstSegmentNum;
        }

        public final long getSegmentTimeUs(long j7) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            return Util.scaleLargeTimestamp(list != null ? list.get((int) (j7 - this.startNumber)).startTime - this.presentationTimeOffset : (j7 - this.startNumber) * this.duration, 1000000L, this.timescale);
        }

        public abstract RangedUri getSegmentUrl(Representation representation, long j7);

        public boolean isExplicit() {
            return this.segmentTimeline != null;
        }
    }

    public static final class SegmentList extends MultiSegmentBase {
        final List<RangedUri> mediaSegments;

        public SegmentList(RangedUri rangedUri, long j7, long j8, long j9, long j10, List<SegmentTimelineElement> list, long j11, List<RangedUri> list2, long j12, long j13) {
            super(rangedUri, j7, j8, j9, j10, list, j11, j12, j13);
            this.mediaSegments = list2;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public long getSegmentCount(long j7) {
            return this.mediaSegments.size();
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, long j7) {
            return this.mediaSegments.get((int) (j7 - this.startNumber));
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public boolean isExplicit() {
            return true;
        }
    }

    public static final class SegmentTemplate extends MultiSegmentBase {
        final long endNumber;
        final UrlTemplate initializationTemplate;
        final UrlTemplate mediaTemplate;

        public SegmentTemplate(RangedUri rangedUri, long j7, long j8, long j9, long j10, long j11, List<SegmentTimelineElement> list, long j12, UrlTemplate urlTemplate, UrlTemplate urlTemplate2, long j13, long j14) {
            super(rangedUri, j7, j8, j9, j11, list, j12, j13, j14);
            this.initializationTemplate = urlTemplate;
            this.mediaTemplate = urlTemplate2;
            this.endNumber = j10;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase
        public RangedUri getInitialization(Representation representation) {
            UrlTemplate urlTemplate = this.initializationTemplate;
            if (urlTemplate == null) {
                return super.getInitialization(representation);
            }
            Format format = representation.format;
            return new RangedUri(urlTemplate.buildUri(format.id, 0L, format.bitrate, 0L), 0L, -1L);
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public long getSegmentCount(long j7) {
            if (this.segmentTimeline != null) {
                return r0.size();
            }
            long j8 = this.endNumber;
            if (j8 != -1) {
                return (j8 - this.startNumber) + 1;
            }
            if (j7 != C.TIME_UNSET) {
                return a.divide(BigInteger.valueOf(j7).multiply(BigInteger.valueOf(this.timescale)), BigInteger.valueOf(this.duration).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri getSegmentUrl(Representation representation, long j7) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            long j8 = list != null ? list.get((int) (j7 - this.startNumber)).startTime : (j7 - this.startNumber) * this.duration;
            UrlTemplate urlTemplate = this.mediaTemplate;
            Format format = representation.format;
            return new RangedUri(urlTemplate.buildUri(format.id, j7, format.bitrate, j8), 0L, -1L);
        }
    }

    public static final class SegmentTimelineElement {
        final long duration;
        final long startTime;

        public SegmentTimelineElement(long j7, long j8) {
            this.startTime = j7;
            this.duration = j8;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SegmentTimelineElement.class == obj.getClass()) {
                SegmentTimelineElement segmentTimelineElement = (SegmentTimelineElement) obj;
                if (this.startTime == segmentTimelineElement.startTime && this.duration == segmentTimelineElement.duration) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.startTime) * 31) + ((int) this.duration);
        }
    }

    public SegmentBase(RangedUri rangedUri, long j7, long j8) {
        this.initialization = rangedUri;
        this.timescale = j7;
        this.presentationTimeOffset = j8;
    }

    public RangedUri getInitialization(Representation representation) {
        return this.initialization;
    }

    public long getPresentationTimeOffsetUs() {
        return Util.scaleLargeTimestamp(this.presentationTimeOffset, 1000000L, this.timescale);
    }

    public static class SingleSegmentBase extends SegmentBase {
        final long indexLength;
        final long indexStart;

        public SingleSegmentBase(RangedUri rangedUri, long j7, long j8, long j9, long j10) {
            super(rangedUri, j7, j8);
            this.indexStart = j9;
            this.indexLength = j10;
        }

        public RangedUri getIndex() {
            long j7 = this.indexLength;
            if (j7 <= 0) {
                return null;
            }
            return new RangedUri(null, this.indexStart, j7);
        }

        public SingleSegmentBase() {
            this(null, 1L, 0L, 0L, 0L);
        }
    }
}
