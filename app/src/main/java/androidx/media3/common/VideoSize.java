package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class VideoSize {
    private static final int DEFAULT_HEIGHT = 0;
    private static final float DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO = 1.0f;
    private static final int DEFAULT_WIDTH = 0;
    public final int height;
    public final float pixelWidthHeightRatio;

    @Deprecated
    public final int unappliedRotationDegrees;
    public final int width;
    public static final VideoSize UNKNOWN = new VideoSize(0, 0);
    private static final String FIELD_WIDTH = Util.intToStringMaxRadix(0);
    private static final String FIELD_HEIGHT = Util.intToStringMaxRadix(1);
    private static final String FIELD_PIXEL_WIDTH_HEIGHT_RATIO = Util.intToStringMaxRadix(3);

    @UnstableApi
    public VideoSize(int i2, int i7) {
        this(i2, i7, 1.0f);
    }

    @UnstableApi
    public static VideoSize fromBundle(Bundle bundle) {
        return new VideoSize(bundle.getInt(FIELD_WIDTH, 0), bundle.getInt(FIELD_HEIGHT, 0), bundle.getFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, 1.0f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            if (this.width == videoSize.width && this.height == videoSize.height && this.pixelWidthHeightRatio == videoSize.pixelWidthHeightRatio) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Float.floatToRawIntBits(this.pixelWidthHeightRatio) + ((((217 + this.width) * 31) + this.height) * 31);
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        int i2 = this.width;
        if (i2 != 0) {
            bundle.putInt(FIELD_WIDTH, i2);
        }
        int i7 = this.height;
        if (i7 != 0) {
            bundle.putInt(FIELD_HEIGHT, i7);
        }
        float f3 = this.pixelWidthHeightRatio;
        if (f3 != 1.0f) {
            bundle.putFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, f3);
        }
        return bundle;
    }

    @UnstableApi
    public VideoSize(int i2, int i7, float f3) {
        this.width = i2;
        this.height = i7;
        this.unappliedRotationDegrees = 0;
        this.pixelWidthHeightRatio = f3;
    }

    @UnstableApi
    @Deprecated
    public VideoSize(int i2, int i7, int i8, float f3) {
        this(i2, i7, f3);
    }
}
