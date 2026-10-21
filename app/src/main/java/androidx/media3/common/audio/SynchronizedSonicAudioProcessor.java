package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
class SynchronizedSonicAudioProcessor implements AudioProcessor {
    private final Object lock;
    private final SonicAudioProcessor sonicAudioProcessor;

    public SynchronizedSonicAudioProcessor(Object obj, boolean z6) {
        this.lock = obj;
        this.sonicAudioProcessor = new SonicAudioProcessor(z6);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        AudioProcessor.AudioFormat configure;
        synchronized (this.lock) {
            configure = this.sonicAudioProcessor.configure(audioFormat);
        }
        return configure;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final /* synthetic */ void flush() {
        e.a(this);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public long getDurationAfterProcessorApplied(long j7) {
        return getPlayoutDuration(j7);
    }

    public final long getMediaDuration(long j7) {
        long mediaDuration;
        synchronized (this.lock) {
            mediaDuration = this.sonicAudioProcessor.getMediaDuration(j7);
        }
        return mediaDuration;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final ByteBuffer getOutput() {
        ByteBuffer output;
        synchronized (this.lock) {
            output = this.sonicAudioProcessor.getOutput();
        }
        return output;
    }

    public final long getPlayoutDuration(long j7) {
        long playoutDuration;
        synchronized (this.lock) {
            playoutDuration = this.sonicAudioProcessor.getPlayoutDuration(j7);
        }
        return playoutDuration;
    }

    public final long getProcessedInputBytes() {
        long processedInputBytes;
        synchronized (this.lock) {
            processedInputBytes = this.sonicAudioProcessor.getProcessedInputBytes();
        }
        return processedInputBytes;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final boolean isActive() {
        boolean isActive;
        synchronized (this.lock) {
            isActive = this.sonicAudioProcessor.isActive();
        }
        return isActive;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final boolean isEnded() {
        boolean isEnded;
        synchronized (this.lock) {
            isEnded = this.sonicAudioProcessor.isEnded();
        }
        return isEnded;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void queueEndOfStream() {
        synchronized (this.lock) {
            this.sonicAudioProcessor.queueEndOfStream();
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void queueInput(ByteBuffer byteBuffer) {
        synchronized (this.lock) {
            this.sonicAudioProcessor.queueInput(byteBuffer);
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void reset() {
        synchronized (this.lock) {
            this.sonicAudioProcessor.reset();
        }
    }

    public final void setOutputSampleRateHz(int i2) {
        synchronized (this.lock) {
            this.sonicAudioProcessor.setOutputSampleRateHz(i2);
        }
    }

    public final void setPitch(float f3) {
        synchronized (this.lock) {
            this.sonicAudioProcessor.setPitch(f3);
        }
    }

    public final void setSpeed(float f3) {
        synchronized (this.lock) {
            this.sonicAudioProcessor.setSpeed(f3);
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void flush(AudioProcessor.StreamMetadata streamMetadata) {
        synchronized (this.lock) {
            this.sonicAudioProcessor.flush(streamMetadata);
        }
    }
}
