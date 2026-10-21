package androidx.media3.exoplayer.image;

import P3.v;
import android.content.Context;
import android.graphics.Point;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.exoplayer.X;
import androidx.media3.exoplayer.image.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;
import u0.C1665f;
import u0.j;

@UnstableApi
/* loaded from: classes.dex */
public final class BitmapFactoryImageDecoder extends j implements ImageDecoder {
    private final Context context;
    private final int maxOutputSize;

    public static final class Factory implements ImageDecoder.Factory {
        private final Context context;
        private int maxOutputSize;

        @Deprecated
        public Factory() {
            this.context = null;
            this.maxOutputSize = -1;
        }

        public Factory setMaxOutputSize(int i2) {
            v.checkArgument(i2 == -1 || i2 > 0);
            this.maxOutputSize = i2;
            return this;
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public int supportsFormat(Format format) {
            String str = format.sampleMimeType;
            return (str == null || !MimeTypes.isImage(str)) ? X.c(0) : Util.isBitmapFactorySupportedMimeType(format.sampleMimeType) ? X.c(4) : X.c(1);
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public BitmapFactoryImageDecoder createImageDecoder() {
            return new BitmapFactoryImageDecoder(this.context, this.maxOutputSize);
        }

        public Factory(Context context) {
            this.context = (Context) v.checkNotNull(context);
            this.maxOutputSize = -1;
        }
    }

    @Override // u0.j
    public C1665f createInputBuffer() {
        return new C1665f(1);
    }

    @Override // u0.j, u0.InterfaceC1664e
    public /* bridge */ /* synthetic */ ImageOutputBuffer dequeueOutputBuffer() throws ImageDecoderException {
        return (ImageOutputBuffer) dequeueOutputBuffer();
    }

    @Override // u0.InterfaceC1664e
    public String getName() {
        return "BitmapFactoryImageDecoder";
    }

    private BitmapFactoryImageDecoder(Context context, int i2) {
        super(new C1665f[1], new ImageOutputBuffer[1]);
        this.context = context;
        this.maxOutputSize = i2;
    }

    @Override // u0.j
    public ImageOutputBuffer createOutputBuffer() {
        return new ImageOutputBuffer() { // from class: androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.1
            @Override // u0.AbstractC1667h
            public void release() {
                BitmapFactoryImageDecoder.this.releaseOutputBuffer(this);
            }
        };
    }

    @Override // u0.j
    public ImageDecoderException createUnexpectedDecodeException(Throwable th) {
        return new ImageDecoderException("Unexpected decode error", th);
    }

    @Override // u0.j
    public ImageDecoderException decode(C1665f c1665f, ImageOutputBuffer imageOutputBuffer, boolean z6) {
        ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(c1665f.data);
        v.checkState(byteBuffer.hasArray());
        v.checkArgument(byteBuffer.arrayOffset() == 0);
        try {
            int i2 = this.maxOutputSize;
            if (i2 == -1) {
                Context context = this.context;
                if (context != null) {
                    Point currentDisplayModeSize = Util.getCurrentDisplayModeSize(context);
                    int i7 = currentDisplayModeSize.x;
                    int i8 = currentDisplayModeSize.y;
                    Format format = c1665f.format;
                    if (format != null) {
                        int i9 = format.tileCountHorizontal;
                        if (i9 != -1) {
                            i7 *= i9;
                        }
                        int i10 = format.tileCountVertical;
                        if (i10 != -1) {
                            i8 *= i10;
                        }
                    }
                    i2 = (Math.max(i7, i8) * 2) - 1;
                } else {
                    i2 = 4096;
                }
            }
            imageOutputBuffer.bitmap = BitmapUtil.decode(byteBuffer.array(), byteBuffer.remaining(), null, i2);
            imageOutputBuffer.timeUs = c1665f.timeUs;
            return null;
        } catch (ParserException e3) {
            return new ImageDecoderException("Could not decode image data with BitmapFactory.", e3);
        } catch (IOException e7) {
            return new ImageDecoderException(e7);
        }
    }
}
