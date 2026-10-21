package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

@UnstableApi
/* loaded from: classes.dex */
public final class AudioMixingUtil {
    private static final float FLOAT_PCM_MAX_VALUE = 1.0f;
    private static final float FLOAT_PCM_MIN_VALUE = -1.0f;

    private AudioMixingUtil() {
    }

    public static boolean canMix(AudioProcessor.AudioFormat audioFormat) {
        if (audioFormat.sampleRate == -1 || audioFormat.channelCount == -1) {
            return false;
        }
        int i2 = audioFormat.encoding;
        return i2 == 2 || i2 == 4;
    }

    private static float floatSampleToInt16Pcm(float f3) {
        return Util.constrainValue(f3 * (f3 < 0.0f ? 32768 : 32767), -32768.0f, 32767.0f);
    }

    private static float getPcmSample(ByteBuffer byteBuffer, boolean z6, boolean z7) {
        return z7 ? z6 ? byteBuffer.getShort() : floatSampleToInt16Pcm(byteBuffer.getFloat()) : z6 ? int16SampleToFloatPcm(byteBuffer.getShort()) : byteBuffer.getFloat();
    }

    private static float int16SampleToFloatPcm(short s6) {
        return s6 / (s6 < 0 ? 32768 : 32767);
    }

    public static ByteBuffer mix(ByteBuffer byteBuffer, AudioProcessor.AudioFormat audioFormat, ByteBuffer byteBuffer2, AudioProcessor.AudioFormat audioFormat2, ChannelMixingMatrix channelMixingMatrix, int i2, boolean z6, boolean z7) {
        boolean z8 = audioFormat.encoding == 2;
        boolean z9 = audioFormat2.encoding == 2;
        int inputChannelCount = channelMixingMatrix.getInputChannelCount();
        int outputChannelCount = channelMixingMatrix.getOutputChannelCount();
        float[] fArr = new float[inputChannelCount];
        float[] fArr2 = new float[outputChannelCount];
        for (int i7 = 0; i7 < i2; i7++) {
            if (z6) {
                int position = byteBuffer2.position();
                for (int i8 = 0; i8 < outputChannelCount; i8++) {
                    fArr2[i8] = getPcmSample(byteBuffer2, z9, z9);
                }
                byteBuffer2.position(position);
            }
            for (int i9 = 0; i9 < inputChannelCount; i9++) {
                fArr[i9] = getPcmSample(byteBuffer, z8, z9);
            }
            for (int i10 = 0; i10 < outputChannelCount; i10++) {
                for (int i11 = 0; i11 < inputChannelCount; i11++) {
                    fArr2[i10] = (channelMixingMatrix.getMixingCoefficient(i11, i10) * fArr[i11]) + fArr2[i10];
                }
                if (z9) {
                    byteBuffer2.putShort((short) Util.constrainValue(fArr2[i10], -32768.0f, 32767.0f));
                } else {
                    byteBuffer2.putFloat(z7 ? Util.constrainValue(fArr2[i10], FLOAT_PCM_MIN_VALUE, 1.0f) : fArr2[i10]);
                }
                fArr2[i10] = 0.0f;
            }
        }
        return byteBuffer2;
    }

    public static boolean canMix(AudioProcessor.AudioFormat audioFormat, AudioProcessor.AudioFormat audioFormat2) {
        return audioFormat.sampleRate == audioFormat2.sampleRate && canMix(audioFormat) && canMix(audioFormat2);
    }
}
