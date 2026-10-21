package androidx.media3.exoplayer.image;

import P3.v;
import V3.A;
import V3.F;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.X;
import androidx.media3.exoplayer.image.ImageDecoder;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public final class ExternallyLoadedImageDecoder implements ImageDecoder {
    private final BitmapResolver bitmapResolver;
    private final C1665f inputBuffer;
    private final ImageOutputBuffer outputBuffer;
    private F pendingDecode;
    private long pendingDecodeTimeUs;
    private boolean pendingEndOfStream;

    public interface BitmapResolver {
        F resolve(ExternalImageRequest externalImageRequest);
    }

    public static final class ExternalImageRequest {
        public final Uri uri;

        public ExternalImageRequest(Uri uri) {
            this.uri = uri;
        }
    }

    public static final class Factory implements ImageDecoder.Factory {
        private final BitmapResolver bitmapResolver;

        public Factory(BitmapResolver bitmapResolver) {
            this.bitmapResolver = bitmapResolver;
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public int supportsFormat(Format format) {
            return X.c(Objects.equals(format.sampleMimeType, MimeTypes.APPLICATION_EXTERNALLY_LOADED_IMAGE) ? 4 : MimeTypes.isImage(format.sampleMimeType) ? 1 : 0);
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public ExternallyLoadedImageDecoder createImageDecoder() {
            return new ExternallyLoadedImageDecoder(this.bitmapResolver);
        }
    }

    private void resetState() {
        F f3 = this.pendingDecode;
        if (f3 != null) {
            f3.cancel(false);
            this.pendingDecode = null;
        }
        this.pendingEndOfStream = false;
        this.inputBuffer.clear();
        this.outputBuffer.release();
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public void flush() {
        resetState();
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public String getName() {
        return "externallyLoadedImageDecoder";
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public void release() {
        resetState();
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public void setOutputStartTimeUs(long j7) {
    }

    private ExternallyLoadedImageDecoder(BitmapResolver bitmapResolver) {
        this.bitmapResolver = bitmapResolver;
        this.inputBuffer = new C1665f(1);
        this.outputBuffer = new ImageOutputBuffer() { // from class: androidx.media3.exoplayer.image.ExternallyLoadedImageDecoder.1
            @Override // u0.AbstractC1667h
            public void release() {
                clear();
            }
        };
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public C1665f dequeueInputBuffer() {
        if (this.pendingDecode == null) {
            return this.inputBuffer;
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public ImageOutputBuffer dequeueOutputBuffer() throws ImageDecoderException {
        if (this.pendingEndOfStream) {
            this.outputBuffer.addFlag(4);
            this.pendingEndOfStream = false;
            return this.outputBuffer;
        }
        F f3 = this.pendingDecode;
        if (f3 != null) {
            try {
                if (f3.isDone()) {
                    try {
                        this.outputBuffer.bitmap = (Bitmap) A.getDone(this.pendingDecode);
                        ImageOutputBuffer imageOutputBuffer = this.outputBuffer;
                        imageOutputBuffer.timeUs = this.pendingDecodeTimeUs;
                        return imageOutputBuffer;
                    } catch (CancellationException e3) {
                        throw new ImageDecoderException(e3);
                    } catch (ExecutionException e7) {
                        throw new ImageDecoderException(e7.getCause());
                    }
                }
            } finally {
                this.pendingDecode = null;
            }
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.image.ImageDecoder, u0.InterfaceC1664e
    public void queueInputBuffer(C1665f c1665f) {
        if (c1665f.isEndOfStream()) {
            this.pendingEndOfStream = true;
            c1665f.clear();
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(c1665f.data);
        v.checkState(byteBuffer.hasArray());
        this.pendingDecode = this.bitmapResolver.resolve(new ExternalImageRequest(Uri.parse(new String(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.remaining(), StandardCharsets.UTF_8))));
        this.pendingDecodeTimeUs = c1665f.timeUs;
        c1665f.clear();
    }
}
