package androidx.media3.exoplayer.mediacodec;

import android.os.Bundle;
import u0.C1663d;

/* loaded from: classes.dex */
interface MediaCodecBufferEnqueuer {
    void flush();

    void maybeThrowException();

    void queueInputBuffer(int i2, int i7, int i8, long j7, int i9);

    void queueSecureInputBuffer(int i2, int i7, C1663d c1663d, long j7, int i8);

    void setParameters(Bundle bundle);

    void shutdown();

    void start();

    void waitUntilQueueingComplete() throws InterruptedException;
}
