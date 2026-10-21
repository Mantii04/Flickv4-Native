package androidx.media3.exoplayer.video;

import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;
import java.util.List;
import s0.w;
import s0.x;

@UnstableApi
/* loaded from: classes.dex */
public final class Av1SampleDependencyParser {
    private static final int MAX_BYTES_FROM_KEYFRAME_TO_READ = 500;
    private static final int MAX_OBU_COUNT_FOR_PARTIAL_SKIP = 8;
    private final ByteBuffer delayedKeyFrameTruncatedSample = ByteBuffer.allocateDirect(500);
    private androidx.media3.container.b sequenceHeader;

    private boolean canSkipObu(w wVar, boolean z6) {
        androidx.media3.container.b bVar;
        androidx.media3.container.a parse;
        int i2 = wVar.f19988a;
        if (i2 == 2 || i2 == 15) {
            return true;
        }
        if (i2 != 3 || z6) {
            return ((i2 != 6 && i2 != 3) || (bVar = this.sequenceHeader) == null || (parse = androidx.media3.container.a.parse(bVar, wVar)) == null || parse.isDependedOn()) ? false : true;
        }
        return false;
    }

    private void emptyDelayedKeyFrameTruncatedSample() {
        ByteBuffer byteBuffer = this.delayedKeyFrameTruncatedSample;
        byteBuffer.position(byteBuffer.limit());
    }

    private void updateSequenceHeaders(List<w> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2).f19988a == 1) {
                this.sequenceHeader = androidx.media3.container.b.parse(list.get(i2));
            }
        }
    }

    public void queueInputBuffer(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, position + 500));
        this.delayedKeyFrameTruncatedSample.clear();
        this.delayedKeyFrameTruncatedSample.put(byteBuffer);
        this.delayedKeyFrameTruncatedSample.flip();
        byteBuffer.position(position);
        byteBuffer.limit(limit);
    }

    public void reset() {
        this.sequenceHeader = null;
        emptyDelayedKeyFrameTruncatedSample();
    }

    public int sampleLimitAfterSkippingNonReferenceFrame(ByteBuffer byteBuffer, boolean z6) {
        if (this.delayedKeyFrameTruncatedSample.hasRemaining()) {
            updateSequenceHeaders(x.split(this.delayedKeyFrameTruncatedSample));
            emptyDelayedKeyFrameTruncatedSample();
        }
        List<w> split = x.split(byteBuffer);
        updateSequenceHeaders(split);
        int size = split.size() - 1;
        int i2 = 0;
        while (size >= 0 && canSkipObu(split.get(size), z6)) {
            if (split.get(size).f19988a == 6 || split.get(size).f19988a == 3) {
                i2++;
            }
            size--;
        }
        return (i2 > 1 || size + 1 >= 8) ? byteBuffer.limit() : size >= 0 ? split.get(size).f19989b.limit() : byteBuffer.position();
    }
}
