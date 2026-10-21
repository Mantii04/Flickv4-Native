package androidx.media3.exoplayer.video;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;

/* loaded from: classes.dex */
final class VideoFrameRenderControl {
    private final FrameRenderer frameRenderer;
    private long outputStreamStartPositionUs;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
    private final TimedValueQueue<VideoSize> videoSizes = new TimedValueQueue<>();
    private final TimedValueQueue<Long> streamStartPositionsUs = new TimedValueQueue<>();
    private final LongArrayQueue presentationTimestampsUs = new LongArrayQueue();
    private long latestInputPresentationTimeUs = C.TIME_UNSET;
    private VideoSize outputVideoSize = VideoSize.UNKNOWN;
    private long latestOutputPresentationTimeUs = C.TIME_UNSET;
    private long lastPresentationTimeUs = C.TIME_UNSET;

    public interface FrameRenderer {
        void dropFrame();

        void onVideoSizeChanged(VideoSize videoSize);

        void renderFrame(long j7, long j8, boolean z6);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster) {
        this.frameRenderer = frameRenderer;
        this.videoFrameReleaseControl = videoFrameReleaseControl;
        this.videoFrameReleaseEarlyTimeForecaster = videoFrameReleaseEarlyTimeForecaster;
    }

    private void dropFrame() {
        this.presentationTimestampsUs.remove();
        this.frameRenderer.dropFrame();
    }

    private static <T> T getLastAndClear(TimedValueQueue<T> timedValueQueue) {
        v.checkArgument(timedValueQueue.size() > 0);
        while (timedValueQueue.size() > 1) {
            timedValueQueue.pollFirst();
        }
        return (T) v.checkNotNull(timedValueQueue.pollFirst());
    }

    private boolean maybeUpdateOutputStream(long j7) {
        Long pollFloor = this.streamStartPositionsUs.pollFloor(j7);
        if (pollFloor == null || pollFloor.longValue() == this.outputStreamStartPositionUs) {
            return false;
        }
        this.outputStreamStartPositionUs = pollFloor.longValue();
        return true;
    }

    private boolean maybeUpdateOutputVideoSize(long j7) {
        VideoSize pollFloor = this.videoSizes.pollFloor(j7);
        if (pollFloor == null || pollFloor.equals(VideoSize.UNKNOWN) || pollFloor.equals(this.outputVideoSize)) {
            return false;
        }
        this.outputVideoSize = pollFloor;
        return true;
    }

    private void renderFrame(boolean z6) {
        long remove = this.presentationTimestampsUs.remove();
        if (maybeUpdateOutputVideoSize(remove)) {
            this.frameRenderer.onVideoSizeChanged(this.outputVideoSize);
        }
        this.frameRenderer.renderFrame(z6 ? Clock.DEFAULT.nanoTime() : this.videoFrameReleaseInfo.getReleaseTimeNs(), remove, this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame());
    }

    public void flush() {
        this.presentationTimestampsUs.clear();
        this.latestInputPresentationTimeUs = C.TIME_UNSET;
        this.latestOutputPresentationTimeUs = C.TIME_UNSET;
        this.lastPresentationTimeUs = C.TIME_UNSET;
        if (this.streamStartPositionsUs.size() > 0) {
            this.outputStreamStartPositionUs = ((Long) getLastAndClear(this.streamStartPositionsUs)).longValue();
        }
        if (this.videoSizes.size() > 0) {
            this.videoSizes.add(0L, (VideoSize) getLastAndClear(this.videoSizes));
        }
    }

    public boolean isEnded() {
        long j7 = this.lastPresentationTimeUs;
        return j7 != C.TIME_UNSET && this.latestOutputPresentationTimeUs == j7;
    }

    public void onFrameAvailableForRendering(long j7) {
        this.presentationTimestampsUs.add(j7);
        this.latestInputPresentationTimeUs = j7;
        this.lastPresentationTimeUs = C.TIME_UNSET;
    }

    public void onStreamChanged(int i2, long j7) {
        if (this.presentationTimestampsUs.isEmpty()) {
            this.videoFrameReleaseControl.onStreamChanged(i2);
            this.outputStreamStartPositionUs = j7;
        } else {
            TimedValueQueue<Long> timedValueQueue = this.streamStartPositionsUs;
            long j8 = this.latestInputPresentationTimeUs;
            timedValueQueue.add(j8 == C.TIME_UNSET ? -4611686018427387904L : j8 + 1, Long.valueOf(j7));
        }
    }

    public void onVideoSizeChanged(int i2, int i7) {
        TimedValueQueue<VideoSize> timedValueQueue = this.videoSizes;
        long j7 = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j7 == C.TIME_UNSET ? 0L : j7 + 1, new VideoSize(i2, i7));
    }

    public void render(long j7, long j8) throws ExoPlaybackException {
        while (!this.presentationTimestampsUs.isEmpty()) {
            long element = this.presentationTimestampsUs.element();
            if (maybeUpdateOutputStream(element)) {
                this.videoFrameReleaseControl.onStreamChanged(2);
            }
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(element, j7, j8, this.outputStreamStartPositionUs, false, false, this.videoFrameReleaseInfo);
            if (frameReleaseAction != 5 && frameReleaseAction != 4) {
                this.videoFrameReleaseEarlyTimeForecaster.onVideoFrameProcessed(element, this.videoFrameReleaseInfo.getEarlyUs());
            }
            if (frameReleaseAction == 0 || frameReleaseAction == 1) {
                this.latestOutputPresentationTimeUs = element;
                renderFrame(frameReleaseAction == 0);
            } else if (frameReleaseAction == 2 || frameReleaseAction == 3) {
                this.latestOutputPresentationTimeUs = element;
                dropFrame();
            } else {
                if (frameReleaseAction != 4) {
                    if (frameReleaseAction != 5) {
                        throw new IllegalStateException(String.valueOf(frameReleaseAction));
                    }
                    return;
                }
                this.latestOutputPresentationTimeUs = element;
            }
        }
    }

    public void signalEndOfInput() {
        if (this.latestInputPresentationTimeUs == C.TIME_UNSET) {
            this.latestInputPresentationTimeUs = Long.MIN_VALUE;
            this.latestOutputPresentationTimeUs = Long.MIN_VALUE;
        }
        this.lastPresentationTimeUs = this.latestInputPresentationTimeUs;
    }
}
