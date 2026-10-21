package androidx.media3.common.audio;

import A.i;
import P3.v;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
final class Sonic {
    private static final int AMDF_FREQUENCY = 4000;
    private static final int MAXIMUM_PITCH = 400;
    private static final int MINIMUM_PITCH = 65;
    private static final float MINIMUM_SLOWDOWN_RATE = 0.99999f;
    private static final float MINIMUM_SPEEDUP_RATE = 1.00001f;
    private double accumulatedSpeedAdjustmentError;
    private final int channelCount;
    private final SonicImpl<?> impl;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private int outputFrameCount;
    private final float pitch;
    private int pitchFrameCount;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    public final class SonicFloatImpl implements SonicImpl<float[]> {
        private final float[] downSampleBuffer;
        private float[] inputBuffer;
        private double maxDiff;
        private double minDiff;
        private float[] outputBuffer;
        private float[] pitchBuffer;
        private double prevMinDiff;

        public SonicFloatImpl() {
            this.downSampleBuffer = new float[Sonic.this.maxRequiredFrameCount];
            this.inputBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.outputBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.pitchBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
        }

        private float[] ensureSpaceForAdditionalFrames(float[] fArr, int i2, int i7) {
            int length = fArr.length / Sonic.this.channelCount;
            return i2 + i7 <= length ? fArr : Arrays.copyOf(fArr, i.D(length, 3, 2, i7) * Sonic.this.channelCount);
        }

        private int findPitchPeriodInRange(float[] fArr, int i2, int i7, int i8) {
            int i9 = Sonic.this.channelCount * i2;
            double d7 = 1.0d;
            int i10 = 0;
            double d8 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            int i11 = 255;
            int i12 = i7;
            while (i12 <= i8) {
                double d9 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                for (int i13 = 0; i13 < i12; i13++) {
                    d9 += Math.abs(fArr[i9 + i13] - fArr[(i9 + i12) + i13]);
                }
                int i14 = i9;
                double d10 = i12;
                if (i10 * d9 < d7 * d10) {
                    i10 = i12;
                    d7 = d9;
                }
                if (i11 * d9 > d10 * d8) {
                    i11 = i12;
                    d8 = d9;
                }
                i12++;
                i9 = i14;
            }
            this.minDiff = d7 / i10;
            this.maxDiff = d8 / i11;
            return i10;
        }

        private float interpolate(float[] fArr, int i2, long j7, long j8) {
            float f3 = fArr[i2];
            long j9 = (Sonic.this.oldRatePosition + 1) * j8;
            long j10 = j9 - (Sonic.this.newRatePosition * j7);
            return (((r3 - j10) * fArr[i2 + Sonic.this.channelCount]) + (j10 * f3)) / (j9 - (Sonic.this.oldRatePosition * j8));
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int bytesPerSample() {
            return 4;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i2) {
            byteBuffer.asFloatBuffer().get(this.inputBuffer, Sonic.this.inputFrameCount * Sonic.this.channelCount, i2 / bytesPerSample());
            byteBuffer.position(byteBuffer.position() + i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i2) {
            byteBuffer.asFloatBuffer().put(this.outputBuffer, 0, Sonic.this.channelCount * i2);
            byteBuffer.position((i2 * bytesPerSample() * Sonic.this.channelCount) + byteBuffer.position());
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void downSampleInput(int i2, int i7) {
            int i8 = Sonic.this.maxRequiredFrameCount / i7;
            int i9 = Sonic.this.channelCount * i7;
            int i10 = i2 * Sonic.this.channelCount;
            for (int i11 = 0; i11 < i8; i11++) {
                double d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                for (int i12 = 0; i12 < i9; i12++) {
                    d7 += this.inputBuffer[(i11 * i9) + i10 + i12];
                }
                this.downSampleBuffer[i11] = (float) (d7 / i9);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInInputBuffer(int i2) {
            this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, Sonic.this.inputFrameCount, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInOutputBuffer(int i2) {
            this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, Sonic.this.outputFrameCount, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInPitchBuffer(int i2) {
            this.pitchBuffer = ensureSpaceForAdditionalFrames(this.pitchBuffer, Sonic.this.pitchFrameCount, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithDownsampleBuffer(int i2, int i7, int i8) {
            return findPitchPeriodInRange(this.downSampleBuffer, i2, i7, i8);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithInputBuffer(int i2, int i7, int i8) {
            return findPitchPeriodInRange(this.inputBuffer, i2, i7, i8);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void flush() {
            this.prevMinDiff = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            this.minDiff = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            this.maxDiff = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void interpolateFrame(int i2, long j7, long j8) {
            int i7 = 0;
            while (i7 < Sonic.this.channelCount) {
                long j9 = j7;
                this.outputBuffer[(Sonic.this.outputFrameCount * Sonic.this.channelCount) + i7] = interpolate(this.pitchBuffer, (Sonic.this.channelCount * i2) + i7, j9, j8);
                i7++;
                j7 = j9;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public boolean isPreviousPeriodBetter() {
            if (this.minDiff == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || Sonic.this.prevPeriod == 0) {
                return false;
            }
            double d7 = this.maxDiff;
            double d8 = this.minDiff;
            return d7 <= d8 * 3.0d && d8 * 2.0d > this.prevMinDiff * 3.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void overlapAdd(int i2, int i7, int i8, int i9, int i10) {
            float[] fArr = this.outputBuffer;
            float[] fArr2 = this.inputBuffer;
            overlapAdd(i2, i7, fArr, i8, fArr2, i9, fArr2, i10);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void updatePreviousMinDiff() {
            this.prevMinDiff = this.minDiff;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void zeroInputBuffer(int i2, int i7) {
            for (int i8 = 0; i8 < Sonic.this.channelCount * i7; i8++) {
                this.inputBuffer[i2 + i8] = 0.0f;
            }
        }

        private void overlapAdd(int i2, int i7, float[] fArr, int i8, float[] fArr2, int i9, float[] fArr3, int i10) {
            for (int i11 = 0; i11 < i7; i11++) {
                int i12 = (i8 * i7) + i11;
                int i13 = (i10 * i7) + i11;
                int i14 = (i9 * i7) + i11;
                for (int i15 = 0; i15 < i2; i15++) {
                    fArr[i12] = ((fArr3[i13] * i15) + (fArr2[i14] * (i2 - i15))) / i2;
                    i12 += i7;
                    i14 += i7;
                    i13 += i7;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getInputBuffer() {
            return this.inputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getOutputBuffer() {
            return this.outputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getPitchBuffer() {
            return this.pitchBuffer;
        }
    }

    public interface SonicImpl<T> {
        int bytesPerSample();

        void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i2);

        void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i2);

        void downSampleInput(int i2, int i7);

        void ensureAdditionalFramesInInputBuffer(int i2);

        void ensureAdditionalFramesInOutputBuffer(int i2);

        void ensureAdditionalFramesInPitchBuffer(int i2);

        int findPitchPeriodInRangeWithDownsampleBuffer(int i2, int i7, int i8);

        int findPitchPeriodInRangeWithInputBuffer(int i2, int i7, int i8);

        void flush();

        T getInputBuffer();

        T getOutputBuffer();

        T getPitchBuffer();

        void interpolateFrame(int i2, long j7, long j8);

        boolean isPreviousPeriodBetter();

        void overlapAdd(int i2, int i7, int i8, int i9, int i10);

        void updatePreviousMinDiff();

        void zeroInputBuffer(int i2, int i7);
    }

    public final class SonicShortImpl implements SonicImpl<short[]> {
        private final short[] downSampleBuffer;
        private short[] inputBuffer;
        private int maxDiff;
        private int minDiff;
        private short[] outputBuffer;
        private short[] pitchBuffer;
        private int prevMinDiff;

        public SonicShortImpl() {
            this.downSampleBuffer = new short[Sonic.this.maxRequiredFrameCount];
            this.inputBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.outputBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.pitchBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
        }

        private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i2, int i7) {
            int length = sArr.length / Sonic.this.channelCount;
            return i2 + i7 <= length ? sArr : Arrays.copyOf(sArr, i.D(length, 3, 2, i7) * Sonic.this.channelCount);
        }

        private int findPitchPeriodInRange(short[] sArr, int i2, int i7, int i8) {
            int i9 = i2 * Sonic.this.channelCount;
            int i10 = 255;
            int i11 = 1;
            int i12 = 0;
            int i13 = 0;
            while (i7 <= i8) {
                int i14 = 0;
                for (int i15 = 0; i15 < i7; i15++) {
                    i14 += Math.abs(sArr[i9 + i15] - sArr[(i9 + i7) + i15]);
                }
                if (i14 * i12 < i11 * i7) {
                    i12 = i7;
                    i11 = i14;
                }
                if (i14 * i10 > i13 * i7) {
                    i10 = i7;
                    i13 = i14;
                }
                i7++;
            }
            this.minDiff = i11 / i12;
            this.maxDiff = i13 / i10;
            return i12;
        }

        private short interpolate(short[] sArr, int i2, long j7, long j8) {
            short s6 = sArr[i2];
            short s7 = sArr[i2 + Sonic.this.channelCount];
            long j9 = (Sonic.this.oldRatePosition + 1) * j8;
            long j10 = j9 - (Sonic.this.newRatePosition * j7);
            long j11 = j9 - (Sonic.this.oldRatePosition * j8);
            return (short) ((((j11 - j10) * s7) + (s6 * j10)) / j11);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int bytesPerSample() {
            return 2;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i2) {
            byteBuffer.asShortBuffer().get(this.inputBuffer, Sonic.this.inputFrameCount * Sonic.this.channelCount, i2 / 2);
            byteBuffer.position(byteBuffer.position() + i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i2) {
            byteBuffer.asShortBuffer().put(this.outputBuffer, 0, Sonic.this.channelCount * i2);
            byteBuffer.position((i2 * bytesPerSample() * Sonic.this.channelCount) + byteBuffer.position());
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void downSampleInput(int i2, int i7) {
            short[] sArr = this.inputBuffer;
            int i8 = Sonic.this.maxRequiredFrameCount / i7;
            int i9 = Sonic.this.channelCount * i7;
            int i10 = i2 * Sonic.this.channelCount;
            for (int i11 = 0; i11 < i8; i11++) {
                int i12 = 0;
                for (int i13 = 0; i13 < i9; i13++) {
                    i12 += sArr[(i11 * i9) + i10 + i13];
                }
                this.downSampleBuffer[i11] = (short) (i12 / i9);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInInputBuffer(int i2) {
            this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, Sonic.this.inputFrameCount, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInOutputBuffer(int i2) {
            this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, Sonic.this.outputFrameCount, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInPitchBuffer(int i2) {
            this.pitchBuffer = ensureSpaceForAdditionalFrames(this.pitchBuffer, Sonic.this.pitchFrameCount, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithDownsampleBuffer(int i2, int i7, int i8) {
            return findPitchPeriodInRange(this.downSampleBuffer, i2, i7, i8);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithInputBuffer(int i2, int i7, int i8) {
            return findPitchPeriodInRange(this.inputBuffer, i2, i7, i8);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void flush() {
            this.prevMinDiff = 0;
            this.minDiff = 0;
            this.maxDiff = 0;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void interpolateFrame(int i2, long j7, long j8) {
            int i7 = 0;
            while (i7 < Sonic.this.channelCount) {
                long j9 = j7;
                this.outputBuffer[(Sonic.this.outputFrameCount * Sonic.this.channelCount) + i7] = interpolate(this.pitchBuffer, (Sonic.this.channelCount * i2) + i7, j9, j8);
                i7++;
                j7 = j9;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public boolean isPreviousPeriodBetter() {
            if (this.minDiff == 0 || Sonic.this.prevPeriod == 0) {
                return false;
            }
            int i2 = this.maxDiff;
            int i7 = this.minDiff;
            return i2 <= i7 * 3 && i7 * 2 > this.prevMinDiff * 3;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void overlapAdd(int i2, int i7, int i8, int i9, int i10) {
            short[] sArr = this.outputBuffer;
            short[] sArr2 = this.inputBuffer;
            overlapAdd(i2, i7, sArr, i8, sArr2, i9, sArr2, i10);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void updatePreviousMinDiff() {
            this.prevMinDiff = this.minDiff;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void zeroInputBuffer(int i2, int i7) {
            for (int i8 = 0; i8 < Sonic.this.channelCount * i7; i8++) {
                this.inputBuffer[i2 + i8] = 0;
            }
        }

        private void overlapAdd(int i2, int i7, short[] sArr, int i8, short[] sArr2, int i9, short[] sArr3, int i10) {
            for (int i11 = 0; i11 < i7; i11++) {
                int i12 = (i8 * i7) + i11;
                int i13 = (i10 * i7) + i11;
                int i14 = (i9 * i7) + i11;
                for (int i15 = 0; i15 < i2; i15++) {
                    sArr[i12] = (short) (((sArr3[i13] * i15) + ((i2 - i15) * sArr2[i14])) / i2);
                    i12 += i7;
                    i14 += i7;
                    i13 += i7;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getInputBuffer() {
            return this.inputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getOutputBuffer() {
            return this.outputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getPitchBuffer() {
            return this.pitchBuffer;
        }
    }

    public Sonic(int i2, int i7, float f3, float f7, int i8, boolean z6) {
        this.inputSampleRateHz = i2;
        this.channelCount = i7;
        this.speed = f3;
        this.pitch = f7;
        this.rate = i2 / i8;
        this.minPeriod = i2 / 400;
        int i9 = i2 / MINIMUM_PITCH;
        this.maxPeriod = i9;
        this.maxRequiredFrameCount = i9 * 2;
        this.impl = z6 ? new SonicFloatImpl() : new SonicShortImpl();
    }

    private void adjustRate(float f3, int i2) {
        int i7;
        int i8;
        if (this.outputFrameCount == i2) {
            return;
        }
        int i9 = this.inputSampleRateHz;
        long j7 = (long) (i9 / f3);
        long j8 = i9;
        while (j7 != 0 && j8 != 0 && j7 % 2 == 0 && j8 % 2 == 0) {
            j7 /= 2;
            j8 /= 2;
        }
        moveNewSamplesToPitchBuffer(i2);
        int i10 = 0;
        while (true) {
            int i11 = this.pitchFrameCount;
            if (i10 >= i11 - 1) {
                removePitchFrames(i11 - 1);
                return;
            }
            while (true) {
                i7 = this.oldRatePosition;
                long j9 = (i7 + 1) * j7;
                i8 = this.newRatePosition;
                if (j9 <= i8 * j8) {
                    break;
                }
                this.impl.ensureAdditionalFramesInOutputBuffer(1);
                this.impl.interpolateFrame(i10, j8, j7);
                this.newRatePosition++;
                this.outputFrameCount++;
            }
            int i12 = i7 + 1;
            this.oldRatePosition = i12;
            if (i12 == j8) {
                this.oldRatePosition = 0;
                v.checkState(((long) i8) == j7);
                this.newRatePosition = 0;
            }
            i10++;
        }
    }

    public static long calculateAccumulatedTruncationErrorForResampling(BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3) {
        RoundingMode roundingMode = RoundingMode.HALF_EVEN;
        BigDecimal divide = bigDecimal.divide(bigDecimal2, 20, roundingMode);
        BigDecimal divide2 = bigDecimal2.divide(bigDecimal3, 20, roundingMode);
        RoundingMode roundingMode2 = RoundingMode.FLOOR;
        return divide.multiply(divide2.subtract(divide2.setScale(0, roundingMode2))).setScale(0, roundingMode2).longValueExact();
    }

    private void changeSpeed(double d7) {
        int insertPitchPeriod;
        int i2 = this.inputFrameCount;
        if (i2 < this.maxRequiredFrameCount) {
            return;
        }
        int i7 = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                insertPitchPeriod = copyInputToOutput(i7);
            } else {
                int findPitchPeriod = findPitchPeriod(i7);
                if (d7 > 1.0d) {
                    i7 = findPitchPeriod + skipPitchPeriod(i7, d7, findPitchPeriod) + i7;
                } else {
                    insertPitchPeriod = insertPitchPeriod(i7, d7, findPitchPeriod);
                }
            }
            i7 += insertPitchPeriod;
        } while (this.maxRequiredFrameCount + i7 <= i2);
        removeProcessedInputFrames(i7);
    }

    private int copyInputToOutput(int i2) {
        int min = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(i2, min);
        this.remainingInputToCopyFrameCount -= min;
        return min;
    }

    private void copyToOutput(int i2, int i7) {
        this.impl.ensureAdditionalFramesInOutputBuffer(i7);
        Object inputBuffer = this.impl.getInputBuffer();
        int i8 = i2 * this.channelCount;
        Object outputBuffer = this.impl.getOutputBuffer();
        int i9 = this.outputFrameCount;
        int i10 = this.channelCount;
        System.arraycopy(inputBuffer, i8, outputBuffer, i9 * i10, i10 * i7);
        this.outputFrameCount += i7;
    }

    private int findPitchPeriod(int i2) {
        int i7;
        int i8 = this.inputSampleRateHz;
        int i9 = i8 > AMDF_FREQUENCY ? i8 / AMDF_FREQUENCY : 1;
        if (this.channelCount == 1 && i9 == 1) {
            i7 = this.impl.findPitchPeriodInRangeWithInputBuffer(i2, this.minPeriod, this.maxPeriod);
        } else {
            this.impl.downSampleInput(i2, i9);
            int findPitchPeriodInRangeWithDownsampleBuffer = this.impl.findPitchPeriodInRangeWithDownsampleBuffer(0, this.minPeriod / i9, this.maxPeriod / i9);
            if (i9 != 1) {
                int i10 = findPitchPeriodInRangeWithDownsampleBuffer * i9;
                int i11 = i9 * 4;
                int i12 = i10 - i11;
                int i13 = i10 + i11;
                int i14 = this.minPeriod;
                if (i12 < i14) {
                    i12 = i14;
                }
                int i15 = this.maxPeriod;
                if (i13 > i15) {
                    i13 = i15;
                }
                if (this.channelCount == 1) {
                    i7 = this.impl.findPitchPeriodInRangeWithInputBuffer(i2, i12, i13);
                } else {
                    this.impl.downSampleInput(i2, 1);
                    i7 = this.impl.findPitchPeriodInRangeWithDownsampleBuffer(0, i12, i13);
                }
            } else {
                i7 = findPitchPeriodInRangeWithDownsampleBuffer;
            }
        }
        int i16 = this.impl.isPreviousPeriodBetter() ? this.prevPeriod : i7;
        this.impl.updatePreviousMinDiff();
        this.prevPeriod = i7;
        return i16;
    }

    public static long getExpectedFrameCountAfterProcessorApplied(int i2, int i7, float f3, float f7, long j7) {
        float f8 = (i2 / i7) * f7;
        double d7 = f3 / f7;
        BigDecimal bigDecimal = new BigDecimal(String.valueOf(f8));
        BigDecimal valueOf = BigDecimal.valueOf(j7);
        if (d7 > 1.0000100135803223d || d7 < 0.9999899864196777d) {
            valueOf = valueOf.divide(BigDecimal.valueOf(d7), RoundingMode.HALF_EVEN);
        }
        return f8 == 1.0f ? valueOf.longValueExact() : valueOf.divide(bigDecimal, RoundingMode.HALF_EVEN).longValueExact() - calculateAccumulatedTruncationErrorForResampling(valueOf, BigDecimal.valueOf(i2), bigDecimal);
    }

    public static long getExpectedInputFrameCountForOutputFrameCount(int i2, int i7, float f3, float f7, long j7) {
        long frameCountBeforeResamplingForOutputCount = getFrameCountBeforeResamplingForOutputCount(BigDecimal.valueOf(i2), new BigDecimal(String.valueOf((i2 / i7) * f7)), BigDecimal.valueOf(j7));
        double d7 = f3 / f7;
        return (d7 > 1.0000100135803223d || d7 < 0.9999899864196777d) ? BigDecimal.valueOf(frameCountBeforeResamplingForOutputCount).multiply(BigDecimal.valueOf(d7)).setScale(0, RoundingMode.FLOOR).longValueExact() : frameCountBeforeResamplingForOutputCount;
    }

    private static long getFrameCountBeforeResamplingForOutputCount(BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3) {
        RoundingMode roundingMode = RoundingMode.FLOOR;
        return bigDecimal.multiply(bigDecimal3).divide(bigDecimal.divide(bigDecimal2, 0, roundingMode), 0, roundingMode).longValueExact();
    }

    private int insertPitchPeriod(int i2, double d7, int i7) {
        int i8;
        if (d7 < 0.5d) {
            double d8 = ((i7 * d7) / (1.0d - d7)) + this.accumulatedSpeedAdjustmentError;
            i8 = (int) Math.round(d8);
            this.accumulatedSpeedAdjustmentError = d8 - i8;
        } else {
            double d9 = ((((2.0d * d7) - 1.0d) * i7) / (1.0d - d7)) + this.accumulatedSpeedAdjustmentError;
            int round = (int) Math.round(d9);
            this.remainingInputToCopyFrameCount = round;
            this.accumulatedSpeedAdjustmentError = d9 - round;
            i8 = i7;
        }
        int i9 = i7 + i8;
        this.impl.ensureAdditionalFramesInOutputBuffer(i9);
        Object inputBuffer = this.impl.getInputBuffer();
        int i10 = this.channelCount * i2;
        Object outputBuffer = this.impl.getOutputBuffer();
        int i11 = this.outputFrameCount;
        int i12 = this.channelCount;
        System.arraycopy(inputBuffer, i10, outputBuffer, i11 * i12, i12 * i7);
        this.impl.overlapAdd(i8, this.channelCount, this.outputFrameCount + i7, i2 + i7, i2);
        this.outputFrameCount += i9;
        return i8;
    }

    private void moveNewSamplesToPitchBuffer(int i2) {
        int i7 = this.outputFrameCount - i2;
        this.impl.ensureAdditionalFramesInPitchBuffer(i7);
        Object outputBuffer = this.impl.getOutputBuffer();
        int i8 = this.channelCount * i2;
        Object pitchBuffer = this.impl.getPitchBuffer();
        int i9 = this.pitchFrameCount;
        int i10 = this.channelCount;
        System.arraycopy(outputBuffer, i8, pitchBuffer, i9 * i10, i10 * i7);
        this.outputFrameCount = i2;
        this.pitchFrameCount += i7;
    }

    private void processStreamInput() {
        int i2 = this.outputFrameCount;
        float f3 = this.speed;
        float f7 = this.pitch;
        double d7 = f3 / f7;
        float f8 = this.rate * f7;
        if (d7 > 1.0000100135803223d || d7 < 0.9999899864196777d) {
            changeSpeed(d7);
        } else {
            copyToOutput(0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f8 != 1.0f) {
            adjustRate(f8, i2);
        }
    }

    private void removePitchFrames(int i2) {
        if (i2 == 0) {
            return;
        }
        System.arraycopy(this.impl.getPitchBuffer(), this.channelCount * i2, this.impl.getPitchBuffer(), 0, (this.pitchFrameCount - i2) * this.channelCount);
        this.pitchFrameCount -= i2;
    }

    private void removeProcessedInputFrames(int i2) {
        int i7 = this.inputFrameCount - i2;
        System.arraycopy(this.impl.getInputBuffer(), i2 * this.channelCount, this.impl.getInputBuffer(), 0, this.channelCount * i7);
        this.inputFrameCount = i7;
    }

    private int skipPitchPeriod(int i2, double d7, int i7) {
        int i8;
        if (d7 >= 2.0d) {
            double d8 = (i7 / (d7 - 1.0d)) + this.accumulatedSpeedAdjustmentError;
            int round = (int) Math.round(d8);
            this.accumulatedSpeedAdjustmentError = d8 - round;
            i8 = round;
        } else {
            double d9 = (((2.0d - d7) * i7) / (d7 - 1.0d)) + this.accumulatedSpeedAdjustmentError;
            int round2 = (int) Math.round(d9);
            this.remainingInputToCopyFrameCount = round2;
            this.accumulatedSpeedAdjustmentError = d9 - round2;
            i8 = i7;
        }
        this.impl.ensureAdditionalFramesInOutputBuffer(i8);
        this.impl.overlapAdd(i8, this.channelCount, this.outputFrameCount, i2, i2 + i7);
        this.outputFrameCount += i8;
        return i8;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.accumulatedSpeedAdjustmentError = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.impl.flush();
    }

    public void getOutput(ByteBuffer byteBuffer) {
        v.checkState(this.outputFrameCount >= 0);
        int min = Math.min(byteBuffer.remaining() / (this.channelCount * this.impl.bytesPerSample()), this.outputFrameCount);
        this.impl.copyOutputToByteBuffer(byteBuffer, min);
        this.outputFrameCount -= min;
        System.arraycopy(this.impl.getOutputBuffer(), min * this.channelCount, this.impl.getOutputBuffer(), 0, this.outputFrameCount * this.channelCount);
    }

    public int getOutputSize() {
        v.checkState(this.outputFrameCount >= 0);
        return this.outputFrameCount * this.channelCount * this.impl.bytesPerSample();
    }

    public int getPendingInputBytes() {
        return this.inputFrameCount * this.channelCount * this.impl.bytesPerSample();
    }

    public void queueEndOfStream() {
        int i2 = this.inputFrameCount;
        float f3 = this.speed;
        float f7 = this.pitch;
        double d7 = f3 / f7;
        int i7 = this.outputFrameCount + ((int) (((((((i2 - r5) / d7) + this.remainingInputToCopyFrameCount) + this.accumulatedSpeedAdjustmentError) + this.pitchFrameCount) / (this.rate * f7)) + 0.5d));
        this.accumulatedSpeedAdjustmentError = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.impl.ensureAdditionalFramesInInputBuffer((this.maxRequiredFrameCount * 2) + i2);
        this.impl.zeroInputBuffer(i2 * this.channelCount, this.maxRequiredFrameCount * 2);
        this.inputFrameCount = (this.maxRequiredFrameCount * 2) + this.inputFrameCount;
        processStreamInput();
        if (this.outputFrameCount > i7) {
            this.outputFrameCount = Math.max(i7, 0);
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void queueInput(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        int bytesPerSample = remaining / (this.channelCount * this.impl.bytesPerSample());
        this.impl.ensureAdditionalFramesInInputBuffer(bytesPerSample);
        this.impl.copyBufferToInputBuffer(byteBuffer, remaining);
        this.inputFrameCount += bytesPerSample;
        processStreamInput();
    }
}
