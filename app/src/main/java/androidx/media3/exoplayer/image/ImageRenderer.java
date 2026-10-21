package androidx.media3.exoplayer.image;

import P3.v;
import android.graphics.Bitmap;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.X;
import androidx.media3.exoplayer.image.ImageDecoder;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public class ImageRenderer extends BaseRenderer {
    private static final long IMAGE_PRESENTATION_WINDOW_THRESHOLD_US = 30000;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM_THEN_WAIT = 2;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 3;
    private static final String TAG = "ImageRenderer";
    private boolean codecNeedsInitialization;
    private int currentTileIndex;
    private ImageDecoder decoder;
    private final ImageDecoder.Factory decoderFactory;
    private int decoderReinitializationState;
    private int firstFrameState;
    private final C1665f flagsOnlyBuffer;
    private ImageOutput imageOutput;
    private C1665f inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private long largestQueuedPresentationTimeUs;
    private long lastProcessedOutputBufferTimeUs;
    private TileInfo nextTileInfo;
    private Bitmap outputBitmap;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;
    private boolean readyToOutputTiles;
    private TileInfo tileInfo;

    public static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(C.TIME_UNSET, C.TIME_UNSET);
        public final long previousStreamLastBufferTimeUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long j7, long j8) {
            this.previousStreamLastBufferTimeUs = j7;
            this.streamOffsetUs = j8;
        }
    }

    public static class TileInfo {
        private final long presentationTimeUs;
        private Bitmap tileBitmap;
        private final int tileIndex;

        public TileInfo(int i2, long j7) {
            this.tileIndex = i2;
            this.presentationTimeUs = j7;
        }

        public long getPresentationTimeUs() {
            return this.presentationTimeUs;
        }

        public Bitmap getTileBitmap() {
            return this.tileBitmap;
        }

        public int getTileIndex() {
            return this.tileIndex;
        }

        public boolean hasTileBitmap() {
            return this.tileBitmap != null;
        }

        public void setTileBitmap(Bitmap bitmap) {
            this.tileBitmap = bitmap;
        }
    }

    public ImageRenderer(ImageDecoder.Factory factory, ImageOutput imageOutput) {
        super(4);
        this.decoderFactory = factory;
        this.imageOutput = getImageOutput(imageOutput);
        this.flagsOnlyBuffer = C1665f.newNoDataInstance();
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
        this.decoderReinitializationState = 0;
        this.firstFrameState = 1;
    }

    private boolean canCreateDecoderForFormat(Format format) {
        int supportsFormat = this.decoderFactory.supportsFormat(format);
        return supportsFormat == X.c(4) || supportsFormat == X.c(3);
    }

    private Bitmap cropTileFromImageGrid(int i2) {
        v.checkNotNull(this.outputBitmap);
        int width = this.outputBitmap.getWidth() / ((Format) v.checkNotNull(this.inputFormat)).tileCountHorizontal;
        int height = this.outputBitmap.getHeight() / ((Format) v.checkNotNull(this.inputFormat)).tileCountVertical;
        int i7 = this.inputFormat.tileCountHorizontal;
        return Bitmap.createBitmap(this.outputBitmap, (i2 % i7) * width, (i2 / i7) * height, width, height);
    }

    private boolean drainOutput(long j7, long j8) throws ImageDecoderException, ExoPlaybackException {
        if (this.outputBitmap != null && this.tileInfo == null) {
            return false;
        }
        if (this.firstFrameState == 0 && getState() != 2) {
            return false;
        }
        if (this.outputBitmap == null) {
            v.checkNotNull(this.decoder);
            ImageOutputBuffer dequeueOutputBuffer = this.decoder.dequeueOutputBuffer();
            if (dequeueOutputBuffer == null) {
                return false;
            }
            if (((ImageOutputBuffer) v.checkNotNull(dequeueOutputBuffer)).isEndOfStream()) {
                if (this.decoderReinitializationState == 3) {
                    releaseDecoderResources();
                    v.checkNotNull(this.inputFormat);
                    maybeInitCodec();
                } else {
                    ((ImageOutputBuffer) v.checkNotNull(dequeueOutputBuffer)).release();
                    if (this.pendingOutputStreamChanges.isEmpty()) {
                        this.outputStreamEnded = true;
                    }
                }
                return false;
            }
            v.checkNotNull(dequeueOutputBuffer.bitmap, "Non-EOS buffer came back from the decoder without bitmap.");
            this.outputBitmap = dequeueOutputBuffer.bitmap;
            ((ImageOutputBuffer) v.checkNotNull(dequeueOutputBuffer)).release();
        }
        if (!this.readyToOutputTiles || this.outputBitmap == null || this.tileInfo == null) {
            return false;
        }
        v.checkNotNull(this.inputFormat);
        Format format = this.inputFormat;
        int i2 = format.tileCountHorizontal;
        boolean z6 = ((i2 == 1 && format.tileCountVertical == 1) || i2 == -1 || format.tileCountVertical == -1) ? false : true;
        if (!this.tileInfo.hasTileBitmap()) {
            TileInfo tileInfo = this.tileInfo;
            tileInfo.setTileBitmap(z6 ? cropTileFromImageGrid(tileInfo.getTileIndex()) : (Bitmap) v.checkNotNull(this.outputBitmap));
        }
        if (!processOutputBuffer(j7, j8, (Bitmap) v.checkNotNull(this.tileInfo.getTileBitmap()), this.tileInfo.getPresentationTimeUs())) {
            return false;
        }
        onProcessedOutputBuffer(((TileInfo) v.checkNotNull(this.tileInfo)).getPresentationTimeUs());
        this.firstFrameState = 3;
        if (!z6 || ((TileInfo) v.checkNotNull(this.tileInfo)).getTileIndex() == (((Format) v.checkNotNull(this.inputFormat)).tileCountVertical * ((Format) v.checkNotNull(this.inputFormat)).tileCountHorizontal) - 1) {
            this.outputBitmap = null;
        }
        this.tileInfo = this.nextTileInfo;
        this.nextTileInfo = null;
        return true;
    }

    private boolean feedInputBuffer(long j7) throws ImageDecoderException {
        if (this.readyToOutputTiles && this.tileInfo != null) {
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder == null || this.decoderReinitializationState == 3 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            C1665f c1665f = (C1665f) imageDecoder.dequeueInputBuffer();
            this.inputBuffer = c1665f;
            if (c1665f == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 2) {
            v.checkNotNull(this.inputBuffer);
            this.inputBuffer.setFlags(4);
            ((ImageDecoder) v.checkNotNull(this.decoder)).queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 3;
            return false;
        }
        int readSource = readSource(formatHolder, this.inputBuffer, 0);
        if (readSource == -5) {
            this.inputFormat = (Format) v.checkNotNull(formatHolder.format);
            this.codecNeedsInitialization = true;
            this.decoderReinitializationState = 2;
            return true;
        }
        if (readSource != -4) {
            if (readSource == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        this.inputBuffer.flip();
        ByteBuffer byteBuffer = this.inputBuffer.data;
        boolean z6 = (byteBuffer != null && byteBuffer.remaining() > 0) || ((C1665f) v.checkNotNull(this.inputBuffer)).isEndOfStream();
        if (z6) {
            ((C1665f) v.checkNotNull(this.inputBuffer)).format = this.inputFormat;
            ((ImageDecoder) v.checkNotNull(this.decoder)).queueInputBuffer((C1665f) v.checkNotNull(this.inputBuffer));
            this.currentTileIndex = 0;
        }
        maybeAdvanceTileInfo(j7, (C1665f) v.checkNotNull(this.inputBuffer));
        if (((C1665f) v.checkNotNull(this.inputBuffer)).isEndOfStream()) {
            this.inputStreamEnded = true;
            this.inputBuffer = null;
            return false;
        }
        this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, ((C1665f) v.checkNotNull(this.inputBuffer)).timeUs);
        if (z6) {
            this.inputBuffer = null;
        } else {
            ((C1665f) v.checkNotNull(this.inputBuffer)).clear();
        }
        return !this.readyToOutputTiles;
    }

    private static ImageOutput getImageOutput(ImageOutput imageOutput) {
        return imageOutput == null ? ImageOutput.NO_OP : imageOutput;
    }

    private boolean isTileLastInGrid(TileInfo tileInfo) {
        return ((Format) v.checkNotNull(this.inputFormat)).tileCountHorizontal == -1 || this.inputFormat.tileCountVertical == -1 || tileInfo.getTileIndex() == (((Format) v.checkNotNull(this.inputFormat)).tileCountVertical * this.inputFormat.tileCountHorizontal) - 1;
    }

    private void lowerFirstFrameState(int i2) {
        this.firstFrameState = Math.min(this.firstFrameState, i2);
    }

    private void maybeAdvanceTileInfo(long j7, C1665f c1665f) {
        boolean z6 = true;
        if (c1665f.isEndOfStream()) {
            this.readyToOutputTiles = true;
            return;
        }
        TileInfo tileInfo = new TileInfo(this.currentTileIndex, c1665f.timeUs);
        this.nextTileInfo = tileInfo;
        this.currentTileIndex++;
        if (!this.readyToOutputTiles) {
            long presentationTimeUs = tileInfo.getPresentationTimeUs();
            boolean z7 = presentationTimeUs - 30000 <= j7 && j7 <= 30000 + presentationTimeUs;
            TileInfo tileInfo2 = this.tileInfo;
            boolean z8 = tileInfo2 != null && tileInfo2.getPresentationTimeUs() <= j7 && j7 < presentationTimeUs;
            boolean isTileLastInGrid = isTileLastInGrid((TileInfo) v.checkNotNull(this.nextTileInfo));
            if (!z7 && !z8 && !isTileLastInGrid) {
                z6 = false;
            }
            this.readyToOutputTiles = z6;
            if (z8 && !z7) {
                return;
            }
        }
        this.tileInfo = this.nextTileInfo;
        this.nextTileInfo = null;
    }

    private boolean maybeInitCodec() throws ExoPlaybackException {
        if (!maybeInitializeProcessingPipeline()) {
            return false;
        }
        if (!this.codecNeedsInitialization) {
            return true;
        }
        if (!canCreateDecoderForFormat((Format) v.checkNotNull(this.inputFormat))) {
            throw createRendererException(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.inputFormat, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
        }
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder != null) {
            imageDecoder.release();
        }
        this.decoder = this.decoderFactory.createImageDecoder();
        this.codecNeedsInitialization = false;
        return true;
    }

    private void onProcessedOutputBuffer(long j7) {
        this.lastProcessedOutputBufferTimeUs = j7;
        while (!this.pendingOutputStreamChanges.isEmpty() && j7 >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            this.outputStreamInfo = this.pendingOutputStreamChanges.removeFirst();
        }
    }

    private void releaseDecoderResources() {
        this.inputBuffer = null;
        this.decoderReinitializationState = 0;
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder != null) {
            imageDecoder.release();
            this.decoder = null;
        }
    }

    private void setImageOutput(ImageOutput imageOutput) {
        this.imageOutput = getImageOutput(imageOutput);
    }

    private boolean shouldForceRender() {
        boolean z6 = getState() == 2;
        int i2 = this.firstFrameState;
        if (i2 == 0) {
            return z6;
        }
        if (i2 == 1) {
            return true;
        }
        if (i2 == 3) {
            return false;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) throws ExoPlaybackException {
        if (i2 != 15) {
            super.handleMessage(i2, obj);
        } else {
            setImageOutput(obj instanceof ImageOutput ? (ImageOutput) obj : null);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        int i2 = this.firstFrameState;
        if (i2 != 3) {
            return i2 == 0 && this.readyToOutputTiles;
        }
        return true;
    }

    public boolean maybeInitializeProcessingPipeline() throws ExoPlaybackException {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.pendingOutputStreamChanges.clear();
        releaseDecoderResources();
        this.imageOutput.onDisabled();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z6, boolean z7) throws ExoPlaybackException {
        this.firstFrameState = z7 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
        lowerFirstFrameState(1);
        this.outputStreamEnded = false;
        this.inputStreamEnded = false;
        this.outputBitmap = null;
        this.tileInfo = null;
        this.nextTileInfo = null;
        this.readyToOutputTiles = false;
        this.inputBuffer = null;
        ImageDecoder imageDecoder = this.decoder;
        if (imageDecoder != null) {
            imageDecoder.flush();
        }
        this.pendingOutputStreamChanges.clear();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onRelease() {
        releaseDecoderResources();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onReset() {
        releaseDecoderResources();
        lowerFirstFrameState(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        if (r2 >= r6) goto L15;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStreamChanged(androidx.media3.common.Format[] r5, long r6, long r8, androidx.media3.exoplayer.source.MediaSource.MediaPeriodId r10) throws androidx.media3.exoplayer.ExoPlaybackException {
        /*
            r4 = this;
            super.onStreamChanged(r5, r6, r8, r10)
            r5 = r4
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r6 = r5.outputStreamInfo
            long r6 = r6.streamOffsetUs
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 == 0) goto L37
            java.util.ArrayDeque<androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo> r6 = r5.pendingOutputStreamChanges
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L2a
            long r6 = r5.largestQueuedPresentationTimeUs
            int r10 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r10 == 0) goto L37
            long r2 = r5.lastProcessedOutputBufferTimeUs
            int r10 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r10 == 0) goto L2a
            int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r6 < 0) goto L2a
            goto L37
        L2a:
            java.util.ArrayDeque<androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo> r6 = r5.pendingOutputStreamChanges
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r7 = new androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo
            long r0 = r5.largestQueuedPresentationTimeUs
            r7.<init>(r0, r8)
            r6.add(r7)
            return
        L37:
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r6 = new androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo
            r6.<init>(r0, r8)
            r5.outputStreamInfo = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.image.ImageRenderer.onStreamChanged(androidx.media3.common.Format[], long, long, androidx.media3.exoplayer.source.MediaSource$MediaPeriodId):void");
    }

    public boolean processOutputBuffer(long j7, long j8, Bitmap bitmap, long j9) throws ExoPlaybackException {
        long j10 = j9 - j7;
        if (!shouldForceRender() && j10 >= 30000) {
            return false;
        }
        this.imageOutput.onImageAvailable(j9 - this.outputStreamInfo.streamOffsetUs, bitmap);
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j7, long j8) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int readSource = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (readSource != -5) {
                if (readSource == -4) {
                    v.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
            this.inputFormat = (Format) v.checkNotNull(formatHolder.format);
            this.codecNeedsInitialization = true;
        }
        if (this.decoder != null || maybeInitCodec()) {
            try {
                TraceUtil.beginSection("drainAndFeedDecoder");
                while (drainOutput(j7, j8)) {
                }
                while (feedInputBuffer(j7)) {
                }
                TraceUtil.endSection();
            } catch (ImageDecoderException e3) {
                throw createRendererException(e3, null, PlaybackException.ERROR_CODE_DECODING_FAILED);
            }
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsFormat(Format format) {
        return this.decoderFactory.supportsFormat(format);
    }
}
