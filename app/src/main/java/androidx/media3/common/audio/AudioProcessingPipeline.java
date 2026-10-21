package androidx.media3.common.audio;

import P3.v;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public final class AudioProcessingPipeline {
    private final ImmutableList<AudioProcessor> audioProcessors;
    private boolean inputEnded;
    private AudioProcessor.AudioFormat outputAudioFormat;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat;
    private final List<AudioProcessor> activeAudioProcessors = new ArrayList();
    private ByteBuffer[] outputBuffers = new ByteBuffer[0];

    public AudioProcessingPipeline(ImmutableList<AudioProcessor> immutableList) {
        this.audioProcessors = immutableList;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.outputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputEnded = false;
    }

    private int getFinalOutputBufferIndex() {
        return this.outputBuffers.length - 1;
    }

    private void processData(ByteBuffer byteBuffer) {
        boolean z6;
        for (boolean z7 = true; z7; z7 = z6) {
            z6 = false;
            int i2 = 0;
            while (i2 <= getFinalOutputBufferIndex()) {
                if (!this.outputBuffers[i2].hasRemaining()) {
                    AudioProcessor audioProcessor = this.activeAudioProcessors.get(i2);
                    if (!audioProcessor.isEnded()) {
                        ByteBuffer byteBuffer2 = i2 > 0 ? this.outputBuffers[i2 - 1] : byteBuffer.hasRemaining() ? byteBuffer : AudioProcessor.EMPTY_BUFFER;
                        long remaining = byteBuffer2.remaining();
                        audioProcessor.queueInput(byteBuffer2);
                        this.outputBuffers[i2] = audioProcessor.getOutput();
                        z6 |= remaining - ((long) byteBuffer2.remaining()) > 0 || this.outputBuffers[i2].hasRemaining();
                    } else if (!this.outputBuffers[i2].hasRemaining() && i2 < getFinalOutputBufferIndex()) {
                        this.activeAudioProcessors.get(i2 + 1).queueEndOfStream();
                    }
                }
                i2++;
            }
        }
    }

    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.equals(AudioProcessor.AudioFormat.NOT_SET)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        for (int i2 = 0; i2 < this.audioProcessors.size(); i2++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i2);
            AudioProcessor.AudioFormat configure = audioProcessor.configure(audioFormat);
            if (audioProcessor.isActive()) {
                v.checkState(!configure.equals(AudioProcessor.AudioFormat.NOT_SET));
                audioFormat = configure;
            }
        }
        this.pendingOutputAudioFormat = audioFormat;
        return audioFormat;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioProcessingPipeline)) {
            return false;
        }
        AudioProcessingPipeline audioProcessingPipeline = (AudioProcessingPipeline) obj;
        if (this.audioProcessors.size() != audioProcessingPipeline.audioProcessors.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.audioProcessors.size(); i2++) {
            if (this.audioProcessors.get(i2) != audioProcessingPipeline.audioProcessors.get(i2)) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public void flush() {
        flush(AudioProcessor.StreamMetadata.DEFAULT);
    }

    public ByteBuffer getOutput() {
        if (!isOperational()) {
            return AudioProcessor.EMPTY_BUFFER;
        }
        ByteBuffer byteBuffer = this.outputBuffers[getFinalOutputBufferIndex()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        processData(AudioProcessor.EMPTY_BUFFER);
        return this.outputBuffers[getFinalOutputBufferIndex()];
    }

    public AudioProcessor.AudioFormat getOutputAudioFormat() {
        return this.outputAudioFormat;
    }

    public int hashCode() {
        return this.audioProcessors.hashCode();
    }

    public boolean isEnded() {
        return this.inputEnded && this.activeAudioProcessors.get(getFinalOutputBufferIndex()).isEnded() && !this.outputBuffers[getFinalOutputBufferIndex()].hasRemaining();
    }

    public boolean isOperational() {
        return !this.activeAudioProcessors.isEmpty();
    }

    public void queueEndOfStream() {
        if (!isOperational() || this.inputEnded) {
            return;
        }
        this.inputEnded = true;
        this.activeAudioProcessors.get(0).queueEndOfStream();
    }

    public void queueInput(ByteBuffer byteBuffer) {
        if (!isOperational() || this.inputEnded) {
            return;
        }
        processData(byteBuffer);
    }

    public void reset() {
        for (int i2 = 0; i2 < this.audioProcessors.size(); i2++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i2);
            audioProcessor.flush(AudioProcessor.StreamMetadata.DEFAULT);
            audioProcessor.reset();
        }
        this.activeAudioProcessors.clear();
        this.outputBuffers = new ByteBuffer[0];
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.outputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputEnded = false;
    }

    public void flush(AudioProcessor.StreamMetadata streamMetadata) {
        this.activeAudioProcessors.clear();
        this.outputAudioFormat = this.pendingOutputAudioFormat;
        this.inputEnded = false;
        long j7 = streamMetadata.positionOffsetUs;
        for (int i2 = 0; i2 < this.audioProcessors.size(); i2++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i2);
            audioProcessor.flush(new AudioProcessor.StreamMetadata(j7));
            if (audioProcessor.isActive()) {
                j7 = audioProcessor.getDurationAfterProcessorApplied(j7);
                v.checkState(j7 >= 0);
                this.activeAudioProcessors.add(audioProcessor);
            }
        }
        this.outputBuffers = new ByteBuffer[this.activeAudioProcessors.size()];
        for (int i7 = 0; i7 <= getFinalOutputBufferIndex(); i7++) {
            this.outputBuffers[i7] = this.activeAudioProcessors.get(i7).getOutput();
        }
    }
}
