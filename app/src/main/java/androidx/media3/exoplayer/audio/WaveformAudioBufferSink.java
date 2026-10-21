package androidx.media3.exoplayer.audio;

import android.util.SparseArray;
import androidx.media3.common.audio.AudioMixingUtil;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.ChannelMixingMatrix;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.TeeAudioProcessor;
import java.nio.ByteBuffer;

@UnstableApi
/* loaded from: classes.dex */
public class WaveformAudioBufferSink implements TeeAudioProcessor.AudioBufferSink {
    private final int barsPerSecond;
    private ChannelMixingMatrix channelMixingMatrix;
    private AudioProcessor.AudioFormat inputAudioFormat;
    private final Listener listener;
    private AudioProcessor.AudioFormat mixingAudioFormat;
    private final ByteBuffer mixingBuffer;
    private final SparseArray<WaveformBar> outputChannels;
    private int samplesPerBar;

    public interface Listener {
        void onNewWaveformBar(int i2, WaveformBar waveformBar);
    }

    public static class WaveformBar {
        private int sampleCount;
        private double squareSum;
        private float minSampleValue = 1.0f;
        private float maxSampleValue = -1.0f;

        public void addSample(float f3) {
            P3.v.checkArgument(f3 >= -1.0f && f3 <= 1.0f);
            this.minSampleValue = Math.min(this.minSampleValue, f3);
            this.maxSampleValue = Math.max(this.maxSampleValue, f3);
            double d7 = f3;
            this.squareSum = (d7 * d7) + this.squareSum;
            this.sampleCount++;
        }

        public double getMaxSampleValue() {
            return this.maxSampleValue;
        }

        public double getMinSampleValue() {
            return this.minSampleValue;
        }

        public double getRootMeanSquare() {
            return Math.sqrt(this.squareSum / this.sampleCount);
        }

        public int getSampleCount() {
            return this.sampleCount;
        }
    }

    public WaveformAudioBufferSink(int i2, int i7, Listener listener) {
        this.barsPerSecond = i2;
        this.listener = listener;
        this.mixingBuffer = ByteBuffer.allocate(Util.getPcmFrameSize(4, i7));
        this.outputChannels = new SparseArray<>(i7);
        for (int i8 = 0; i8 < i7; i8++) {
            this.outputChannels.append(i8, new WaveformBar());
        }
    }

    @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
    public void flush(int i2, int i7, int i8) {
        this.samplesPerBar = i2 / this.barsPerSecond;
        this.inputAudioFormat = new AudioProcessor.AudioFormat(i2, i7, i8);
        this.mixingAudioFormat = new AudioProcessor.AudioFormat(i2, this.outputChannels.size(), 4);
        this.channelMixingMatrix = ChannelMixingMatrix.createForConstantGain(i7, this.outputChannels.size());
    }

    @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
    public void handleBuffer(ByteBuffer byteBuffer) {
        P3.v.checkNotNull(this.inputAudioFormat);
        P3.v.checkNotNull(this.mixingAudioFormat);
        P3.v.checkNotNull(this.channelMixingMatrix);
        while (byteBuffer.hasRemaining()) {
            this.mixingBuffer.rewind();
            ByteBuffer byteBuffer2 = byteBuffer;
            AudioMixingUtil.mix(byteBuffer2, this.inputAudioFormat, this.mixingBuffer, this.mixingAudioFormat, this.channelMixingMatrix, 1, false, true);
            this.mixingBuffer.rewind();
            for (int i2 = 0; i2 < this.outputChannels.size(); i2++) {
                WaveformBar waveformBar = this.outputChannels.get(i2);
                waveformBar.addSample(this.mixingBuffer.getFloat());
                if (waveformBar.getSampleCount() >= this.samplesPerBar) {
                    this.listener.onNewWaveformBar(i2, waveformBar);
                    this.outputChannels.put(i2, new WaveformBar());
                }
            }
            byteBuffer = byteBuffer2;
        }
    }
}
