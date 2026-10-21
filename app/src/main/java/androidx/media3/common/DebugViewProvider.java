package androidx.media3.common;

import android.view.SurfaceView;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = new J0.g(18);

    SurfaceView getDebugPreviewSurfaceView(int i2, int i7);
}
