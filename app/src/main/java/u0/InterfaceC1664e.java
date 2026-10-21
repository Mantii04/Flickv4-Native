package u0;

import androidx.media3.decoder.DecoderException;

/* renamed from: u0.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1664e {
    Object dequeueInputBuffer() throws DecoderException;

    Object dequeueOutputBuffer() throws DecoderException;

    void flush();

    String getName();

    void queueInputBuffer(Object obj) throws DecoderException;

    void release();

    void setOutputStartTimeUs(long j7);
}
