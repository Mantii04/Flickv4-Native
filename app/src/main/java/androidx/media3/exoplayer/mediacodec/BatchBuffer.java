package androidx.media3.exoplayer.mediacodec;

import P3.v;
import java.nio.ByteBuffer;
import u0.C1665f;

/* loaded from: classes.dex */
final class BatchBuffer extends C1665f {
    public static final int DEFAULT_MAX_SAMPLE_COUNT = 32;
    static final int MAX_SIZE_BYTES = 3072000;
    private long lastSampleTimeUs;
    private int maxSampleCount;
    private int sampleCount;

    public BatchBuffer() {
        super(2);
        this.maxSampleCount = 32;
    }

    private boolean canAppendSampleBuffer(C1665f c1665f) {
        ByteBuffer byteBuffer;
        if (!hasSamples()) {
            return true;
        }
        if (this.sampleCount >= this.maxSampleCount) {
            return false;
        }
        ByteBuffer byteBuffer2 = c1665f.data;
        if (byteBuffer2 != null && (byteBuffer = this.data) != null) {
            if (byteBuffer2.remaining() + byteBuffer.position() > MAX_SIZE_BYTES) {
                return false;
            }
        }
        return true;
    }

    public boolean append(C1665f c1665f) {
        v.checkArgument(!c1665f.isEncrypted());
        v.checkArgument(!c1665f.hasSupplementalData());
        v.checkArgument(!c1665f.isEndOfStream());
        if (!canAppendSampleBuffer(c1665f)) {
            return false;
        }
        int i2 = this.sampleCount;
        this.sampleCount = i2 + 1;
        if (i2 == 0) {
            this.timeUs = c1665f.timeUs;
            if (c1665f.isKeyFrame()) {
                setFlags(1);
            }
        }
        ByteBuffer byteBuffer = c1665f.data;
        if (byteBuffer != null) {
            ensureSpaceForWrite(byteBuffer.remaining());
            this.data.put(byteBuffer);
        }
        this.lastSampleTimeUs = c1665f.timeUs;
        return true;
    }

    @Override // u0.C1665f, u0.AbstractC1660a
    public void clear() {
        super.clear();
        this.sampleCount = 0;
    }

    public long getFirstSampleTimeUs() {
        return this.timeUs;
    }

    public long getLastSampleTimeUs() {
        return this.lastSampleTimeUs;
    }

    public int getSampleCount() {
        return this.sampleCount;
    }

    public boolean hasSamples() {
        return this.sampleCount > 0;
    }

    public void setMaxSampleCount(int i2) {
        v.checkArgument(i2 > 0);
        this.maxSampleCount = i2;
    }
}
