package androidx.media3.exoplayer.source;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class MediaLoadData {
    public final int dataType;
    public final long mediaEndTimeMs;
    public final long mediaStartTimeMs;
    public final Format trackFormat;
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int trackType;

    public MediaLoadData(int i2) {
        this(i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
    }

    public MediaLoadData(int i2, int i7, Format format, int i8, Object obj, long j7, long j8) {
        this.dataType = i2;
        this.trackType = i7;
        this.trackFormat = format;
        this.trackSelectionReason = i8;
        this.trackSelectionData = obj;
        this.mediaStartTimeMs = j7;
        this.mediaEndTimeMs = j8;
    }
}
