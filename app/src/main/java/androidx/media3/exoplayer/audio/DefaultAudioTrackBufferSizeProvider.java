package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import v0.G;

@UnstableApi
/* loaded from: classes.dex */
public class DefaultAudioTrackBufferSizeProvider implements DefaultAudioSink.AudioTrackBufferSizeProvider {
    private static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    private static final int DTSHD_BUFFER_MULTIPLICATION_FACTOR = 4;
    private static final int MAX_PCM_BUFFER_DURATION_US = 750000;
    private static final int MIN_PCM_BUFFER_DURATION_US = 250000;
    private static final int OFFLOAD_BUFFER_DURATION_US = 50000000;
    private static final int PASSTHROUGH_BUFFER_DURATION_US = 250000;
    private static final int PCM_BUFFER_MULTIPLICATION_FACTOR = 4;
    public final int ac3BufferMultiplicationFactor;
    public final int dtshdBufferMultiplicationFactor;
    protected final int maxPcmBufferDurationUs;
    protected final int minPcmBufferDurationUs;
    protected final int offloadBufferDurationUs;
    protected final int passthroughBufferDurationUs;
    protected final int pcmBufferMultiplicationFactor;

    public static class Builder {
        private int minPcmBufferDurationUs = 250000;
        private int maxPcmBufferDurationUs = DefaultAudioTrackBufferSizeProvider.MAX_PCM_BUFFER_DURATION_US;
        private int pcmBufferMultiplicationFactor = 4;
        private int passthroughBufferDurationUs = 250000;
        private int offloadBufferDurationUs = DefaultAudioTrackBufferSizeProvider.OFFLOAD_BUFFER_DURATION_US;
        private int ac3BufferMultiplicationFactor = 2;
        private int dtshdBufferMultiplicationFactor = 4;

        public DefaultAudioTrackBufferSizeProvider build() {
            return new DefaultAudioTrackBufferSizeProvider(this);
        }

        public Builder setAc3BufferMultiplicationFactor(int i2) {
            this.ac3BufferMultiplicationFactor = i2;
            return this;
        }

        public Builder setDtshdBufferMultiplicationFactor(int i2) {
            this.dtshdBufferMultiplicationFactor = i2;
            return this;
        }

        public Builder setMaxPcmBufferDurationUs(int i2) {
            this.maxPcmBufferDurationUs = i2;
            return this;
        }

        public Builder setMinPcmBufferDurationUs(int i2) {
            this.minPcmBufferDurationUs = i2;
            return this;
        }

        public Builder setOffloadBufferDurationUs(int i2) {
            this.offloadBufferDurationUs = i2;
            return this;
        }

        public Builder setPassthroughBufferDurationUs(int i2) {
            this.passthroughBufferDurationUs = i2;
            return this;
        }

        public Builder setPcmBufferMultiplicationFactor(int i2) {
            this.pcmBufferMultiplicationFactor = i2;
            return this;
        }
    }

    public DefaultAudioTrackBufferSizeProvider(Builder builder) {
        this.minPcmBufferDurationUs = builder.minPcmBufferDurationUs;
        this.maxPcmBufferDurationUs = builder.maxPcmBufferDurationUs;
        this.pcmBufferMultiplicationFactor = builder.pcmBufferMultiplicationFactor;
        this.passthroughBufferDurationUs = builder.passthroughBufferDurationUs;
        this.offloadBufferDurationUs = builder.offloadBufferDurationUs;
        this.ac3BufferMultiplicationFactor = builder.ac3BufferMultiplicationFactor;
        this.dtshdBufferMultiplicationFactor = builder.dtshdBufferMultiplicationFactor;
    }

    public static int durationUsToBytes(int i2, int i7, int i8) {
        return com.google.common.primitives.a.checkedCast(((i2 * i7) * i8) / 1000000);
    }

    private static int getNonPcmMaximumEncodedRateBytesPerSecond(int i2) {
        int maximumEncodedRateBytesPerSecond = G.getMaximumEncodedRateBytesPerSecond(i2);
        P3.v.checkState(maximumEncodedRateBytesPerSecond != -2147483647);
        return maximumEncodedRateBytesPerSecond;
    }

    public int get1xBufferSizeInBytes(int i2, int i7, int i8, int i9, int i10, int i11) {
        if (i8 == 0) {
            return getPcmBufferSizeInBytes(i2, i10, i9);
        }
        if (i8 == 1) {
            return getOffloadBufferSizeInBytes(i7);
        }
        if (i8 == 2) {
            return getPassthroughBufferSizeInBytes(i7, i11);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackBufferSizeProvider
    public int getBufferSizeInBytes(int i2, int i7, int i8, int i9, int i10, int i11, double d7) {
        return (((Math.max(i2, (int) (get1xBufferSizeInBytes(i2, i7, i8, i9, i10, i11) * d7)) + i9) - 1) / i9) * i9;
    }

    public int getOffloadBufferSizeInBytes(int i2) {
        return com.google.common.primitives.a.checkedCast((this.offloadBufferDurationUs * getNonPcmMaximumEncodedRateBytesPerSecond(i2)) / 1000000);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getPassthroughBufferSizeInBytes(int r4, int r5) {
        /*
            r3 = this;
            int r0 = r3.passthroughBufferDurationUs
            r1 = 5
            r2 = 8
            if (r4 != r1) goto Lb
            int r1 = r3.ac3BufferMultiplicationFactor
        L9:
            int r0 = r0 * r1
            goto L10
        Lb:
            if (r4 != r2) goto L10
            int r1 = r3.dtshdBufferMultiplicationFactor
            goto L9
        L10:
            r1 = -1
            if (r5 == r1) goto L1a
            java.math.RoundingMode r4 = java.math.RoundingMode.CEILING
            int r4 = S3.e.divide(r5, r2, r4)
            goto L1e
        L1a:
            int r4 = getNonPcmMaximumEncodedRateBytesPerSecond(r4)
        L1e:
            long r0 = (long) r0
            long r4 = (long) r4
            long r0 = r0 * r4
            r4 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 / r4
            int r4 = com.google.common.primitives.a.checkedCast(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider.getPassthroughBufferSizeInBytes(int, int):int");
    }

    public int getPcmBufferSizeInBytes(int i2, int i7, int i8) {
        return Util.constrainValue(i2 * this.pcmBufferMultiplicationFactor, durationUsToBytes(this.minPcmBufferDurationUs, i7, i8), durationUsToBytes(this.maxPcmBufferDurationUs, i7, i8));
    }
}
