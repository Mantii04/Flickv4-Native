package androidx.media3.exoplayer.video;

import P3.v;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Choreographer$VsyncCallback;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

@UnstableApi
/* loaded from: classes.dex */
public final class VideoFrameReleaseHelper {
    private static final long MAX_ALLOWED_ADJUSTMENT_NS = 20000000;
    private static final int MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE = 30;
    private static final long MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS = 5000000000L;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE = 0.1f;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE = 1.0f;
    private static final String TAG = "VideoFrameReleaseHelper";
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    public static final long VSYNC_SAMPLE_UPDATE_PERIOD_MS = 500;
    private final Context context;
    private long frameIndex;
    private long lastAdjustedFrameIndex;
    private long lastAdjustedPresentationTimeUs;
    private long lastAdjustedReleaseTimeNs;
    private long lastVsyncHysteresisOffsetNs;
    private long pendingLastAdjustedFrameIndex;
    private long pendingLastAdjustedReleaseTimeNs;
    private long pendingLastPresentationTimeUs;
    private long pendingVsyncHysteresisOffsetNs;
    private boolean started;
    private Surface surface;
    private float surfaceMediaFrameRate;
    private float surfacePlaybackFrameRate;
    private boolean vsyncSampleBuilt;
    private VSyncSampler vsyncSampler;
    private final FixedFrameRateEstimator frameRateEstimator = new FixedFrameRateEstimator();
    private float formatFrameRate = -1.0f;
    private float playbackSpeed = 1.0f;
    private int changeFrameRateStrategy = 0;

    public static final class Api30 {
        private Api30() {
        }

        public static void setSurfaceFrameRate(Surface surface, float f3) {
            try {
                surface.setFrameRate(f3, f3 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e3) {
                Log.e(VideoFrameReleaseHelper.TAG, "Failed to call Surface.setFrameRate", e3);
            }
        }
    }

    public static abstract class VSyncSampler implements DisplayManager.DisplayListener {
        final Choreographer choreographer;
        final DisplayManager displayManager;
        volatile long sampledVsyncTimeNs;
        volatile long vsyncDurationNs;

        /* JADX INFO: Access modifiers changed from: private */
        public static VSyncSampler maybeBuildInstance(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                return null;
            }
            try {
                Choreographer choreographer = Choreographer.getInstance();
                return Build.VERSION.SDK_INT >= 33 ? new VSyncSamplerV33(choreographer, displayManager) : new VSyncSamplerBase(choreographer, displayManager);
            } catch (RuntimeException e3) {
                Log.w(VideoFrameReleaseHelper.TAG, "Vsync sampling disabled due to platform error", e3);
                return null;
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i2) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i2) {
        }

        public void register() {
            this.displayManager.registerDisplayListener(this, Util.createHandlerForCurrentLooper());
        }

        public void unregister() {
            this.displayManager.unregisterDisplayListener(this);
        }

        private VSyncSampler(Choreographer choreographer, DisplayManager displayManager) {
            this.choreographer = choreographer;
            this.displayManager = displayManager;
            this.sampledVsyncTimeNs = C.TIME_UNSET;
            this.vsyncDurationNs = C.TIME_UNSET;
        }
    }

    public static final class VSyncSamplerBase extends VSyncSampler implements Choreographer.FrameCallback {
        private static long getVsyncDurationNsFromDefaultDisplay(DisplayManager displayManager) {
            if (displayManager.getDisplay(0) != null) {
                return (long) (1.0E9d / r4.getRefreshRate());
            }
            Log.w(VideoFrameReleaseHelper.TAG, "Unable to query display refresh rate");
            return C.TIME_UNSET;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j7) {
            this.sampledVsyncTimeNs = j7;
            this.choreographer.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i2) {
            if (i2 == 0) {
                this.choreographer.postFrameCallback(this);
                this.vsyncDurationNs = getVsyncDurationNsFromDefaultDisplay(this.displayManager);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void register() {
            super.register();
            this.choreographer.postFrameCallback(this);
            this.vsyncDurationNs = getVsyncDurationNsFromDefaultDisplay(this.displayManager);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void unregister() {
            super.unregister();
            this.choreographer.removeFrameCallback(this);
            this.sampledVsyncTimeNs = C.TIME_UNSET;
            this.vsyncDurationNs = C.TIME_UNSET;
        }

        private VSyncSamplerBase(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
        }
    }

    public static final class VSyncSamplerV33 extends VSyncSampler implements Choreographer$VsyncCallback {
        private final Handler handler;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onVsync$0() {
            this.choreographer.postVsyncCallback(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i2) {
            if (i2 == 0) {
                this.choreographer.postVsyncCallback(this);
            }
        }

        public void onVsync(Choreographer.FrameData frameData) {
            long frameTimeNanos;
            Choreographer.FrameTimeline[] frameTimelines;
            long expectedPresentationTimeNanos;
            long expectedPresentationTimeNanos2;
            frameTimeNanos = frameData.getFrameTimeNanos();
            this.sampledVsyncTimeNs = frameTimeNanos;
            frameTimelines = frameData.getFrameTimelines();
            int length = frameTimelines.length;
            long j7 = C.TIME_UNSET;
            if (length >= 2) {
                expectedPresentationTimeNanos = frameTimelines[1].getExpectedPresentationTimeNanos();
                expectedPresentationTimeNanos2 = frameTimelines[0].getExpectedPresentationTimeNanos();
                long j8 = expectedPresentationTimeNanos - expectedPresentationTimeNanos2;
                if (j8 != 0) {
                    j7 = j8;
                }
                this.vsyncDurationNs = j7;
            } else {
                this.vsyncDurationNs = C.TIME_UNSET;
            }
            this.handler.postDelayed(new c(this, 1), 500L);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void register() {
            super.register();
            this.choreographer.postVsyncCallback(this);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public void unregister() {
            super.unregister();
            this.handler.removeCallbacksAndMessages(null);
            this.choreographer.removeVsyncCallback(this);
            this.sampledVsyncTimeNs = C.TIME_UNSET;
            this.vsyncDurationNs = C.TIME_UNSET;
        }

        private VSyncSamplerV33(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
            this.handler = Util.createHandlerForCurrentLooper();
        }
    }

    public VideoFrameReleaseHelper(Context context) {
        this.context = context;
    }

    private static boolean adjustmentAllowed(long j7, long j8) {
        return Math.abs(j7 - j8) <= MAX_ALLOWED_ADJUSTMENT_NS;
    }

    private void clearSurfaceFrameRate() {
        Surface surface;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || this.surfacePlaybackFrameRate == 0.0f || !surface.isValid()) {
            return;
        }
        this.surfacePlaybackFrameRate = 0.0f;
        Api30.setSurfaceFrameRate(this.surface, 0.0f);
    }

    private long findClosestVsyncAndUpdateHysteresis(long j7, long j8, long j9) {
        long j10;
        long j11 = (((j7 - j8) / j9) * j9) + j8;
        if (j7 <= j11) {
            j10 = j11 - j9;
        } else {
            j10 = j11;
            j11 += j9;
        }
        long j12 = j11 - j7;
        long j13 = j7 - j10;
        long abs = Math.abs(j12 - j13);
        if (abs < j9 / 2) {
            long j14 = j9 / 4;
            if (abs < j14) {
                long j15 = this.lastVsyncHysteresisOffsetNs;
                if (j15 != 0) {
                    this.pendingVsyncHysteresisOffsetNs = j15;
                } else {
                    if (j12 < j13) {
                        j14 = -j14;
                    }
                    this.pendingVsyncHysteresisOffsetNs = j14;
                }
            } else {
                this.pendingVsyncHysteresisOffsetNs = 0L;
            }
        } else {
            this.pendingVsyncHysteresisOffsetNs = this.lastVsyncHysteresisOffsetNs;
        }
        return j12 + this.pendingVsyncHysteresisOffsetNs < j13 ? j11 : j10;
    }

    private void resetAdjustment() {
        this.frameIndex = 0L;
        this.lastAdjustedFrameIndex = -1L;
        this.pendingLastAdjustedFrameIndex = -1L;
        this.lastVsyncHysteresisOffsetNs = 0L;
        this.pendingVsyncHysteresisOffsetNs = 0L;
    }

    private void updateSurfaceMediaFrameRate() {
        if (Build.VERSION.SDK_INT < 30 || this.surface == null) {
            return;
        }
        float frameRate = this.frameRateEstimator.isSynced() ? this.frameRateEstimator.getFrameRate() : this.formatFrameRate;
        float f3 = this.surfaceMediaFrameRate;
        if (frameRate == f3) {
            return;
        }
        if (frameRate != -1.0f && f3 != -1.0f) {
            if (Math.abs(frameRate - this.surfaceMediaFrameRate) < ((!this.frameRateEstimator.isSynced() || this.frameRateEstimator.getMatchingFrameDurationSumNs() < MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS) ? 1.0f : 0.1f)) {
                return;
            }
        } else if (frameRate == -1.0f && this.frameRateEstimator.getFramesWithoutSyncCount() < 30) {
            return;
        }
        this.surfaceMediaFrameRate = frameRate;
        updateSurfacePlaybackFrameRate(false);
    }

    private void updateSurfacePlaybackFrameRate(boolean z6) {
        Surface surface;
        float f3;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || !surface.isValid()) {
            return;
        }
        if (this.started) {
            float f7 = this.surfaceMediaFrameRate;
            if (f7 != -1.0f) {
                f3 = f7 * this.playbackSpeed;
                if (z6 && this.surfacePlaybackFrameRate == f3) {
                    return;
                }
                this.surfacePlaybackFrameRate = f3;
                Api30.setSurfaceFrameRate(this.surface, f3);
            }
        }
        f3 = 0.0f;
        if (z6) {
        }
        this.surfacePlaybackFrameRate = f3;
        Api30.setSurfaceFrameRate(this.surface, f3);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long adjustReleaseTime(long r12, long r14) {
        /*
            r11 = this;
            long r0 = r11.lastAdjustedFrameIndex
            r2 = -1
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L3b
            androidx.media3.exoplayer.video.FixedFrameRateEstimator r0 = r11.frameRateEstimator
            boolean r0 = r0.isSynced()
            if (r0 == 0) goto L22
            androidx.media3.exoplayer.video.FixedFrameRateEstimator r0 = r11.frameRateEstimator
            long r0 = r0.getFrameDurationNs()
            long r2 = r11.frameIndex
            long r4 = r11.lastAdjustedFrameIndex
            long r2 = r2 - r4
            long r2 = r2 * r0
            float r0 = (float) r2
            float r1 = r11.playbackSpeed
        L1f:
            float r0 = r0 / r1
            long r0 = (long) r0
            goto L2d
        L22:
            long r0 = r11.lastAdjustedPresentationTimeUs
            long r0 = r14 - r0
            r2 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r2
            float r0 = (float) r0
            float r1 = r11.playbackSpeed
            goto L1f
        L2d:
            long r2 = r11.lastAdjustedReleaseTimeNs
            long r2 = r2 + r0
            boolean r0 = adjustmentAllowed(r12, r2)
            if (r0 == 0) goto L38
            r5 = r2
            goto L3c
        L38:
            r11.resetAdjustment()
        L3b:
            r5 = r12
        L3c:
            long r12 = r11.frameIndex
            r11.pendingLastAdjustedFrameIndex = r12
            r11.pendingLastAdjustedReleaseTimeNs = r5
            r11.pendingLastPresentationTimeUs = r14
            androidx.media3.exoplayer.video.VideoFrameReleaseHelper$VSyncSampler r12 = r11.vsyncSampler
            if (r12 != 0) goto L49
            goto L6a
        L49:
            long r7 = r12.sampledVsyncTimeNs
            androidx.media3.exoplayer.video.VideoFrameReleaseHelper$VSyncSampler r12 = r11.vsyncSampler
            long r9 = r12.vsyncDurationNs
            r12 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r14 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r14 == 0) goto L6a
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 != 0) goto L5d
            goto L6a
        L5d:
            r4 = r11
            long r12 = r4.findClosestVsyncAndUpdateHysteresis(r5, r7, r9)
            r14 = 80
            long r9 = r9 * r14
            r14 = 100
            long r9 = r9 / r14
            long r12 = r12 - r9
            return r12
        L6a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.VideoFrameReleaseHelper.adjustReleaseTime(long, long):long");
    }

    public void onFormatChanged(float f3) {
        this.formatFrameRate = f3;
        this.frameRateEstimator.reset();
        updateSurfaceMediaFrameRate();
    }

    public void onNextFrame(long j7) {
        long j8 = this.pendingLastAdjustedFrameIndex;
        if (j8 != -1) {
            this.lastAdjustedFrameIndex = j8;
            this.lastAdjustedReleaseTimeNs = this.pendingLastAdjustedReleaseTimeNs;
            this.lastAdjustedPresentationTimeUs = this.pendingLastPresentationTimeUs;
            this.lastVsyncHysteresisOffsetNs = this.pendingVsyncHysteresisOffsetNs;
        }
        this.frameIndex++;
        this.frameRateEstimator.onNextFrame(j7 * 1000);
        updateSurfaceMediaFrameRate();
    }

    public void onPlaybackSpeed(float f3) {
        this.playbackSpeed = f3;
        updateSurfacePlaybackFrameRate(false);
    }

    public void onPositionReset() {
        resetAdjustment();
    }

    public void onStarted() {
        this.started = true;
        resetAdjustment();
        if (!this.vsyncSampleBuilt) {
            this.vsyncSampler = VSyncSampler.maybeBuildInstance(this.context);
        }
        VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler != null) {
            vSyncSampler.register();
        }
        updateSurfacePlaybackFrameRate(false);
    }

    public void onStopped() {
        this.started = false;
        VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler != null) {
            vSyncSampler.unregister();
        }
        clearSurfaceFrameRate();
    }

    public void onSurfaceChanged(Surface surface) {
        if (this.surface == surface) {
            return;
        }
        clearSurfaceFrameRate();
        this.surface = surface;
        updateSurfacePlaybackFrameRate(true);
    }

    public void setChangeFrameRateStrategy(int i2) {
        if (this.changeFrameRateStrategy == i2) {
            return;
        }
        this.changeFrameRateStrategy = i2;
        updateSurfacePlaybackFrameRate(true);
    }

    public void setVsyncData(long j7, long j8) {
        ((VSyncSampler) v.checkNotNull(this.vsyncSampler)).sampledVsyncTimeNs = j7;
        this.vsyncSampler.vsyncDurationNs = j8;
    }
}
