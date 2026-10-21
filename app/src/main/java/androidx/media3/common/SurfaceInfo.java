package androidx.media3.common;

import android.view.Surface;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class SurfaceInfo {
    public final int height;
    public final boolean isEncoderInputSurface;
    public final int orientationDegrees;
    public final Surface surface;
    public final int width;

    public SurfaceInfo(Surface surface, int i2, int i7) {
        this(surface, i2, i7, 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceInfo)) {
            return false;
        }
        SurfaceInfo surfaceInfo = (SurfaceInfo) obj;
        return this.width == surfaceInfo.width && this.height == surfaceInfo.height && this.orientationDegrees == surfaceInfo.orientationDegrees && this.isEncoderInputSurface == surfaceInfo.isEncoderInputSurface && this.surface.equals(surfaceInfo.surface);
    }

    public int hashCode() {
        return (((((((this.surface.hashCode() * 31) + this.width) * 31) + this.height) * 31) + this.orientationDegrees) * 31) + (this.isEncoderInputSurface ? 1 : 0);
    }

    public SurfaceInfo(Surface surface, int i2, int i7, int i8) {
        this(surface, i2, i7, i8, false);
    }

    public SurfaceInfo(Surface surface, int i2, int i7, int i8, boolean z6) {
        P3.v.checkArgument(i8 == 0 || i8 == 90 || i8 == 180 || i8 == 270, "orientationDegrees must be 0, 90, 180, or 270");
        this.surface = surface;
        this.width = i2;
        this.height = i7;
        this.orientationDegrees = i8;
        this.isEncoderInputSurface = z6;
    }
}
