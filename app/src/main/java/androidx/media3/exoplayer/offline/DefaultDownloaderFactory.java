package androidx.media3.exoplayer.offline;

import P3.v;
import android.util.SparseArray;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.dash.offline.DashDownloader;
import androidx.media3.exoplayer.hls.offline.HlsDownloader;
import androidx.media3.exoplayer.offline.DownloadRequest;
import androidx.media3.exoplayer.smoothstreaming.offline.SsDownloader;
import java.util.concurrent.Executor;

@UnstableApi
/* loaded from: classes.dex */
public class DefaultDownloaderFactory implements DownloaderFactory {
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final Executor executor;
    private final SparseArray<SegmentDownloaderFactory> segmentDownloaderFactories;

    @Deprecated
    public DefaultDownloaderFactory(CacheDataSource.Factory factory) {
        this(factory, new androidx.media3.exoplayer.dash.offline.a(0));
    }

    private Downloader createSegmentDownloader(DownloadRequest downloadRequest, int i2) {
        SegmentDownloaderFactory segmentDownloaderFactory = getSegmentDownloaderFactory(i2, this.cacheDataSourceFactory);
        MediaItem build = new MediaItem.Builder().setUri(downloadRequest.uri).setStreamKeys(downloadRequest.streamKeys).setCustomCacheKey(downloadRequest.customCacheKey).build();
        DownloadRequest.TimeRange timeRange = downloadRequest.timeRange;
        if (timeRange != null) {
            segmentDownloaderFactory.setStartPositionUs(timeRange.startPositionUs).setDurationUs(downloadRequest.timeRange.durationUs);
        }
        return segmentDownloaderFactory.setExecutor(this.executor).create(build);
    }

    private static SegmentDownloaderFactory createSegmentDownloaderFactory(Class<? extends SegmentDownloaderFactory> cls, CacheDataSource.Factory factory) {
        try {
            return cls.getConstructor(CacheDataSource.Factory.class).newInstance(factory);
        } catch (Exception e3) {
            throw new IllegalStateException("Downloader factory missing", e3);
        }
    }

    private SegmentDownloaderFactory getSegmentDownloaderFactory(int i2, CacheDataSource.Factory factory) {
        if (Util.contains(this.segmentDownloaderFactories, i2)) {
            return this.segmentDownloaderFactories.get(i2);
        }
        try {
            return loadSegmentDownloaderFactory(i2, factory);
        } catch (ClassNotFoundException e3) {
            throw new IllegalStateException(A.i.f(i2, "Module missing for content type "), e3);
        }
    }

    private SegmentDownloaderFactory loadSegmentDownloaderFactory(int i2, CacheDataSource.Factory factory) throws ClassNotFoundException {
        SegmentDownloaderFactory createSegmentDownloaderFactory;
        if (i2 == 0) {
            createSegmentDownloaderFactory = createSegmentDownloaderFactory(DashDownloader.Factory.class.asSubclass(SegmentDownloaderFactory.class), factory);
        } else if (i2 == 1) {
            createSegmentDownloaderFactory = createSegmentDownloaderFactory(SsDownloader.Factory.class.asSubclass(SegmentDownloaderFactory.class), factory);
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException(A.i.f(i2, "Unsupported type: "));
            }
            createSegmentDownloaderFactory = createSegmentDownloaderFactory(HlsDownloader.Factory.class.asSubclass(SegmentDownloaderFactory.class), factory);
        }
        this.segmentDownloaderFactories.put(i2, createSegmentDownloaderFactory);
        return createSegmentDownloaderFactory;
    }

    @Override // androidx.media3.exoplayer.offline.DownloaderFactory
    public Downloader createDownloader(DownloadRequest downloadRequest) {
        int inferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(downloadRequest.uri, downloadRequest.mimeType);
        if (inferContentTypeForUriAndMimeType == 0 || inferContentTypeForUriAndMimeType == 1 || inferContentTypeForUriAndMimeType == 2) {
            return createSegmentDownloader(downloadRequest, inferContentTypeForUriAndMimeType);
        }
        if (inferContentTypeForUriAndMimeType != 4) {
            throw new IllegalArgumentException(A.i.f(inferContentTypeForUriAndMimeType, "Unsupported type: "));
        }
        DownloadRequest.ByteRange byteRange = downloadRequest.byteRange;
        return new ProgressiveDownloader(new MediaItem.Builder().setUri(downloadRequest.uri).setCustomCacheKey(downloadRequest.customCacheKey).build(), this.cacheDataSourceFactory, this.executor, byteRange != null ? byteRange.offset : 0L, byteRange != null ? byteRange.length : -1L);
    }

    public DefaultDownloaderFactory(CacheDataSource.Factory factory, Executor executor) {
        this.cacheDataSourceFactory = (CacheDataSource.Factory) v.checkNotNull(factory);
        this.executor = (Executor) v.checkNotNull(executor);
        this.segmentDownloaderFactories = new SparseArray<>();
    }
}
