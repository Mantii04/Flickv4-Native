package androidx.media3.exoplayer.offline;

import P3.v;
import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.exoplayer.offline.Downloader;
import androidx.media3.exoplayer.offline.FilterableManifest;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

@UnstableApi
/* loaded from: classes.dex */
public abstract class SegmentDownloader<M extends FilterableManifest<M>> implements Downloader {
    private static final int BUFFER_SIZE_BYTES = 131072;
    public static final long DEFAULT_MAX_MERGED_SEGMENT_START_TIME_DIFF_MS = 20000;
    private final ArrayList<RunnableFutureTask<?, ?>> activeRunnables;
    private final Cache cache;
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final CacheKeyFactory cacheKeyFactory;
    public final long durationUs;
    private final Executor executor;
    private volatile boolean isCanceled;
    private final DataSpec manifestDataSpec;
    private final ParsingLoadable.Parser<M> manifestParser;
    private final long maxMergedSegmentStartTimeDiffUs;
    private final PriorityTaskManager priorityTaskManager;
    public final long startPositionUs;
    private final ArrayList<StreamKey> streamKeys;

    public static abstract class BaseFactory<M extends FilterableManifest<M>> implements SegmentDownloaderFactory {
        protected final CacheDataSource.Factory cacheDataSourceFactory;
        protected ParsingLoadable.Parser<M> manifestParser;
        protected long startPositionUs;
        protected Executor executor = new androidx.media3.exoplayer.dash.offline.a(0);
        protected long maxMergedSegmentStartTimeDiffMs = 20000;
        protected long durationUs = C.TIME_UNSET;

        public BaseFactory(CacheDataSource.Factory factory, ParsingLoadable.Parser<M> parser) {
            this.cacheDataSourceFactory = factory;
            this.manifestParser = parser;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setDurationUs(long j7) {
            this.durationUs = j7;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setExecutor(Executor executor) {
            this.executor = executor;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setMaxMergedSegmentStartTimeDiffMs(long j7) {
            this.maxMergedSegmentStartTimeDiffMs = j7;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setStartPositionUs(long j7) {
            this.startPositionUs = j7;
            return this;
        }
    }

    public static final class ProgressNotifier implements CacheWriter.ProgressListener {
        private long bytesDownloaded;
        private final long contentLength;
        private final Downloader.ProgressListener progressListener;
        private int segmentsDownloaded;
        private final int totalSegments;

        public ProgressNotifier(Downloader.ProgressListener progressListener, long j7, int i2, long j8, int i7) {
            this.progressListener = progressListener;
            this.contentLength = j7;
            this.totalSegments = i2;
            this.bytesDownloaded = j8;
            this.segmentsDownloaded = i7;
        }

        private float getPercentDownloaded() {
            long j7 = this.contentLength;
            if (j7 != -1 && j7 != 0) {
                return Util.percentFloat(this.bytesDownloaded, j7);
            }
            int i2 = this.totalSegments;
            if (i2 != 0) {
                return Util.percentFloat(this.segmentsDownloaded, i2);
            }
            return -1.0f;
        }

        @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
        public void onProgress(long j7, long j8, long j9) {
            long j10 = this.bytesDownloaded + j9;
            this.bytesDownloaded = j10;
            this.progressListener.onProgress(this.contentLength, j10, getPercentDownloaded());
        }

        public void onSegmentDownloaded() {
            this.segmentsDownloaded++;
            this.progressListener.onProgress(this.contentLength, this.bytesDownloaded, getPercentDownloaded());
        }
    }

    public static class Segment implements Comparable<Segment> {
        public final DataSpec dataSpec;
        public final long startTimeUs;

        public Segment(long j7, DataSpec dataSpec) {
            this.startTimeUs = j7;
            this.dataSpec = dataSpec;
        }

        @Override // java.lang.Comparable
        public int compareTo(Segment segment) {
            return Long.compare(this.startTimeUs, segment.startTimeUs);
        }
    }

    public static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final CacheWriter cacheWriter;
        public final CacheDataSource dataSource;
        private final ProgressNotifier progressNotifier;
        public final Segment segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(Segment segment, CacheDataSource cacheDataSource, ProgressNotifier progressNotifier, byte[] bArr) {
            this.segment = segment;
            this.dataSource = cacheDataSource;
            this.progressNotifier = progressNotifier;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new CacheWriter(cacheDataSource, segment.dataSpec, bArr, progressNotifier);
        }

        @Override // androidx.media3.common.util.RunnableFutureTask
        public void cancelWork() {
            this.cacheWriter.cancel();
        }

        @Override // androidx.media3.common.util.RunnableFutureTask
        public Void doWork() throws IOException {
            this.cacheWriter.cache();
            ProgressNotifier progressNotifier = this.progressNotifier;
            if (progressNotifier == null) {
                return null;
            }
            progressNotifier.onSegmentDownloaded();
            return null;
        }
    }

    public SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> parser, CacheDataSource.Factory factory, Executor executor, long j7) {
        this(mediaItem, parser, factory, executor, j7, 0L, C.TIME_UNSET);
    }

    private <T> void addActiveRunnable(RunnableFutureTask<T, ?> runnableFutureTask) throws InterruptedException {
        synchronized (this.activeRunnables) {
            try {
                if (this.isCanceled) {
                    throw new InterruptedException();
                }
                this.activeRunnables.add(runnableFutureTask);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean canMergeSegments(DataSpec dataSpec, DataSpec dataSpec2) {
        if (!dataSpec.uri.equals(dataSpec2.uri)) {
            return false;
        }
        long j7 = dataSpec.length;
        return j7 != -1 && dataSpec.position + j7 == dataSpec2.position && Objects.equals(dataSpec.key, dataSpec2.key) && dataSpec.flags == dataSpec2.flags && dataSpec.httpMethod == dataSpec2.httpMethod && dataSpec.httpRequestHeaders.equals(dataSpec2.httpRequestHeaders);
    }

    public static DataSpec getCompressibleDataSpec(Uri uri) {
        return new DataSpec.Builder().setUri(uri).setFlags(1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RunnableFutureTask lambda$getManifest$0(final DataSource dataSource, final DataSpec dataSpec) {
        return new RunnableFutureTask<M, IOException>() { // from class: androidx.media3.exoplayer.offline.SegmentDownloader.1
            @Override // androidx.media3.common.util.RunnableFutureTask
            public M doWork() throws IOException {
                return (M) ParsingLoadable.load(dataSource, SegmentDownloader.this.manifestParser, dataSpec, 4);
            }
        };
    }

    private static void mergeSegments(List<Segment> list, CacheKeyFactory cacheKeyFactory, long j7) {
        HashMap hashMap = new HashMap();
        int i2 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            Segment segment = list.get(i7);
            String buildCacheKey = cacheKeyFactory.buildCacheKey(segment.dataSpec);
            Integer num = (Integer) hashMap.get(buildCacheKey);
            Segment segment2 = num == null ? null : list.get(num.intValue());
            if (segment2 == null || segment.startTimeUs > segment2.startTimeUs + j7 || !canMergeSegments(segment2.dataSpec, segment.dataSpec)) {
                hashMap.put(buildCacheKey, Integer.valueOf(i2));
                list.set(i2, segment);
                i2++;
            } else {
                long j8 = segment.dataSpec.length;
                list.set(((Integer) v.checkNotNull(num)).intValue(), new Segment(segment2.startTimeUs, segment2.dataSpec.subrange(0L, j8 != -1 ? segment2.dataSpec.length + j8 : -1L)));
            }
        }
        Util.removeRange(list, i2, list.size());
    }

    private void removeActiveRunnable(RunnableFutureTask<?, ?> runnableFutureTask) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(runnableFutureTask);
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void cancel() {
        synchronized (this.activeRunnables) {
            try {
                this.isCanceled = true;
                for (int i2 = 0; i2 < this.activeRunnables.size(); i2++) {
                    this.activeRunnables.get(i2).cancel(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.offline.Downloader
    public final void download(Downloader.ProgressListener progressListener) throws IOException, InterruptedException {
        CacheDataSource createDataSourceForDownloading;
        byte[] bArr;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            priorityTaskManager.add(-4000);
        }
        try {
            CacheDataSource createDataSourceForDownloading2 = this.cacheDataSourceFactory.createDataSourceForDownloading();
            FilterableManifest manifest = getManifest(createDataSourceForDownloading2, this.manifestDataSpec, false);
            if (!this.streamKeys.isEmpty()) {
                manifest = (FilterableManifest) manifest.copy(this.streamKeys);
            }
            List<Segment> segments = getSegments(createDataSourceForDownloading2, manifest, false);
            Collections.sort(segments);
            mergeSegments(segments, this.cacheKeyFactory, this.maxMergedSegmentStartTimeDiffUs);
            int size = segments.size();
            int i2 = 0;
            long j7 = 0;
            long j8 = 0;
            for (int size2 = segments.size() - 1; size2 >= 0; size2--) {
                DataSpec dataSpec = segments.get(size2).dataSpec;
                String buildCacheKey = this.cacheKeyFactory.buildCacheKey(dataSpec);
                long j9 = dataSpec.length;
                if (j9 == -1) {
                    long a7 = androidx.media3.datasource.cache.b.a(this.cache.getContentMetadata(buildCacheKey));
                    if (a7 != -1) {
                        j9 = a7 - dataSpec.position;
                    }
                }
                long j10 = j9;
                long cachedBytes = this.cache.getCachedBytes(buildCacheKey, dataSpec.position, j10);
                j8 += cachedBytes;
                if (j10 != -1) {
                    if (j10 == cachedBytes) {
                        i2++;
                        segments.remove(size2);
                    }
                    if (j7 != -1) {
                        j7 += j10;
                    }
                } else {
                    j7 = -1;
                }
            }
            ProgressNotifier progressNotifier = progressListener != null ? new ProgressNotifier(progressListener, j7, size, j8, i2) : null;
            arrayDeque.addAll(segments);
            while (!this.isCanceled && !arrayDeque.isEmpty()) {
                PriorityTaskManager priorityTaskManager2 = this.priorityTaskManager;
                if (priorityTaskManager2 != null) {
                    priorityTaskManager2.proceed(-4000);
                }
                if (arrayDeque2.isEmpty()) {
                    createDataSourceForDownloading = this.cacheDataSourceFactory.createDataSourceForDownloading();
                    bArr = new byte[131072];
                } else {
                    SegmentDownloadRunnable segmentDownloadRunnable = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                    createDataSourceForDownloading = segmentDownloadRunnable.dataSource;
                    bArr = segmentDownloadRunnable.temporaryBuffer;
                }
                SegmentDownloadRunnable segmentDownloadRunnable2 = new SegmentDownloadRunnable((Segment) arrayDeque.removeFirst(), createDataSourceForDownloading, progressNotifier, bArr);
                addActiveRunnable(segmentDownloadRunnable2);
                this.executor.execute(segmentDownloadRunnable2);
                for (int size3 = this.activeRunnables.size() - 1; size3 >= 0; size3--) {
                    SegmentDownloadRunnable segmentDownloadRunnable3 = (SegmentDownloadRunnable) this.activeRunnables.get(size3);
                    if (arrayDeque.isEmpty() || segmentDownloadRunnable3.isDone()) {
                        try {
                            segmentDownloadRunnable3.get();
                            removeActiveRunnable(size3);
                            arrayDeque2.addLast(segmentDownloadRunnable3);
                        } catch (ExecutionException e3) {
                            Throwable th = (Throwable) v.checkNotNull(e3.getCause());
                            if (th instanceof PriorityTaskManager.PriorityTooLowException) {
                                arrayDeque.addFirst(segmentDownloadRunnable3.segment);
                                removeActiveRunnable(size3);
                                arrayDeque2.addLast(segmentDownloadRunnable3);
                            } else {
                                if (th instanceof IOException) {
                                    throw ((IOException) th);
                                }
                                Util.sneakyThrow(th);
                            }
                        }
                    }
                }
                segmentDownloadRunnable2.blockUntilStarted();
            }
            for (int i7 = 0; i7 < this.activeRunnables.size(); i7++) {
                this.activeRunnables.get(i7).cancel(true);
            }
            for (int size4 = this.activeRunnables.size() - 1; size4 >= 0; size4--) {
                this.activeRunnables.get(size4).blockUntilFinished();
                removeActiveRunnable(size4);
            }
            PriorityTaskManager priorityTaskManager3 = this.priorityTaskManager;
            if (priorityTaskManager3 != null) {
                priorityTaskManager3.remove(-4000);
            }
        } catch (Throwable th2) {
            for (int i8 = 0; i8 < this.activeRunnables.size(); i8++) {
                this.activeRunnables.get(i8).cancel(true);
            }
            for (int size5 = this.activeRunnables.size() - 1; size5 >= 0; size5--) {
                this.activeRunnables.get(size5).blockUntilFinished();
                removeActiveRunnable(size5);
            }
            PriorityTaskManager priorityTaskManager4 = this.priorityTaskManager;
            if (priorityTaskManager4 != null) {
                priorityTaskManager4.remove(-4000);
            }
            throw th2;
        }
    }

    public final <T> T execute(P3.C c7, boolean z6) throws InterruptedException, IOException {
        if (z6) {
            RunnableFutureTask runnableFutureTask = (RunnableFutureTask) c7.get();
            runnableFutureTask.run();
            try {
                return (T) runnableFutureTask.get();
            } catch (ExecutionException e3) {
                Throwable th = (Throwable) v.checkNotNull(e3.getCause());
                if (th instanceof IOException) {
                    throw ((IOException) th);
                }
                Util.sneakyThrow(e3);
            }
        }
        while (!this.isCanceled) {
            PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
            if (priorityTaskManager != null) {
                priorityTaskManager.proceed(-4000);
            }
            RunnableFutureTask<T, ?> runnableFutureTask2 = (RunnableFutureTask) c7.get();
            addActiveRunnable(runnableFutureTask2);
            this.executor.execute(runnableFutureTask2);
            try {
                return runnableFutureTask2.get();
            } catch (ExecutionException e7) {
                Throwable th2 = (Throwable) v.checkNotNull(e7.getCause());
                if (!(th2 instanceof PriorityTaskManager.PriorityTooLowException)) {
                    if (th2 instanceof IOException) {
                        throw ((IOException) th2);
                    }
                    Util.sneakyThrow(e7);
                }
            } finally {
                runnableFutureTask2.blockUntilFinished();
                removeActiveRunnable((RunnableFutureTask<?, ?>) runnableFutureTask2);
            }
        }
        throw new InterruptedException();
    }

    public final M getManifest(final DataSource dataSource, final DataSpec dataSpec, boolean z6) throws InterruptedException, IOException {
        return (M) execute(new P3.C() { // from class: androidx.media3.exoplayer.offline.j
            @Override // P3.C
            public final Object get() {
                RunnableFutureTask lambda$getManifest$0;
                lambda$getManifest$0 = SegmentDownloader.this.lambda$getManifest$0(dataSource, dataSpec);
                return lambda$getManifest$0;
            }
        }, z6);
    }

    public abstract List<Segment> getSegments(DataSource dataSource, M m7, boolean z6) throws IOException, InterruptedException;

    @Override // androidx.media3.exoplayer.offline.Downloader
    public final void remove() {
        CacheDataSource createDataSourceForRemovingDownload = this.cacheDataSourceFactory.createDataSourceForRemovingDownload();
        try {
            try {
                List<Segment> segments = getSegments(createDataSourceForRemovingDownload, getManifest(createDataSourceForRemovingDownload, this.manifestDataSpec, true), true);
                for (int i2 = 0; i2 < segments.size(); i2++) {
                    this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(segments.get(i2).dataSpec));
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception unused2) {
            }
        } finally {
            this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
        }
    }

    public SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> parser, CacheDataSource.Factory factory, Executor executor, long j7, long j8, long j9) {
        v.checkNotNull(mediaItem.localConfiguration);
        this.manifestDataSpec = getCompressibleDataSpec(mediaItem.localConfiguration.uri);
        this.manifestParser = parser;
        this.streamKeys = new ArrayList<>(mediaItem.localConfiguration.streamKeys);
        this.cacheDataSourceFactory = factory;
        this.executor = executor;
        this.startPositionUs = j8;
        this.durationUs = j9;
        this.cache = (Cache) v.checkNotNull(factory.getCache());
        this.cacheKeyFactory = factory.getCacheKeyFactory();
        this.priorityTaskManager = factory.getUpstreamPriorityTaskManager();
        this.activeRunnables = new ArrayList<>();
        this.maxMergedSegmentStartTimeDiffUs = Util.msToUs(j7);
    }

    private void removeActiveRunnable(int i2) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(i2);
        }
    }
}
