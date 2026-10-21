package androidx.media3.common.audio;

import P3.v;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.SpeedProviderUtil;
import androidx.media3.common.util.TimestampConsumer;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Queue;

@UnstableApi
/* loaded from: classes.dex */
public final class SpeedChangingAudioProcessor implements AudioProcessor {
    private float currentSpeed;
    private boolean endOfStreamQueuedToSonic;
    private long framesRead;
    private AudioProcessor.AudioFormat inputAudioFormat;
    private boolean inputEnded;
    private final Object lock;
    private final LongArrayQueue pendingCallbackInputTimesUs;
    private final Queue<TimestampConsumer> pendingCallbacks;
    private AudioProcessor.AudioFormat pendingInputAudioFormat;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat;
    private final SynchronizedSonicAudioProcessor sonicAudioProcessor;
    private final SpeedProvider speedProvider;

    public SpeedChangingAudioProcessor(SpeedProvider speedProvider) {
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.speedProvider = speedProvider;
        Object obj = new Object();
        this.lock = obj;
        this.sonicAudioProcessor = new SynchronizedSonicAudioProcessor(obj, true);
        this.pendingCallbackInputTimesUs = new LongArrayQueue();
        this.pendingCallbacks = new ArrayDeque();
        this.currentSpeed = 1.0f;
    }

    private static long getDurationUsAfterProcessorApplied(SpeedProvider speedProvider, int i2, long j7) {
        return Util.sampleCountToDurationUs(getSampleCountAfterProcessorApplied(speedProvider, i2, Util.scaleLargeValue(j7, i2, 1000000L, RoundingMode.HALF_EVEN)), i2);
    }

    public static long getInputFrameCountForOutput(SpeedProvider speedProvider, int i2, long j7) {
        int i7 = i2;
        v.checkArgument(i7 > 0);
        v.checkArgument(j7 >= 0);
        long j8 = j7;
        long j9 = 0;
        while (j8 > 0) {
            long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(speedProvider, j9, i2);
            float sampleAlignedSpeed = SpeedProviderUtil.getSampleAlignedSpeed(speedProvider, j9, i2);
            long expectedFrameCountAfterProcessorApplied = Sonic.getExpectedFrameCountAfterProcessorApplied(i7, i2, sampleAlignedSpeed, sampleAlignedSpeed, nextSpeedChangeSamplePosition - j9);
            if (nextSpeedChangeSamplePosition == -1 || expectedFrameCountAfterProcessorApplied > j8) {
                j9 += Sonic.getExpectedInputFrameCountForOutputFrameCount(i2, i2, sampleAlignedSpeed, sampleAlignedSpeed, j8);
                j8 = 0;
            } else {
                j8 -= expectedFrameCountAfterProcessorApplied;
                j9 = nextSpeedChangeSamplePosition;
            }
            i7 = i2;
        }
        return j9;
    }

    public static long getSampleCountAfterProcessorApplied(SpeedProvider speedProvider, int i2, long j7) {
        v.checkArgument(speedProvider != null);
        v.checkArgument(i2 > 0);
        long j8 = 0;
        v.checkArgument(j7 >= 0);
        long j9 = 0;
        while (j8 < j7) {
            long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(speedProvider, j8, i2);
            if (nextSpeedChangeSamplePosition == -1 || nextSpeedChangeSamplePosition > j7) {
                nextSpeedChangeSamplePosition = j7;
            }
            float sampleAlignedSpeed = SpeedProviderUtil.getSampleAlignedSpeed(speedProvider, j8, i2);
            j9 += Sonic.getExpectedFrameCountAfterProcessorApplied(i2, i2, sampleAlignedSpeed, sampleAlignedSpeed, nextSpeedChangeSamplePosition - j8);
            j8 = nextSpeedChangeSamplePosition;
        }
        return j9;
    }

    private void processPendingCallbacks() {
        synchronized (this.lock) {
            try {
                if (this.inputAudioFormat.sampleRate == -1) {
                    return;
                }
                while (!this.pendingCallbacks.isEmpty()) {
                    this.pendingCallbacks.remove().onTimestamp(getDurationUsAfterProcessorApplied(this.speedProvider, this.inputAudioFormat.sampleRate, this.pendingCallbackInputTimesUs.remove()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void resetInternalState(boolean z6) {
        if (z6) {
            this.currentSpeed = 1.0f;
        }
        this.framesRead = 0L;
        this.endOfStreamQueuedToSonic = false;
    }

    private void updateSpeed(float f3) {
        if (f3 != this.currentSpeed) {
            this.currentSpeed = f3;
            this.sonicAudioProcessor.setSpeed(f3);
            this.sonicAudioProcessor.setPitch(f3);
            this.sonicAudioProcessor.flush(AudioProcessor.StreamMetadata.DEFAULT);
            this.endOfStreamQueuedToSonic = false;
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        this.pendingInputAudioFormat = audioFormat;
        AudioProcessor.AudioFormat configure = this.sonicAudioProcessor.configure(audioFormat);
        this.pendingOutputAudioFormat = configure;
        return configure;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final /* synthetic */ void flush() {
        e.a(this);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public long getDurationAfterProcessorApplied(long j7) {
        return SpeedProviderUtil.getDurationAfterSpeedProviderApplied(this.speedProvider, j7);
    }

    public long getMediaDurationUs(long j7) {
        int i2;
        synchronized (this.lock) {
            i2 = this.inputAudioFormat.sampleRate;
        }
        if (i2 == -1) {
            return j7;
        }
        return Util.sampleCountToDurationUs(getInputFrameCountForOutput(this.speedProvider, i2, Util.scaleLargeValue(j7, i2, 1000000L, RoundingMode.HALF_EVEN)), i2);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        return this.sonicAudioProcessor.getOutput();
    }

    public void getSpeedAdjustedTimeAsync(long j7, TimestampConsumer timestampConsumer) {
        synchronized (this.lock) {
            try {
                int i2 = this.inputAudioFormat.sampleRate;
                if (i2 != -1) {
                    timestampConsumer.onTimestamp(getDurationUsAfterProcessorApplied(this.speedProvider, i2, j7));
                } else {
                    this.pendingCallbackInputTimesUs.add(j7);
                    this.pendingCallbacks.add(timestampConsumer);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public SpeedProvider getSpeedProvider() {
        return this.speedProvider;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return !this.pendingOutputAudioFormat.equals(AudioProcessor.AudioFormat.NOT_SET);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && this.sonicAudioProcessor.isEnded();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        this.inputEnded = true;
        if (this.endOfStreamQueuedToSonic) {
            return;
        }
        this.sonicAudioProcessor.queueEndOfStream();
        this.endOfStreamQueuedToSonic = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        AudioProcessor.AudioFormat audioFormat;
        int i2;
        synchronized (this.lock) {
            audioFormat = this.inputAudioFormat;
        }
        float sampleAlignedSpeed = SpeedProviderUtil.getSampleAlignedSpeed(this.speedProvider, this.framesRead, audioFormat.sampleRate);
        long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(this.speedProvider, this.framesRead, audioFormat.sampleRate);
        updateSpeed(sampleAlignedSpeed);
        int limit = byteBuffer.limit();
        if (nextSpeedChangeSamplePosition != -1) {
            i2 = (int) ((nextSpeedChangeSamplePosition - this.framesRead) * audioFormat.bytesPerFrame);
            byteBuffer.limit(Math.min(limit, byteBuffer.position() + i2));
        } else {
            i2 = -1;
        }
        long position = byteBuffer.position();
        this.sonicAudioProcessor.queueInput(byteBuffer);
        if (i2 != -1 && byteBuffer.position() - position == i2) {
            this.sonicAudioProcessor.queueEndOfStream();
            this.endOfStreamQueuedToSonic = true;
        }
        long position2 = byteBuffer.position() - position;
        v.checkState(position2 % ((long) audioFormat.bytesPerFrame) == 0, "A frame was not queued completely.");
        this.framesRead = (position2 / audioFormat.bytesPerFrame) + this.framesRead;
        byteBuffer.limit(limit);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void reset() {
        flush(AudioProcessor.StreamMetadata.DEFAULT);
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        synchronized (this.lock) {
            this.inputAudioFormat = audioFormat;
            this.pendingCallbackInputTimesUs.clear();
            this.pendingCallbacks.clear();
        }
        resetInternalState(true);
        this.sonicAudioProcessor.reset();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void flush(AudioProcessor.StreamMetadata streamMetadata) {
        this.inputEnded = false;
        resetInternalState(false);
        synchronized (this.lock) {
            this.inputAudioFormat = this.pendingInputAudioFormat;
            this.sonicAudioProcessor.flush(streamMetadata);
            processPendingCallbacks();
            this.framesRead = Util.durationUsToSampleCount(streamMetadata.positionOffsetUs, this.inputAudioFormat.sampleRate);
        }
    }
}
