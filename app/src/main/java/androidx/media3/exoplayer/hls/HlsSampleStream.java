package androidx.media3.exoplayer.hls;

import P3.v;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;
import u0.C1665f;

/* loaded from: classes.dex */
final class HlsSampleStream implements SampleStream {
    private int sampleQueueIndex = -1;
    private final HlsSampleStreamWrapper sampleStreamWrapper;
    private final int trackGroupIndex;

    public HlsSampleStream(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i2) {
        this.sampleStreamWrapper = hlsSampleStreamWrapper;
        this.trackGroupIndex = i2;
    }

    private boolean hasValidSampleQueueIndex() {
        int i2 = this.sampleQueueIndex;
        return (i2 == -1 || i2 == -3 || i2 == -2) ? false : true;
    }

    public void bindSampleQueue() {
        v.checkArgument(this.sampleQueueIndex == -1);
        this.sampleQueueIndex = this.sampleStreamWrapper.bindSampleQueueToSampleStream(this.trackGroupIndex);
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public boolean isReady() {
        if (this.sampleQueueIndex != -3) {
            return hasValidSampleQueueIndex() && this.sampleStreamWrapper.isReady(this.sampleQueueIndex);
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public void maybeThrowError() throws IOException {
        int i2 = this.sampleQueueIndex;
        if (i2 == -2) {
            throw new SampleQueueMappingException(this.sampleStreamWrapper.getTrackGroups().get(this.trackGroupIndex).getFormat(0).sampleMimeType);
        }
        if (i2 == -1) {
            this.sampleStreamWrapper.maybeThrowError();
        } else if (i2 != -3) {
            this.sampleStreamWrapper.maybeThrowError(i2);
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int readData(FormatHolder formatHolder, C1665f c1665f, int i2) {
        if (this.sampleQueueIndex == -3) {
            c1665f.addFlag(4);
            return -4;
        }
        if (hasValidSampleQueueIndex()) {
            return this.sampleStreamWrapper.readData(this.sampleQueueIndex, formatHolder, c1665f, i2);
        }
        return -3;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int skipData(long j7) {
        if (hasValidSampleQueueIndex()) {
            return this.sampleStreamWrapper.skipData(this.sampleQueueIndex, j7);
        }
        return 0;
    }

    public void unbindSampleQueue() {
        if (this.sampleQueueIndex != -1) {
            this.sampleStreamWrapper.unbindSampleQueue(this.trackGroupIndex);
            this.sampleQueueIndex = -1;
        }
    }
}
