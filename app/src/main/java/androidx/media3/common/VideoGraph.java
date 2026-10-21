package androidx.media3.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.UnstableApi;
import java.util.List;
import java.util.concurrent.Executor;

@UnstableApi
/* loaded from: classes.dex */
public interface VideoGraph {

    public interface Factory {
        VideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, Listener listener, Executor executor, long j7, boolean z6);

        boolean supportsMultipleInputs();
    }

    public interface Listener {
        void onEnded(long j7);

        void onError(VideoFrameProcessingException videoFrameProcessingException);

        void onOutputFrameAvailableForRendering(long j7, boolean z6);

        void onOutputFrameRateChanged(float f3);

        void onOutputSizeChanged(int i2, int i7);
    }

    void flush();

    Surface getInputSurface(int i2);

    int getPendingInputFrameCount(int i2);

    boolean hasProducedFrameWithTimestampZero();

    void initialize() throws VideoFrameProcessingException;

    boolean queueInputBitmap(int i2, Bitmap bitmap, TimestampIterator timestampIterator);

    boolean queueInputTexture(int i2, int i7, long j7);

    void redraw();

    void registerInput(int i2) throws VideoFrameProcessingException;

    boolean registerInputFrame(int i2);

    void registerInputStream(int i2, int i7, Format format, List<Effect> list, long j7);

    void release();

    void renderOutputFrame(long j7);

    void setCompositionEffects(List<Effect> list);

    void setCompositorSettings(VideoCompositorSettings videoCompositorSettings);

    void setOnInputFrameProcessedListener(int i2, OnInputFrameProcessedListener onInputFrameProcessedListener);

    void setOnInputSurfaceReadyListener(int i2, Runnable runnable);

    void setOutputSurfaceInfo(SurfaceInfo surfaceInfo);

    void signalEndOfInput(int i2);
}
