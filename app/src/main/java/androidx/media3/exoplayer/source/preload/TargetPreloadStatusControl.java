package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public interface TargetPreloadStatusControl<T, PreloadStatusT> {
    PreloadStatusT getTargetPreloadStatus(T t6);
}
