package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.util.Arrays;

@UnstableApi
/* loaded from: classes.dex */
public final class ChannelMappingAudioProcessor extends BaseAudioProcessor {
    private int[] outputChannels;
    private int[] pendingOutputChannels;

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.pendingOutputChannels;
        if (iArr == null) {
            return AudioProcessor.AudioFormat.NOT_SET;
        }
        if (!Util.isEncodingLinearPcm(audioFormat.encoding)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        boolean z6 = audioFormat.channelCount != iArr.length;
        int i2 = 0;
        while (i2 < iArr.length) {
            int i7 = iArr[i2];
            if (i7 >= audioFormat.channelCount) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", audioFormat);
            }
            z6 |= i7 != i2;
            i2++;
        }
        return z6 ? new AudioProcessor.AudioFormat(audioFormat.sampleRate, iArr.length, audioFormat.encoding) : AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onFlush() {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) P3.v.checkNotNull(this.outputChannels);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(((limit - position) / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        while (position < limit) {
            for (int i2 : iArr) {
                int byteDepth = (Util.getByteDepth(this.inputAudioFormat.encoding) * i2) + position;
                int i7 = this.inputAudioFormat.encoding;
                if (i7 != 2) {
                    if (i7 == 3) {
                        replaceOutputBuffer.put(byteBuffer.get(byteDepth));
                    } else if (i7 != 4) {
                        if (i7 != 21) {
                            if (i7 != 22) {
                                if (i7 != 268435456) {
                                    if (i7 != 1342177280) {
                                        if (i7 != 1610612736) {
                                            throw new IllegalStateException("Unexpected encoding: " + this.inputAudioFormat.encoding);
                                        }
                                    }
                                }
                            }
                            replaceOutputBuffer.putInt(byteBuffer.getInt(byteDepth));
                        }
                        Util.putInt24(replaceOutputBuffer, Util.getInt24(byteBuffer, byteDepth));
                    } else {
                        replaceOutputBuffer.putFloat(byteBuffer.getFloat(byteDepth));
                    }
                }
                replaceOutputBuffer.putShort(byteBuffer.getShort(byteDepth));
            }
            position += this.inputAudioFormat.bytesPerFrame;
        }
        byteBuffer.position(limit);
        replaceOutputBuffer.flip();
    }

    public void setChannelMap(int[] iArr) {
        this.pendingOutputChannels = iArr;
    }
}
