package androidx.media3.common.util;

import P3.v;

@UnstableApi
/* loaded from: classes.dex */
public final class GlRect {
    public int bottom;
    public int left;
    public int right;
    public int top;

    public GlRect(int i2, int i7) {
        this(0, 0, i2, i7);
    }

    public GlRect(int i2, int i7, int i8, int i9) {
        v.checkArgument(i2 <= i8 && i7 <= i9);
        this.left = i2;
        this.bottom = i7;
        this.right = i8;
        this.top = i9;
    }
}
