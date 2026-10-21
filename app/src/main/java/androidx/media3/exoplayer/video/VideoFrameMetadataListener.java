package androidx.media3.exoplayer.video;

import android.media.MediaFormat;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public interface VideoFrameMetadataListener {
    void onVideoFrameAboutToBeRendered(long j7, long j8, Format format, MediaFormat mediaFormat);
}
