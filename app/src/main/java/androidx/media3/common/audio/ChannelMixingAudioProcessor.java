package androidx.media3.common.audio;

import P3.v;
import android.util.SparseArray;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;

@UnstableApi
/* loaded from: classes.dex */
public final class ChannelMixingAudioProcessor extends BaseAudioProcessor {
    private final SparseArray<ChannelMixingMatrix> matrixByInputChannelCount = new SparseArray<>();

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (!AudioMixingUtil.canMix(audioFormat)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        ChannelMixingMatrix channelMixingMatrix = this.matrixByInputChannelCount.get(audioFormat.channelCount);
        if (channelMixingMatrix != null) {
            return channelMixingMatrix.isIdentity() ? AudioProcessor.AudioFormat.NOT_SET : new AudioProcessor.AudioFormat(audioFormat.sampleRate, channelMixingMatrix.getOutputChannelCount(), audioFormat.encoding);
        }
        throw new AudioProcessor.UnhandledAudioFormatException("No mixing matrix for input channel count", audioFormat);
    }

    public void putChannelMixingMatrix(ChannelMixingMatrix channelMixingMatrix) {
        this.matrixByInputChannelCount.put(channelMixingMatrix.getInputChannelCount(), channelMixingMatrix);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        ChannelMixingMatrix channelMixingMatrix = (ChannelMixingMatrix) v.checkNotNull(this.matrixByInputChannelCount.get(this.inputAudioFormat.channelCount));
        int remaining = byteBuffer.remaining() / this.inputAudioFormat.bytesPerFrame;
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(this.outputAudioFormat.bytesPerFrame * remaining);
        AudioMixingUtil.mix(byteBuffer, this.inputAudioFormat, replaceOutputBuffer, this.outputAudioFormat, channelMixingMatrix, remaining, false, true);
        replaceOutputBuffer.flip();
    }
}
