package androidx.media3.exoplayer.source.preload;

import P3.C;
import P3.w;
import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.C0587q;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.PlaybackLooperProvider;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;
import androidx.media3.exoplayer.source.preload.RankingDataComparator;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.Executor;

@UnstableApi
/* loaded from: classes.dex */
public final class DefaultPreloadManager extends BasePreloadManager<Integer, PreloadStatus> {
    private final PreCacheHelper.Factory preCacheHelperFactory;
    private final HandlerThread preCacheThread;
    private final HandlerWrapper preloadHandler;
    private final PlaybackLooperProvider preloadLooperProvider;
    private final PreloadMediaSource.Factory preloadMediaSourceFactory;
    private boolean releaseCalled;
    private final RendererCapabilitiesList rendererCapabilitiesList;
    private final TrackSelector trackSelector;

    public static final class Builder extends BasePreloadManager.BuilderBase<Integer, PreloadStatus> {
        private C bandwidthMeterSupplier;
        private boolean buildCalled;
        private boolean buildExoPlayerCalled;
        private Cache cache;
        private Executor cachingExecutor;
        private Clock clock;
        private final Context context;
        private C loadControlSupplier;
        private PlaybackLooperProvider preloadLooperProvider;
        private C renderersFactorySupplier;
        private TrackSelector.Factory trackSelectorFactory;

        public Builder(Context context, TargetPreloadStatusControl<Integer, PreloadStatus> targetPreloadStatusControl) {
            super(new SimpleRankingDataComparator(), targetPreloadStatusControl, new MediaSourceFactorySupplier(context));
            this.context = context;
            this.preloadLooperProvider = new PlaybackLooperProvider();
            this.trackSelectorFactory = new e();
            this.bandwidthMeterSupplier = new g(context, 1);
            this.renderersFactorySupplier = com.google.common.base.c.memoize(new g(context, 2));
            this.loadControlSupplier = com.google.common.base.c.memoize(new C0587q());
            this.cachingExecutor = new androidx.media3.exoplayer.dash.offline.a(0);
            this.clock = Clock.DEFAULT;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$new$1(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$4(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl lambda$setLoadControl$3(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory lambda$setRenderersFactory$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public ExoPlayer buildExoPlayer() {
            return buildExoPlayer(new ExoPlayer.Builder(this.context));
        }

        public Builder setBandwidthMeter(BandwidthMeter bandwidthMeter) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.bandwidthMeterSupplier = new f(bandwidthMeter, 2);
            return this;
        }

        public Builder setCache(Cache cache) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.cache = cache;
            ((MediaSourceFactorySupplier) this.mediaSourceFactorySupplier).setCache(cache);
            return this;
        }

        public Builder setCachingExecutor(Executor executor) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.cachingExecutor = executor;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setLoadControl(LoadControl loadControl) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.loadControlSupplier = new f(loadControl, 0);
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            ((MediaSourceFactorySupplier) this.mediaSourceFactorySupplier).setCustomMediaSourceFactory(factory);
            return this;
        }

        public Builder setPreloadLooper(Looper looper) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled || looper == Looper.getMainLooper()) ? false : true);
            this.preloadLooperProvider = new PlaybackLooperProvider(looper);
            return this;
        }

        public Builder setRenderersFactory(RenderersFactory renderersFactory) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.renderersFactorySupplier = new f(renderersFactory, 1);
            return this;
        }

        public Builder setTrackSelectorFactory(TrackSelector.Factory factory) {
            P3.v.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.trackSelectorFactory = factory;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.BuilderBase
        public BasePreloadManager<Integer, PreloadStatus> build() {
            P3.v.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new DefaultPreloadManager(this);
        }

        public ExoPlayer buildExoPlayer(ExoPlayer.Builder builder) {
            this.buildExoPlayerCalled = true;
            return builder.setMediaSourceFactory((MediaSource.Factory) this.mediaSourceFactorySupplier.get()).setBandwidthMeter((BandwidthMeter) this.bandwidthMeterSupplier.get()).setRenderersFactory((RenderersFactory) this.renderersFactorySupplier.get()).setLoadControl((LoadControl) this.loadControlSupplier.get()).setPlaybackLooperProvider(this.preloadLooperProvider).setTrackSelector(this.trackSelectorFactory.createTrackSelector(this.context)).build();
        }
    }

    public static class MediaSourceFactorySupplier implements C {
        private Cache cache;
        private final Context context;
        private MediaSource.Factory customMediaSourceFactory;
        private final C defaultMediaSourceFactorySupplier;

        public MediaSourceFactorySupplier(Context context) {
            this.context = context;
            this.defaultMediaSourceFactorySupplier = com.google.common.base.c.memoize(new g(context, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ DefaultMediaSourceFactory lambda$new$0(Context context) {
            return new DefaultMediaSourceFactory(context);
        }

        public void setCache(Cache cache) {
            this.cache = cache;
        }

        public void setCustomMediaSourceFactory(MediaSource.Factory factory) {
            this.customMediaSourceFactory = factory;
        }

        @Override // P3.C
        public MediaSource.Factory get() {
            MediaSource.Factory factory = this.customMediaSourceFactory;
            if (factory != null) {
                return factory;
            }
            DefaultMediaSourceFactory defaultMediaSourceFactory = (DefaultMediaSourceFactory) this.defaultMediaSourceFactorySupplier.get();
            Cache cache = this.cache;
            if (cache != null) {
                defaultMediaSourceFactory.setDataSourceFactory(new CacheDataSource.Factory().setUpstreamDataSourceFactory(new DefaultDataSource.Factory(this.context)).setCache(cache).setCacheWriteDataSinkFactory(null));
            }
            return defaultMediaSourceFactory;
        }
    }

    public final class PreCacheHelperListener implements PreCacheHelper.Listener {
        private PreCacheHelperListener() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onDownloadError$2(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onPreCacheProgress$0(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onPrepareError$1(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onDownloadError(MediaItem mediaItem, IOException iOException) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(new PreloadException(mediaItem, null, iOException), mediaItem, new h(targetPreloadStatusIfCurrentlyPreloading, 2));
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPreCacheProgress(MediaItem mediaItem, long j7, long j8, float f3) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading;
            if (f3 == 100.0f && (targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem)) != null && targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                DefaultPreloadManager.this.onCompleted(mediaItem, new h(targetPreloadStatusIfCurrentlyPreloading, 1));
            }
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPrepareError(MediaItem mediaItem, IOException iOException) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(new PreloadException(mediaItem, null, iOException), mediaItem, new h(targetPreloadStatusIfCurrentlyPreloading, 0));
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPrepared(MediaItem mediaItem, MediaItem mediaItem2) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onMediaSourceUpdated(mediaItem, DefaultPreloadManager.this.preloadMediaSourceFactory.createMediaSource(mediaItem2));
        }
    }

    public final class PreloadMediaSourceControl implements PreloadMediaSource.PreloadControl {
        private PreloadMediaSourceControl() {
        }

        private boolean continueOrCompletePreloading(PreloadMediaSource preloadMediaSource, w wVar) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return false;
            }
            if (wVar.apply(targetPreloadStatusIfCurrentlyPreloading)) {
                return true;
            }
            DefaultPreloadManager.this.onCompleted(preloadMediaSource, new h(targetPreloadStatusIfCurrentlyPreloading, 6));
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$continueOrCompletePreloading$6(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onContinueLoadingRequested$2(long j7, PreloadStatus preloadStatus) {
            if (preloadStatus.stage != 2) {
                return false;
            }
            long j8 = preloadStatus.durationMs;
            return j8 != androidx.media3.common.C.TIME_UNSET && j8 > Util.usToMs(j7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onLoadedToTheEndOfSource$4(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onPreloadError$5(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onSourcePrepared$0(PreloadStatus preloadStatus) {
            return preloadStatus.stage > 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onTracksSelected$1(PreloadStatus preloadStatus) {
            return preloadStatus.stage > 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$onUsedByPlayer$3(PreloadStatus preloadStatus, PreloadStatus preloadStatus2) {
            return preloadStatus2.equals(preloadStatus);
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onContinueLoadingRequested(PreloadMediaSource preloadMediaSource, final long j7) {
            return continueOrCompletePreloading(preloadMediaSource, new w() { // from class: androidx.media3.exoplayer.source.preload.j
                @Override // P3.w
                public final boolean apply(Object obj) {
                    boolean lambda$onContinueLoadingRequested$2;
                    lambda$onContinueLoadingRequested$2 = DefaultPreloadManager.PreloadMediaSourceControl.lambda$onContinueLoadingRequested$2(j7, (DefaultPreloadManager.PreloadStatus) obj);
                    return lambda$onContinueLoadingRequested$2;
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onLoadedToTheEndOfSource(PreloadMediaSource preloadMediaSource) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onCompleted(preloadMediaSource, new h(targetPreloadStatusIfCurrentlyPreloading, 5));
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onLoadingUnableToContinue(PreloadMediaSource preloadMediaSource) {
            BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolderToClear = DefaultPreloadManager.this.getMediaSourceHolderToClear();
            if (mediaSourceHolderToClear == null) {
                return false;
            }
            ((PreloadMediaSource) mediaSourceHolderToClear.getMediaSource()).clear();
            DefaultPreloadManager.this.onSourceCleared();
            return true;
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onPreloadError(PreloadException preloadException, PreloadMediaSource preloadMediaSource) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(preloadException, preloadMediaSource, new h(targetPreloadStatusIfCurrentlyPreloading, 4));
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onSourcePrepared(PreloadMediaSource preloadMediaSource) {
            return continueOrCompletePreloading(preloadMediaSource, new i(0));
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onTracksSelected(PreloadMediaSource preloadMediaSource) {
            return continueOrCompletePreloading(preloadMediaSource, new i(1));
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onUsedByPlayer(PreloadMediaSource preloadMediaSource) {
            PreloadStatus targetPreloadStatusIfCurrentlyPreloading = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(preloadMediaSource);
            if (targetPreloadStatusIfCurrentlyPreloading == null || !targetPreloadStatusIfCurrentlyPreloading.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onSkipped(preloadMediaSource, new h(targetPreloadStatusIfCurrentlyPreloading, 3));
        }
    }

    public final class PreloadMediaSourceHolder extends BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder {
        public PreCacheHelper preCacheHelper;

        public PreloadMediaSourceHolder(MediaItem mediaItem, PreloadMediaSource preloadMediaSource, Integer num) {
            super(mediaItem, num, preloadMediaSource);
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.MediaSourceHolder
        public synchronized void setMediaSource(MediaSource mediaSource) {
            getMediaSource().releasePreloadMediaSource();
            super.setMediaSource(mediaSource);
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.MediaSourceHolder
        public synchronized PreloadMediaSource getMediaSource() {
            return (PreloadMediaSource) super.getMediaSource();
        }
    }

    public static final class PreloadStatus {
        public static final PreloadStatus PRELOAD_STATUS_NOT_PRELOADED = new PreloadStatus(Integer.MIN_VALUE, androidx.media3.common.C.TIME_UNSET, 0);
        public static final PreloadStatus PRELOAD_STATUS_SOURCE_PREPARED = new PreloadStatus(0, androidx.media3.common.C.TIME_UNSET, 0);
        public static final PreloadStatus PRELOAD_STATUS_TRACKS_SELECTED = new PreloadStatus(1, androidx.media3.common.C.TIME_UNSET, 0);
        public static final int STAGE_NOT_PRELOADED = Integer.MIN_VALUE;
        public static final int STAGE_SOURCE_PREPARED = 0;
        public static final int STAGE_SPECIFIED_RANGE_CACHED = -1;
        public static final int STAGE_SPECIFIED_RANGE_LOADED = 2;
        public static final int STAGE_TRACKS_SELECTED = 1;
        public final long durationMs;
        public final int stage;
        public final long startPositionMs;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Stage {
        }

        private PreloadStatus(int i2, long j7, long j8) {
            boolean z6 = true;
            P3.v.checkArgument(j7 == androidx.media3.common.C.TIME_UNSET || j7 >= 0);
            if (j8 != androidx.media3.common.C.TIME_UNSET && j8 < 0) {
                z6 = false;
            }
            P3.v.checkArgument(z6);
            this.stage = i2;
            this.startPositionMs = j7;
            this.durationMs = j8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreCachingCategory() {
            return this.stage == -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreloadingCategory() {
            int i2 = this.stage;
            return i2 == 0 || i2 == 1 || i2 == 2;
        }

        public static PreloadStatus specifiedRangeCached(long j7) {
            return new PreloadStatus(-1, androidx.media3.common.C.TIME_UNSET, j7);
        }

        public static PreloadStatus specifiedRangeLoaded(long j7) {
            return new PreloadStatus(2, androidx.media3.common.C.TIME_UNSET, j7);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PreloadStatus.class == obj.getClass()) {
                PreloadStatus preloadStatus = (PreloadStatus) obj;
                if (this.stage == preloadStatus.stage && this.startPositionMs == preloadStatus.startPositionMs && this.durationMs == preloadStatus.durationMs) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.stage) * 31) + ((int) this.startPositionMs)) * 31) + ((int) this.durationMs);
        }

        public static PreloadStatus specifiedRangeCached(long j7, long j8) {
            return new PreloadStatus(-1, j7, j8);
        }

        public static PreloadStatus specifiedRangeLoaded(long j7, long j8) {
            return new PreloadStatus(2, j7, j8);
        }
    }

    public static final class SimpleRankingDataComparator implements RankingDataComparator<Integer> {
        private int currentPlayingIndex = -1;
        private RankingDataComparator.InvalidationListener invalidationListener;

        public void setCurrentPlayingIndex(int i2) {
            if (i2 != this.currentPlayingIndex) {
                this.currentPlayingIndex = i2;
                RankingDataComparator.InvalidationListener invalidationListener = this.invalidationListener;
                if (invalidationListener != null) {
                    invalidationListener.onRankingDataComparatorInvalidated();
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.preload.RankingDataComparator
        public void setInvalidationListener(RankingDataComparator.InvalidationListener invalidationListener) {
            this.invalidationListener = invalidationListener;
        }

        @Override // java.util.Comparator
        public int compare(Integer num, Integer num2) {
            return Integer.compare(Math.abs(num.intValue() - this.currentPlayingIndex), Math.abs(num2.intValue() - this.currentPlayingIndex));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$preloadMediaSourceHolderInternal$1(PreloadStatus preloadStatus) {
        return preloadStatus.stage == Integer.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releasePreloadUtils$2() {
        this.rendererCapabilitiesList.release();
        this.trackSelector.release();
        this.preloadLooperProvider.releaseLooper();
    }

    private void maybeClearPreloadMediaSource(PreloadMediaSource preloadMediaSource, PreloadStatus preloadStatus) {
        int i2 = preloadStatus.stage;
        if (i2 == Integer.MIN_VALUE || i2 == -1 || i2 == 0) {
            preloadMediaSource.clear();
        }
    }

    private void releasePreCacheUtils() {
        HandlerThread handlerThread = this.preCacheThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    private void releasePreloadUtils() {
        this.preloadHandler.post(new d(this, 0));
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void releaseInternal() {
        this.releaseCalled = true;
        releasePreloadUtils();
        releasePreCacheUtils();
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void releaseMediaSourceHolderInternal(BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolder) {
        if (this.releaseCalled) {
            return;
        }
        super.releaseMediaSourceHolderInternal(mediaSourceHolder);
        P3.v.checkArgument(mediaSourceHolder instanceof PreloadMediaSourceHolder);
        PreloadMediaSourceHolder preloadMediaSourceHolder = (PreloadMediaSourceHolder) mediaSourceHolder;
        preloadMediaSourceHolder.getMediaSource().releasePreloadMediaSource();
        PreCacheHelper preCacheHelper = preloadMediaSourceHolder.preCacheHelper;
        if (preCacheHelper != null) {
            preCacheHelper.release(true);
            preloadMediaSourceHolder.preCacheHelper = null;
        }
    }

    public void setCurrentPlayingIndex(int i2) {
        ((SimpleRankingDataComparator) this.rankingDataComparator).setCurrentPlayingIndex(i2);
    }

    private DefaultPreloadManager(Builder builder) {
        super(new SimpleRankingDataComparator(), builder.targetPreloadStatusControl, (MediaSource.Factory) builder.mediaSourceFactorySupplier.get());
        DefaultRendererCapabilitiesList createRendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory((RenderersFactory) builder.renderersFactorySupplier.get()).createRendererCapabilitiesList();
        this.rendererCapabilitiesList = createRendererCapabilitiesList;
        PlaybackLooperProvider playbackLooperProvider = builder.preloadLooperProvider;
        this.preloadLooperProvider = playbackLooperProvider;
        TrackSelector createTrackSelector = builder.trackSelectorFactory.createTrackSelector(builder.context);
        this.trackSelector = createTrackSelector;
        BandwidthMeter bandwidthMeter = (BandwidthMeter) builder.bandwidthMeterSupplier.get();
        createTrackSelector.init(new e(), bandwidthMeter);
        Looper obtainLooper = playbackLooperProvider.obtainLooper();
        this.preloadMediaSourceFactory = new PreloadMediaSource.Factory((MediaSource.Factory) builder.mediaSourceFactorySupplier.get(), new PreloadMediaSourceControl(), createTrackSelector, bandwidthMeter, createRendererCapabilitiesList.getRendererCapabilities(), (LoadControl) builder.loadControlSupplier.get(), obtainLooper).setClock(builder.clock);
        Cache cache = builder.cache;
        if (cache != null) {
            HandlerThread handlerThread = new HandlerThread("DefaultPreloadManager:PreCacheHelper");
            this.preCacheThread = handlerThread;
            handlerThread.start();
            this.preCacheHelperFactory = new PreCacheHelper.Factory(builder.context, cache, handlerThread.getLooper()).setDownloadExecutor(builder.cachingExecutor).setListener(new PreCacheHelperListener());
        } else {
            this.preCacheThread = null;
            this.preCacheHelperFactory = null;
        }
        this.preloadHandler = builder.clock.createHandler(obtainLooper, null);
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder createMediaSourceHolder(MediaItem mediaItem, MediaSource mediaSource, Integer num) {
        return new PreloadMediaSourceHolder(mediaItem, mediaSource != null ? this.preloadMediaSourceFactory.createMediaSource(mediaSource) : this.preloadMediaSourceFactory.createMediaSource(mediaItem), num);
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void preloadMediaSourceHolderInternal(BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolder, PreloadStatus preloadStatus) {
        if (this.releaseCalled) {
            return;
        }
        P3.v.checkArgument(mediaSourceHolder instanceof PreloadMediaSourceHolder);
        PreloadMediaSourceHolder preloadMediaSourceHolder = (PreloadMediaSourceHolder) mediaSourceHolder;
        PreloadMediaSource mediaSource = preloadMediaSourceHolder.getMediaSource();
        maybeClearPreloadMediaSource(mediaSource, preloadStatus);
        if (preloadStatus.equals(PreloadStatus.PRELOAD_STATUS_NOT_PRELOADED)) {
            onSkipped(mediaSource, new i(2));
        } else {
            if (preloadStatus.stage != -1) {
                mediaSource.preload(Util.msToUs(preloadStatus.startPositionMs));
                return;
            }
            if (preloadMediaSourceHolder.preCacheHelper == null) {
                preloadMediaSourceHolder.preCacheHelper = ((PreCacheHelper.Factory) P3.v.checkNotNull(this.preCacheHelperFactory, "DefaultPreloadManager wasn't configured with a Cache")).create(mediaSourceHolder.mediaItem);
            }
            ((PreCacheHelper) P3.v.checkNotNull(preloadMediaSourceHolder.preCacheHelper)).preCache(preloadStatus.startPositionMs, preloadStatus.durationMs);
        }
    }
}
