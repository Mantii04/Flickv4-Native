package androidx.media3.exoplayer.image;

import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderException;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import u0.C1665f;
import u0.InterfaceC1664e;

@UnstableApi
/* loaded from: classes.dex */
public interface ImageDecoder extends InterfaceC1664e {

    public interface Factory {

        @Deprecated
        public static final Factory DEFAULT = new BitmapFactoryImageDecoder.Factory();

        ImageDecoder createImageDecoder();

        int supportsFormat(Format format);
    }

    @Override // u0.InterfaceC1664e
    /* synthetic */ Object dequeueInputBuffer() throws DecoderException;

    @Override // u0.InterfaceC1664e
    ImageOutputBuffer dequeueOutputBuffer() throws ImageDecoderException;

    @Override // u0.InterfaceC1664e
    /* bridge */ /* synthetic */ Object dequeueOutputBuffer() throws DecoderException;

    @Override // u0.InterfaceC1664e
    /* synthetic */ void flush();

    @Override // u0.InterfaceC1664e
    /* synthetic */ String getName();

    @Override // u0.InterfaceC1664e
    /* bridge */ /* synthetic */ void queueInputBuffer(Object obj) throws DecoderException;

    void queueInputBuffer(C1665f c1665f) throws ImageDecoderException;

    @Override // u0.InterfaceC1664e
    /* synthetic */ void release();

    @Override // u0.InterfaceC1664e
    /* synthetic */ void setOutputStartTimeUs(long j7);
}
