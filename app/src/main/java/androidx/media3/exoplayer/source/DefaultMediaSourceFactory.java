package androidx.media3.exoplayer.source;

import P3.C;
import P3.v;
import android.content.Context;
import android.net.Uri;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.ExternallyLoadedMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.SingleSampleMediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import v0.AbstractC1716B;
import v0.C1739x;
import v0.D;
import v0.F;
import v0.I;
import v0.c0;
import v0.f0;
import v0.r0;

/* loaded from: classes.dex */
public final class DefaultMediaSourceFactory implements MediaSourceFactory {
    private static final String TAG = "DMediaSourceFactory";
    private AdViewProvider adViewProvider;
    private AdsLoader.Provider adsLoaderProvider;
    private DataSource.Factory dataSourceFactory;
    private final DelegateFactoryLoader delegateFactoryLoader;
    private ExternalLoader externalImageLoader;
    private long liveMaxOffsetMs;
    private float liveMaxSpeed;
    private long liveMinOffsetMs;
    private float liveMinSpeed;
    private long liveTargetOffsetMs;
    private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private boolean loadOnlySelectedTracks;
    private boolean parseSubtitlesDuringExtraction;
    private MediaSource.Factory serverSideAdInsertionMediaSourceFactory;
    private S0.q subtitleParserFactory;

    @UnstableApi
    @Deprecated
    public interface AdsLoaderProvider extends AdsLoader.Provider {
    }

    public static final class DelegateFactoryLoader {
        private CmcdConfiguration.Factory cmcdConfigurationFactory;
        private int codecsToParseWithinGopSampleDependencies;
        private DataSource.Factory dataSourceFactory;
        private C downloadExecutorSupplier;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private final I extractorsFactory;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private boolean loadOnlySelectedTracks;
        private S0.q subtitleParserFactory;
        private final Map<Integer, C> mediaSourceFactorySuppliers = new HashMap();
        private final Map<Integer, MediaSource.Factory> mediaSourceFactories = new HashMap();
        private boolean parseSubtitlesDuringExtraction = true;

        public DelegateFactoryLoader(I i2, S0.q qVar) {
            this.extractorsFactory = i2;
            this.subtitleParserFactory = qVar;
        }

        private void ensureAllSuppliersAreLoaded() {
            maybeLoadSupplier(0);
            maybeLoadSupplier(1);
            maybeLoadSupplier(2);
            maybeLoadSupplier(3);
            maybeLoadSupplier(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ MediaSource.Factory lambda$loadSupplier$4(DataSource.Factory factory) {
            return new ProgressiveMediaSource.Factory(factory, this.extractorsFactory).setLoadOnlySelectedTracks(this.loadOnlySelectedTracks);
        }

        private C loadSupplier(int i2) throws ClassNotFoundException {
            C c7;
            C c8;
            C c9;
            final int i7 = 1;
            final int i8 = 2;
            C c10 = this.mediaSourceFactorySuppliers.get(Integer.valueOf(i2));
            if (c10 != null) {
                return c10;
            }
            final DataSource.Factory factory = (DataSource.Factory) v.checkNotNull(this.dataSourceFactory);
            if (i2 != 0) {
                if (i2 == 1) {
                    final Class asSubclass = SsMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
                    c9 = new C() { // from class: androidx.media3.exoplayer.source.d
                        @Override // P3.C
                        public final Object get() {
                            MediaSource.Factory access$300;
                            MediaSource.Factory access$3002;
                            MediaSource.Factory access$3003;
                            switch (i7) {
                                case 0:
                                    access$300 = DefaultMediaSourceFactory.access$300(asSubclass, factory);
                                    return access$300;
                                case 1:
                                    access$3002 = DefaultMediaSourceFactory.access$300(asSubclass, factory);
                                    return access$3002;
                                default:
                                    access$3003 = DefaultMediaSourceFactory.access$300(asSubclass, factory);
                                    return access$3003;
                            }
                        }
                    };
                } else if (i2 == 2) {
                    final Class asSubclass2 = HlsMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
                    c9 = new C() { // from class: androidx.media3.exoplayer.source.d
                        @Override // P3.C
                        public final Object get() {
                            MediaSource.Factory access$300;
                            MediaSource.Factory access$3002;
                            MediaSource.Factory access$3003;
                            switch (i8) {
                                case 0:
                                    access$300 = DefaultMediaSourceFactory.access$300(asSubclass2, factory);
                                    return access$300;
                                case 1:
                                    access$3002 = DefaultMediaSourceFactory.access$300(asSubclass2, factory);
                                    return access$3002;
                                default:
                                    access$3003 = DefaultMediaSourceFactory.access$300(asSubclass2, factory);
                                    return access$3003;
                            }
                        }
                    };
                } else {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            throw new IllegalArgumentException(A.i.f(i2, "Unrecognized contentType: "));
                        }
                        c8 = new o(i8, this, factory);
                        this.mediaSourceFactorySuppliers.put(Integer.valueOf(i2), c8);
                        return c8;
                    }
                    final Class<? extends U> asSubclass3 = Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(MediaSource.Factory.class);
                    c7 = new C() { // from class: androidx.media3.exoplayer.source.e
                        @Override // P3.C
                        public final Object get() {
                            MediaSource.Factory access$200;
                            access$200 = DefaultMediaSourceFactory.access$200(asSubclass3);
                            return access$200;
                        }
                    };
                }
                c8 = c9;
                this.mediaSourceFactorySuppliers.put(Integer.valueOf(i2), c8);
                return c8;
            }
            final Class asSubclass4 = DashMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
            final int i9 = 0;
            c7 = new C() { // from class: androidx.media3.exoplayer.source.d
                @Override // P3.C
                public final Object get() {
                    MediaSource.Factory access$300;
                    MediaSource.Factory access$3002;
                    MediaSource.Factory access$3003;
                    switch (i9) {
                        case 0:
                            access$300 = DefaultMediaSourceFactory.access$300(asSubclass4, factory);
                            return access$300;
                        case 1:
                            access$3002 = DefaultMediaSourceFactory.access$300(asSubclass4, factory);
                            return access$3002;
                        default:
                            access$3003 = DefaultMediaSourceFactory.access$300(asSubclass4, factory);
                            return access$3003;
                    }
                }
            };
            c8 = c7;
            this.mediaSourceFactorySuppliers.put(Integer.valueOf(i2), c8);
            return c8;
        }

        private C maybeLoadSupplier(int i2) {
            try {
                return loadSupplier(i2);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHeifExtractorFlags(int i2) {
            I i7 = this.extractorsFactory;
            if (i7 instanceof C1739x) {
                ((C1739x) i7).setHeifExtractorFlags(i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLoadOnlySelectedTracks(boolean z6) {
            this.loadOnlySelectedTracks = z6;
        }

        public MediaSource.Factory getMediaSourceFactory(int i2) throws ClassNotFoundException {
            MediaSource.Factory factory = this.mediaSourceFactories.get(Integer.valueOf(i2));
            if (factory != null) {
                return factory;
            }
            MediaSource.Factory factory2 = (MediaSource.Factory) loadSupplier(i2).get();
            CmcdConfiguration.Factory factory3 = this.cmcdConfigurationFactory;
            if (factory3 != null) {
                factory2.setCmcdConfigurationFactory(factory3);
            }
            DrmSessionManagerProvider drmSessionManagerProvider = this.drmSessionManagerProvider;
            if (drmSessionManagerProvider != null) {
                factory2.setDrmSessionManagerProvider(drmSessionManagerProvider);
            }
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
            if (loadErrorHandlingPolicy != null) {
                factory2.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            }
            C c7 = this.downloadExecutorSupplier;
            if (c7 != null) {
                factory2.setDownloadExecutor(c7);
            }
            factory2.setSubtitleParserFactory(this.subtitleParserFactory);
            factory2.experimentalParseSubtitlesDuringExtraction(this.parseSubtitlesDuringExtraction);
            factory2.experimentalSetCodecsToParseWithinGopSampleDependencies(this.codecsToParseWithinGopSampleDependencies);
            this.mediaSourceFactories.put(Integer.valueOf(i2), factory2);
            return factory2;
        }

        public int[] getSupportedTypes() {
            ensureAllSuppliersAreLoaded();
            return com.google.common.primitives.a.toArray(this.mediaSourceFactorySuppliers.keySet());
        }

        public void setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
            this.cmcdConfigurationFactory = factory;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setCmcdConfigurationFactory(factory);
            }
        }

        public void setCodecsToParseWithinGopSampleDependencies(int i2) {
            this.codecsToParseWithinGopSampleDependencies = i2;
            this.extractorsFactory.experimentalSetCodecsToParseWithinGopSampleDependencies(i2);
        }

        public void setDataSourceFactory(DataSource.Factory factory) {
            if (factory != this.dataSourceFactory) {
                this.dataSourceFactory = factory;
                this.mediaSourceFactorySuppliers.clear();
                this.mediaSourceFactories.clear();
            }
        }

        public void setDownloadExecutor(C c7) {
            this.downloadExecutorSupplier = c7;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setDownloadExecutor(c7);
            }
        }

        public void setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = drmSessionManagerProvider;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setDrmSessionManagerProvider(drmSessionManagerProvider);
            }
        }

        public void setJpegExtractorFlags(int i2) {
            I i7 = this.extractorsFactory;
            if (i7 instanceof C1739x) {
                ((C1739x) i7).setJpegExtractorFlags(i2);
            }
        }

        public void setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            }
        }

        public void setParseSubtitlesDuringExtraction(boolean z6) {
            this.parseSubtitlesDuringExtraction = z6;
            this.extractorsFactory.experimentalSetTextTrackTranscodingEnabled(z6);
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().experimentalParseSubtitlesDuringExtraction(z6);
            }
        }

        public void setSubtitleParserFactory(S0.q qVar) {
            this.subtitleParserFactory = qVar;
            this.extractorsFactory.setSubtitleParserFactory(qVar);
            Iterator<MediaSource.Factory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setSubtitleParserFactory(qVar);
            }
        }
    }

    public static final class UnknownSubtitlesExtractor implements v0.C {
        private final Format format;

        public UnknownSubtitlesExtractor(Format format) {
            this.format = format;
        }

        @Override // v0.C
        public /* bridge */ /* synthetic */ List getSniffFailureDetails() {
            return AbstractC1716B.a(this);
        }

        @Override // v0.C
        public /* bridge */ /* synthetic */ v0.C getUnderlyingImplementation() {
            return AbstractC1716B.b(this);
        }

        @Override // v0.C
        public void init(F f3) {
            r0 track = f3.track(0, 3);
            f3.seekMap(new f0(androidx.media3.common.C.TIME_UNSET));
            f3.endTracks();
            track.format(this.format.buildUpon().setSampleMimeType(MimeTypes.TEXT_UNKNOWN).setCodecs(this.format.sampleMimeType).build());
        }

        @Override // v0.C
        public int read(D d7, c0 c0Var) throws IOException {
            return d7.skip(Log.LOG_LEVEL_OFF) == -1 ? -1 : 0;
        }

        @Override // v0.C
        public void release() {
        }

        @Override // v0.C
        public void seek(long j7, long j8) {
        }

        @Override // v0.C
        public boolean sniff(D d7) {
            return true;
        }
    }

    public DefaultMediaSourceFactory(Context context) {
        this(new DefaultDataSource.Factory(context));
    }

    public static /* synthetic */ MediaSource.Factory access$200(Class cls) {
        return newInstance(cls);
    }

    public static /* synthetic */ MediaSource.Factory access$300(Class cls, DataSource.Factory factory) {
        return newInstance(cls, factory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ v0.C[] lambda$createMediaSource$0(Format format) {
        return new v0.C[]{this.subtitleParserFactory.supportsFormat(format) ? new S0.l(this.subtitleParserFactory.create(format), null) : new UnknownSubtitlesExtractor(format)};
    }

    private static MediaSource maybeClipMediaSource(MediaItem mediaItem, MediaSource mediaSource) {
        MediaItem.ClippingConfiguration clippingConfiguration = mediaItem.clippingConfiguration;
        return (clippingConfiguration.startPositionUs == 0 && clippingConfiguration.endPositionUs == Long.MIN_VALUE && !clippingConfiguration.relativeToDefaultPosition) ? mediaSource : new ClippingMediaSource.Builder(mediaSource).setStartPositionUs(mediaItem.clippingConfiguration.startPositionUs).setEndPositionUs(mediaItem.clippingConfiguration.endPositionUs).setEnableInitialDiscontinuity(!mediaItem.clippingConfiguration.startsAtKeyFrame).setAllowDynamicClippingUpdates(mediaItem.clippingConfiguration.relativeToLiveWindow).setRelativeToDefaultPosition(mediaItem.clippingConfiguration.relativeToDefaultPosition).setAllowUnseekableMedia(mediaItem.clippingConfiguration.allowUnseekableMedia).build();
    }

    private MediaSource maybeWrapWithAdsMediaSource(MediaItem mediaItem, MediaSource mediaSource) {
        v.checkNotNull(mediaItem.localConfiguration);
        MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
        if (adsConfiguration == null) {
            return mediaSource;
        }
        AdsLoader.Provider provider = this.adsLoaderProvider;
        AdViewProvider adViewProvider = this.adViewProvider;
        if (provider == null || adViewProvider == null) {
            Log.w(TAG, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
            return mediaSource;
        }
        AdsLoader adsLoader = provider.getAdsLoader(adsConfiguration);
        if (adsLoader == null) {
            Log.w(TAG, "Playing media without ads, as no AdsLoader was provided.");
            return mediaSource;
        }
        DataSpec dataSpec = new DataSpec(adsConfiguration.adTagUri);
        Object obj = adsConfiguration.adsId;
        if (obj == null) {
            obj = ImmutableList.of((Uri) mediaItem.mediaId, mediaItem.localConfiguration.uri, adsConfiguration.adTagUri);
        }
        return new AdsMediaSource(mediaSource, dataSpec, obj, this, adsLoader, adViewProvider, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource.Factory newInstance(Class<? extends MediaSource.Factory> cls, DataSource.Factory factory) {
        try {
            return cls.getConstructor(DataSource.Factory.class).newInstance(factory);
        } catch (Exception e3) {
            throw new IllegalStateException(e3);
        }
    }

    public DefaultMediaSourceFactory clearLocalAdInsertionComponents() {
        this.adsLoaderProvider = null;
        this.adViewProvider = null;
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public MediaSource createMediaSource(MediaItem mediaItem) {
        v.checkNotNull(mediaItem.localConfiguration);
        String scheme = mediaItem.localConfiguration.uri.getScheme();
        if (scheme != null && scheme.equals(androidx.media3.common.C.SSAI_SCHEME)) {
            return ((MediaSource.Factory) v.checkNotNull(this.serverSideAdInsertionMediaSourceFactory)).createMediaSource(mediaItem);
        }
        if (Objects.equals(mediaItem.localConfiguration.mimeType, MimeTypes.APPLICATION_EXTERNALLY_LOADED_IMAGE)) {
            return new ExternallyLoadedMediaSource.Factory(Util.msToUs(mediaItem.localConfiguration.imageDurationMs), (ExternalLoader) v.checkNotNull(this.externalImageLoader)).createMediaSource(mediaItem);
        }
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        int inferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType);
        if (mediaItem.localConfiguration.imageDurationMs != androidx.media3.common.C.TIME_UNSET) {
            this.delegateFactoryLoader.setJpegExtractorFlags(1);
            this.delegateFactoryLoader.setHeifExtractorFlags(1);
        }
        try {
            MediaSource.Factory mediaSourceFactory = this.delegateFactoryLoader.getMediaSourceFactory(inferContentTypeForUriAndMimeType);
            MediaItem.LiveConfiguration.Builder buildUpon = mediaItem.liveConfiguration.buildUpon();
            if (mediaItem.liveConfiguration.targetOffsetMs == androidx.media3.common.C.TIME_UNSET) {
                buildUpon.setTargetOffsetMs(this.liveTargetOffsetMs);
            }
            if (mediaItem.liveConfiguration.minPlaybackSpeed == -3.4028235E38f) {
                buildUpon.setMinPlaybackSpeed(this.liveMinSpeed);
            }
            if (mediaItem.liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
                buildUpon.setMaxPlaybackSpeed(this.liveMaxSpeed);
            }
            if (mediaItem.liveConfiguration.minOffsetMs == androidx.media3.common.C.TIME_UNSET) {
                buildUpon.setMinOffsetMs(this.liveMinOffsetMs);
            }
            if (mediaItem.liveConfiguration.maxOffsetMs == androidx.media3.common.C.TIME_UNSET) {
                buildUpon.setMaxOffsetMs(this.liveMaxOffsetMs);
            }
            MediaItem.LiveConfiguration build = buildUpon.build();
            if (!build.equals(mediaItem.liveConfiguration)) {
                mediaItem = mediaItem.buildUpon().setLiveConfiguration(build).build();
            }
            MediaSource createMediaSource = mediaSourceFactory.createMediaSource(mediaItem);
            ImmutableList<MediaItem.SubtitleConfiguration> immutableList = ((MediaItem.LocalConfiguration) Util.castNonNull(mediaItem.localConfiguration)).subtitleConfigurations;
            if (!immutableList.isEmpty()) {
                MediaSource[] mediaSourceArr = new MediaSource[immutableList.size() + 1];
                mediaSourceArr[0] = createMediaSource;
                for (int i2 = 0; i2 < immutableList.size(); i2++) {
                    if (this.parseSubtitlesDuringExtraction) {
                        Format build2 = new Format.Builder().setSampleMimeType(immutableList.get(i2).mimeType).setLanguage(immutableList.get(i2).language).setSelectionFlags(immutableList.get(i2).selectionFlags).setRoleFlags(immutableList.get(i2).roleFlags).setLabel(immutableList.get(i2).label).setId(immutableList.get(i2).id).build();
                        ProgressiveMediaSource.Factory factory = new ProgressiveMediaSource.Factory(this.dataSourceFactory, new c(this, build2));
                        if (this.subtitleParserFactory.supportsFormat(build2)) {
                            build2 = build2.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCodecs(build2.sampleMimeType).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(build2)).build();
                        }
                        ProgressiveMediaSource.Factory loadOnlySelectedTracks = factory.enableLazyLoadingWithSingleTrack(0, build2).setLoadOnlySelectedTracks(this.loadOnlySelectedTracks);
                        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
                        if (loadErrorHandlingPolicy != null) {
                            loadOnlySelectedTracks.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
                        }
                        mediaSourceArr[i2 + 1] = loadOnlySelectedTracks.createMediaSource(MediaItem.fromUri(immutableList.get(i2).uri.toString()));
                    } else {
                        SingleSampleMediaSource.Factory factory2 = new SingleSampleMediaSource.Factory(this.dataSourceFactory);
                        LoadErrorHandlingPolicy loadErrorHandlingPolicy2 = this.loadErrorHandlingPolicy;
                        if (loadErrorHandlingPolicy2 != null) {
                            factory2.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy2);
                        }
                        mediaSourceArr[i2 + 1] = factory2.createMediaSource(immutableList.get(i2), androidx.media3.common.C.TIME_UNSET);
                    }
                }
                createMediaSource = new MergingMediaSource(mediaSourceArr);
            }
            return maybeWrapWithAdsMediaSource(mediaItem, maybeClipMediaSource(mediaItem, createMediaSource));
        } catch (ClassNotFoundException e3) {
            throw new IllegalStateException(e3);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public int[] getSupportedTypes() {
        return this.delegateFactoryLoader.getSupportedTypes();
    }

    @UnstableApi
    @Deprecated
    public DefaultMediaSourceFactory setAdViewProvider(AdViewProvider adViewProvider) {
        this.adViewProvider = adViewProvider;
        return this;
    }

    @UnstableApi
    @Deprecated
    public DefaultMediaSourceFactory setAdsLoaderProvider(AdsLoader.Provider provider) {
        this.adsLoaderProvider = provider;
        return this;
    }

    public DefaultMediaSourceFactory setDataSourceFactory(DataSource.Factory factory) {
        this.dataSourceFactory = factory;
        this.delegateFactoryLoader.setDataSourceFactory(factory);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public MediaSource.Factory setDownloadExecutor(C c7) {
        this.delegateFactoryLoader.setDownloadExecutor(c7);
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setExternalImageLoader(ExternalLoader externalLoader) {
        this.externalImageLoader = externalLoader;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setLiveMaxOffsetMs(long j7) {
        this.liveMaxOffsetMs = j7;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setLiveMaxSpeed(float f3) {
        this.liveMaxSpeed = f3;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setLiveMinOffsetMs(long j7) {
        this.liveMinOffsetMs = j7;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setLiveMinSpeed(float f3) {
        this.liveMinSpeed = f3;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setLiveTargetOffsetMs(long j7) {
        this.liveTargetOffsetMs = j7;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory setLoadOnlySelectedTracks(boolean z6) {
        this.loadOnlySelectedTracks = z6;
        this.delegateFactoryLoader.setLoadOnlySelectedTracks(z6);
        return this;
    }

    public DefaultMediaSourceFactory setLocalAdInsertionComponents(AdsLoader.Provider provider, AdViewProvider adViewProvider) {
        this.adsLoaderProvider = (AdsLoader.Provider) v.checkNotNull(provider);
        this.adViewProvider = (AdViewProvider) v.checkNotNull(adViewProvider);
        return this;
    }

    public DefaultMediaSourceFactory setServerSideAdInsertionMediaSourceFactory(MediaSource.Factory factory) {
        this.serverSideAdInsertionMediaSourceFactory = factory;
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory(Context context, I i2) {
        this(new DefaultDataSource.Factory(context), i2);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    @Deprecated
    public DefaultMediaSourceFactory experimentalParseSubtitlesDuringExtraction(boolean z6) {
        this.parseSubtitlesDuringExtraction = z6;
        this.delegateFactoryLoader.setParseSubtitlesDuringExtraction(z6);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public DefaultMediaSourceFactory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        this.delegateFactoryLoader.setCodecsToParseWithinGopSampleDependencies(i2);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public DefaultMediaSourceFactory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
        this.delegateFactoryLoader.setCmcdConfigurationFactory((CmcdConfiguration.Factory) v.checkNotNull(factory));
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public DefaultMediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
        this.delegateFactoryLoader.setDrmSessionManagerProvider((DrmSessionManagerProvider) v.checkNotNull(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."));
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public DefaultMediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) v.checkNotNull(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.delegateFactoryLoader.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
        return this;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    @UnstableApi
    public DefaultMediaSourceFactory setSubtitleParserFactory(S0.q qVar) {
        this.subtitleParserFactory = (S0.q) v.checkNotNull(qVar);
        this.delegateFactoryLoader.setSubtitleParserFactory(qVar);
        return this;
    }

    @UnstableApi
    public DefaultMediaSourceFactory(DataSource.Factory factory) {
        this(factory, new C1739x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource.Factory newInstance(Class<? extends MediaSource.Factory> cls) {
        try {
            return cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e3) {
            throw new IllegalStateException(e3);
        }
    }

    @UnstableApi
    public DefaultMediaSourceFactory(DataSource.Factory factory, I i2) {
        this.dataSourceFactory = factory;
        S0.e eVar = new S0.e();
        this.subtitleParserFactory = eVar;
        DelegateFactoryLoader delegateFactoryLoader = new DelegateFactoryLoader(i2, eVar);
        this.delegateFactoryLoader = delegateFactoryLoader;
        delegateFactoryLoader.setDataSourceFactory(factory);
        this.liveTargetOffsetMs = androidx.media3.common.C.TIME_UNSET;
        this.liveMinOffsetMs = androidx.media3.common.C.TIME_UNSET;
        this.liveMaxOffsetMs = androidx.media3.common.C.TIME_UNSET;
        this.liveMinSpeed = -3.4028235E38f;
        this.liveMaxSpeed = -3.4028235E38f;
        this.parseSubtitlesDuringExtraction = true;
    }
}
