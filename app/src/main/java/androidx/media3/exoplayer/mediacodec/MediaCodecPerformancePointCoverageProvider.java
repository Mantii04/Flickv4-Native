package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import android.os.Build;
import java.util.List;

/* loaded from: classes.dex */
final class MediaCodecPerformancePointCoverageProvider {
    static final int COVERAGE_RESULT_NO = 1;
    static final int COVERAGE_RESULT_NO_PERFORMANCE_POINTS_UNSUPPORTED = 0;
    static final int COVERAGE_RESULT_YES = 2;
    private static Boolean shouldIgnorePerformancePoints;

    public static final class Api29 {
        private Api29() {
        }

        public static int areResolutionAndFrameRateCovered(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i7, double d7) {
            List supportedPerformancePoints;
            supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
                return 0;
            }
            androidx.media3.exoplayer.audio.m.i();
            int evaluatePerformancePointCoverage = evaluatePerformancePointCoverage(supportedPerformancePoints, androidx.media3.exoplayer.audio.m.e(i2, i7, (int) d7));
            if (evaluatePerformancePointCoverage == 1 && MediaCodecPerformancePointCoverageProvider.shouldIgnorePerformancePoints == null) {
                Boolean unused = MediaCodecPerformancePointCoverageProvider.shouldIgnorePerformancePoints = Boolean.valueOf(shouldIgnorePerformancePoints());
                if (MediaCodecPerformancePointCoverageProvider.shouldIgnorePerformancePoints.booleanValue()) {
                    return 0;
                }
            }
            return evaluatePerformancePointCoverage;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        
            r2 = r2.getSupportedPerformancePoints();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int evaluateH264RequiredSupport(boolean r4) {
            /*
                r0 = 0
                androidx.media3.common.Format$Builder r1 = new androidx.media3.common.Format$Builder     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                r1.<init>()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                java.lang.String r2 = "video/avc"
                androidx.media3.common.Format$Builder r1 = r1.setSampleMimeType(r2)     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                androidx.media3.common.Format r1 = r1.build()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                java.lang.String r2 = r1.sampleMimeType     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                if (r2 == 0) goto L54
                androidx.media3.exoplayer.mediacodec.MediaCodecSelector r2 = androidx.media3.exoplayer.mediacodec.MediaCodecSelector.DEFAULT     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                java.util.List r4 = androidx.media3.exoplayer.mediacodec.MediaCodecUtil.getDecoderInfosSoftMatch(r2, r1, r4, r0)     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                r1 = r0
            L1b:
                int r2 = r4.size()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                if (r1 >= r2) goto L54
                java.lang.Object r2 = r4.get(r1)     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                androidx.media3.exoplayer.mediacodec.MediaCodecInfo r2 = (androidx.media3.exoplayer.mediacodec.MediaCodecInfo) r2     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                android.media.MediaCodecInfo$CodecCapabilities r2 = r2.capabilities     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                if (r2 == 0) goto L51
                java.lang.Object r2 = r4.get(r1)     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                androidx.media3.exoplayer.mediacodec.MediaCodecInfo r2 = (androidx.media3.exoplayer.mediacodec.MediaCodecInfo) r2     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                android.media.MediaCodecInfo$CodecCapabilities r2 = r2.capabilities     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                android.media.MediaCodecInfo$VideoCapabilities r2 = r2.getVideoCapabilities()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                if (r2 == 0) goto L51
                java.util.List r2 = androidx.media3.exoplayer.audio.m.g(r2)     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                if (r2 == 0) goto L51
                boolean r3 = r2.isEmpty()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                if (r3 != 0) goto L51
                androidx.media3.exoplayer.audio.m.i()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                android.media.MediaCodecInfo$VideoCapabilities$PerformancePoint r4 = androidx.media3.exoplayer.audio.m.d()     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                int r4 = evaluatePerformancePointCoverage(r2, r4)     // Catch: androidx.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L54
                return r4
            L51:
                int r1 = r1 + 1
                goto L1b
            L54:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecPerformancePointCoverageProvider.Api29.evaluateH264RequiredSupport(boolean):int");
        }

        private static int evaluatePerformancePointCoverage(List<MediaCodecInfo.VideoCapabilities.PerformancePoint> list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
            boolean covers;
            for (int i2 = 0; i2 < list.size(); i2++) {
                covers = androidx.media3.exoplayer.audio.m.f(list.get(i2)).covers(performancePoint);
                if (covers) {
                    return 2;
                }
            }
            return 1;
        }

        private static boolean shouldIgnorePerformancePoints() {
            int evaluateH264RequiredSupport = Build.VERSION.SDK_INT >= 35 ? 2 : evaluateH264RequiredSupport(false);
            int evaluateH264RequiredSupport2 = evaluateH264RequiredSupport(true);
            if (evaluateH264RequiredSupport == 0) {
                return true;
            }
            return evaluateH264RequiredSupport2 == 0 ? evaluateH264RequiredSupport != 2 : (evaluateH264RequiredSupport == 2 && evaluateH264RequiredSupport2 == 2) ? false : true;
        }
    }

    private MediaCodecPerformancePointCoverageProvider() {
    }

    public static int areResolutionAndFrameRateCovered(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i7, double d7) {
        if (Build.VERSION.SDK_INT < 29) {
            return 0;
        }
        Boolean bool = shouldIgnorePerformancePoints;
        if (bool == null || !bool.booleanValue()) {
            return Api29.areResolutionAndFrameRateCovered(videoCapabilities, i2, i7, d7);
        }
        return 0;
    }
}
