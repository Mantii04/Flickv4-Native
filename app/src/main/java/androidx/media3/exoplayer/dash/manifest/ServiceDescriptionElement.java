package androidx.media3.exoplayer.dash.manifest;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class ServiceDescriptionElement {
    public final long maxOffsetMs;
    public final float maxPlaybackSpeed;
    public final long minOffsetMs;
    public final float minPlaybackSpeed;
    public final long targetOffsetMs;

    public ServiceDescriptionElement(long j7, long j8, long j9, float f3, float f7) {
        this.targetOffsetMs = j7;
        this.minOffsetMs = j8;
        this.maxOffsetMs = j9;
        this.minPlaybackSpeed = f3;
        this.maxPlaybackSpeed = f7;
    }
}
