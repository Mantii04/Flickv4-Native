package androidx.media3.common.util;

import P3.v;
import android.os.Bundle;

@UnstableApi
/* loaded from: classes.dex */
public final class Size {
    private final int height;
    private final int width;
    public static final Size UNKNOWN = new Size(-1, -1);
    public static final Size ZERO = new Size(0, 0);
    private static final String FIELD_WIDTH = Util.intToStringMaxRadix(0);
    private static final String FIELD_HEIGHT = Util.intToStringMaxRadix(1);

    public Size(int i2, int i7) {
        v.checkArgument((i2 == -1 || i2 >= 0) && (i7 == -1 || i7 >= 0));
        this.width = i2;
        this.height = i7;
    }

    @UnstableApi
    public static Size fromBundle(Bundle bundle) {
        return new Size(bundle.getInt(FIELD_WIDTH, -1), bundle.getInt(FIELD_HEIGHT, -1));
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.width == size.width && this.height == size.height) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i2 = this.height;
        int i7 = this.width;
        return i2 ^ ((i7 >>> 16) | (i7 << 16));
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_WIDTH, this.width);
        bundle.putInt(FIELD_HEIGHT, this.height);
        return bundle;
    }

    public String toString() {
        return this.width + "x" + this.height;
    }
}
