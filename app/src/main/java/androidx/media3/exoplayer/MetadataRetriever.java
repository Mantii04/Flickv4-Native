package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.MetadataRetrieverInternal;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import v0.C1739x;

@UnstableApi
@Deprecated
/* loaded from: classes.dex */
public final class MetadataRetriever implements AutoCloseable {
    public static final int DEFAULT_MAXIMUM_PARALLEL_RETRIEVALS = 5;
    private final MetadataRetrieverInternal internalRetriever;

    public static final class Builder {
        private Clock clock;
        private final Context context;
        private final MediaItem mediaItem;
        private MediaSource.Factory mediaSourceFactory;

        public Builder(Context context, MediaItem mediaItem) {
            this.context = context != null ? context.getApplicationContext() : null;
            this.mediaItem = (MediaItem) P3.v.checkNotNull(mediaItem);
            this.clock = Clock.DEFAULT;
        }

        public MetadataRetriever build() {
            if (this.mediaSourceFactory == null) {
                P3.v.checkState(this.context != null, "Context must be provided if MediaSource.Factory is not set.");
                this.mediaSourceFactory = new DefaultMediaSourceFactory(this.context, new C1739x().setMp4ExtractorFlags(260));
            }
            return new MetadataRetriever(new MetadataRetrieverInternal(this.mediaItem, (MediaSource.Factory) P3.v.checkNotNull(this.mediaSourceFactory), this.clock));
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) P3.v.checkNotNull(clock);
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            this.mediaSourceFactory = (MediaSource.Factory) P3.v.checkNotNull(factory);
            return this;
        }
    }

    @Deprecated
    public static V3.F retrieveMetadata(Context context, MediaItem mediaItem) {
        return retrieveMetadata(context, mediaItem, Clock.DEFAULT);
    }

    public static void setMaximumParallelRetrievals(int i2) {
        P3.v.checkArgument(i2 >= 1);
        MetadataRetrieverInternal.SharedWorkerThread.MAX_PARALLEL_RETRIEVALS.set(i2);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.internalRetriever.close();
    }

    public V3.F retrieveDurationUs() {
        return this.internalRetriever.retrieveDurationUs();
    }

    public V3.F retrieveTimeline() {
        return this.internalRetriever.retrieveTimeline();
    }

    public V3.F retrieveTrackGroups() {
        return this.internalRetriever.retrieveTrackGroups();
    }

    private MetadataRetriever(MetadataRetrieverInternal metadataRetrieverInternal) {
        this.internalRetriever = metadataRetrieverInternal;
    }

    @Deprecated
    public static V3.F retrieveMetadata(MediaSource.Factory factory, MediaItem mediaItem) {
        return retrieveMetadata(factory, mediaItem, Clock.DEFAULT);
    }

    public static V3.F retrieveMetadata(Context context, MediaItem mediaItem, Clock clock) {
        MetadataRetriever build = new Builder(context, mediaItem).setClock(clock).build();
        try {
            V3.F retrieveTrackGroups = build.retrieveTrackGroups();
            build.close();
            return retrieveTrackGroups;
        } catch (Throwable th) {
            if (build != null) {
                try {
                    build.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static V3.F retrieveMetadata(MediaSource.Factory factory, MediaItem mediaItem, Clock clock) {
        MetadataRetriever build = new Builder(null, mediaItem).setMediaSourceFactory(factory).setClock(clock).build();
        try {
            V3.F retrieveTrackGroups = build.retrieveTrackGroups();
            build.close();
            return retrieveTrackGroups;
        } catch (Throwable th) {
            if (build != null) {
                try {
                    build.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
