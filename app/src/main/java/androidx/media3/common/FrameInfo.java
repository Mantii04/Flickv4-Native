package androidx.media3.common;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public class FrameInfo {
    public final Format format;
    public final long offsetToAddUs;

    public FrameInfo(Format format, long j7) {
        P3.v.checkArgument(format.colorInfo != null, "format colorInfo must be set");
        int i2 = format.width;
        P3.v.checkArgument(i2 > 0, "format width must be positive, but is: %s", i2);
        int i7 = format.height;
        P3.v.checkArgument(i7 > 0, "format height must be positive, but is: %s", i7);
        this.format = format;
        this.offsetToAddUs = j7;
    }
}
