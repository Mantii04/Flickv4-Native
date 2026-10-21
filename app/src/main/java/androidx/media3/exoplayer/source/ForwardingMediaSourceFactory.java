package androidx.media3.exoplayer.source;

import P3.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;

@UnstableApi
/* loaded from: classes.dex */
public class ForwardingMediaSourceFactory implements MediaSource.Factory {
    private final MediaSource.Factory factory;

    public ForwardingMediaSourceFactory(MediaSource.Factory factory) {
        this.factory = factory;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource createMediaSource(MediaItem mediaItem) {
        return this.factory.createMediaSource(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory experimentalParseSubtitlesDuringExtraction(boolean z6) {
        return this.factory.experimentalParseSubtitlesDuringExtraction(z6);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        return this.factory.experimentalSetCodecsToParseWithinGopSampleDependencies(i2);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public int[] getSupportedTypes() {
        return this.factory.getSupportedTypes();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
        return this.factory.setCmcdConfigurationFactory(factory);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory setDownloadExecutor(C c7) {
        return this.factory.setDownloadExecutor(c7);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
        return this.factory.setDrmSessionManagerProvider(drmSessionManagerProvider);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        return this.factory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public MediaSource.Factory setSubtitleParserFactory(S0.q qVar) {
        return this.factory.setSubtitleParserFactory(qVar);
    }
}
