package androidx.media3.exoplayer.hls;

import P3.C;
import P3.v;
import Q3.C0248s;
import S0.q;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.util.LongSparseArray;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONObject;

@UnstableApi
/* loaded from: classes.dex */
public final class HlsInterstitialsAdsLoader implements AdsLoader {
    private static final String TAG = "HlsInterstitiaAdsLoader";
    private static final int TARGET_DURATION_MULTIPLIER = 3;
    private final ContentMediaSourceAdDataHolder contentMediaSourceAdDataHolder;
    private final DataSource.Factory dataSourceFactory;
    private boolean isReleased;
    private final List<Listener> listeners;
    private Loader loader;
    private PlayerMessage pendingAssetListResolutionMessage;
    private ExoPlayer player;
    private final PlayerListener playerListener;
    private final Map<Object, AdPlaybackState> resumptionStates;

    public static final class AdsMediaSourceFactory implements MediaSource.Factory {
        private final AdViewProvider adViewProvider;
        private final HlsInterstitialsAdsLoader adsLoader;
        private final MediaSource.Factory mediaSourceFactory;

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, Context context) {
            this(hlsInterstitialsAdsLoader, context, null, adViewProvider);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSource createMediaSource(MediaItem mediaItem) {
            v.checkNotNull(mediaItem.localConfiguration);
            MediaSource createMediaSource = this.mediaSourceFactory.createMediaSource(mediaItem);
            MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
            if (adsConfiguration == null) {
                return createMediaSource;
            }
            if (adsConfiguration.adsId instanceof String) {
                return new AdsMediaSource(createMediaSource, new DataSpec(mediaItem.localConfiguration.adsConfiguration.adTagUri), v.checkNotNull(mediaItem.localConfiguration.adsConfiguration.adsId), this.mediaSourceFactory, this.adsLoader, this.adViewProvider, false);
            }
            throw new IllegalArgumentException("Please use an AdsConfiguration with an adsId of type String when using HlsInterstitialsAdsLoader");
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory experimentalParseSubtitlesDuringExtraction(boolean z6) {
            return androidx.media3.exoplayer.source.h.a(this, z6);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
            return androidx.media3.exoplayer.source.h.b(this, i2);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
            return androidx.media3.exoplayer.source.h.c(this, factory);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setDownloadExecutor(C c7) {
            return androidx.media3.exoplayer.source.h.d(this, c7);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setSubtitleParserFactory(q qVar) {
            return androidx.media3.exoplayer.source.h.e(this, qVar);
        }

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, MediaSource.Factory factory) {
            this(hlsInterstitialsAdsLoader, null, factory, adViewProvider);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public AdsMediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.mediaSourceFactory.setDrmSessionManagerProvider(drmSessionManagerProvider);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public AdsMediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.mediaSourceFactory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            return this;
        }

        private AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, Context context, MediaSource.Factory factory, AdViewProvider adViewProvider) {
            boolean z6 = true;
            v.checkArgument((context == null && factory == null) ? false : true);
            this.adsLoader = hlsInterstitialsAdsLoader;
            factory = factory == null ? new HlsMediaSource.Factory(new DefaultDataSource.Factory((Context) v.checkNotNull(context))) : factory;
            this.mediaSourceFactory = factory;
            this.adViewProvider = adViewProvider;
            int[] supportedTypes = factory.getSupportedTypes();
            int length = supportedTypes.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z6 = false;
                    break;
                } else if (supportedTypes[i2] == 2) {
                    break;
                } else {
                    i2++;
                }
            }
            v.checkState(z6);
        }
    }

    public static class AdsResumptionState {
        private static final String FIELD_ADS_ID = Util.intToStringMaxRadix(0);
        private static final String FIELD_AD_PLAYBACK_STATE = Util.intToStringMaxRadix(1);
        private final AdPlaybackState adPlaybackState;
        public final String adsId;

        public AdsResumptionState(String str, AdPlaybackState adPlaybackState) {
            v.checkArgument(str.equals(adPlaybackState.adsId));
            this.adsId = str;
            this.adPlaybackState = adPlaybackState;
        }

        public static AdsResumptionState fromBundle(Bundle bundle) {
            String str = (String) v.checkNotNull(bundle.getString(FIELD_ADS_ID));
            return new AdsResumptionState(str, AdPlaybackState.fromBundle((Bundle) v.checkNotNull(bundle.getBundle(FIELD_AD_PLAYBACK_STATE))).withAdsId(str));
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AdsResumptionState)) {
                return false;
            }
            AdsResumptionState adsResumptionState = (AdsResumptionState) obj;
            return Objects.equals(this.adsId, adsResumptionState.adsId) && Objects.equals(this.adPlaybackState, adsResumptionState.adPlaybackState);
        }

        public int hashCode() {
            return Objects.hash(this.adsId, this.adPlaybackState);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putString(FIELD_ADS_ID, this.adsId);
            bundle.putBundle(FIELD_AD_PLAYBACK_STATE, this.adPlaybackState.toBundle());
            return bundle;
        }
    }

    public static final class Asset {
        public final long durationUs;
        public final Uri uri;

        public Asset(Uri uri, long j7) {
            this.uri = uri;
            this.durationUs = j7;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Asset)) {
                return false;
            }
            Asset asset = (Asset) obj;
            return this.durationUs == asset.durationUs && Objects.equals(this.uri, asset.uri);
        }

        public int hashCode() {
            return Objects.hash(this.uri, Long.valueOf(this.durationUs));
        }
    }

    public static final class AssetList {
        static final AssetList EMPTY = new AssetList(ImmutableList.of(), null);
        public final ImmutableList<Asset> assets;
        public final AdPlaybackState.SkipInfo skipInfo;

        public AssetList(ImmutableList<Asset> immutableList, AdPlaybackState.SkipInfo skipInfo) {
            this.assets = immutableList;
            this.skipInfo = skipInfo;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssetList)) {
                return false;
            }
            AssetList assetList = (AssetList) obj;
            return Objects.equals(this.assets, assetList.assets) && Objects.equals(this.skipInfo, assetList.skipInfo);
        }

        public int hashCode() {
            return Objects.hash(this.assets, this.skipInfo);
        }
    }

    public static class AssetListData {
        private final int adGroupIndex;
        private final int adIndexInAdGroup;
        private final Object adsId;
        private final HlsMediaPlaylist.Interstitial interstitial;
        private final MediaItem mediaItem;
        private final long targetDurationUs;

        public AssetListData(MediaItem mediaItem, Object obj, HlsMediaPlaylist.Interstitial interstitial, int i2, int i7, long j7) {
            v.checkArgument(interstitial.assetListUri != null);
            this.mediaItem = mediaItem;
            this.adsId = obj;
            this.adGroupIndex = i2;
            this.adIndexInAdGroup = i7;
            this.targetDurationUs = j7;
            this.interstitial = interstitial;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AssetListData)) {
                return false;
            }
            AssetListData assetListData = (AssetListData) obj;
            return this.adGroupIndex == assetListData.adGroupIndex && this.adIndexInAdGroup == assetListData.adIndexInAdGroup && this.targetDurationUs == assetListData.targetDurationUs && Objects.equals(this.mediaItem, assetListData.mediaItem) && Objects.equals(this.adsId, assetListData.adsId) && Objects.equals(this.interstitial, assetListData.interstitial);
        }

        public int hashCode() {
            return (int) (((((((this.interstitial.hashCode() + ((this.adsId.hashCode() + (this.mediaItem.hashCode() * 31)) * 31)) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup) * 31) + this.targetDurationUs);
        }
    }

    public static final class ContentMediaSourceAdDataHolder {
        private final Map<Object, AdsLoader.EventListener> activeEventListeners = new HashMap();
        private final Map<Object, AdPlaybackState> activeAdPlaybackStates = new HashMap();
        private final Map<Object, Set<String>> insertedInterstitialIds = new HashMap();
        private final Map<Object, TreeMap<Long, AssetListData>> unresolvedAssetLists = new HashMap();
        private final Set<Object> contentSourceAwaitingFirstAdToStart = new HashSet();
        private final Set<Object> unsupportedAdsIds = new HashSet();

        public void addInsertedInterstitialId(Object obj, String str) {
            Set<String> set = this.insertedInterstitialIds.get(obj);
            if (set != null) {
                set.add(str);
            }
        }

        public void addUnsupportedContentMediaSource(Object obj) {
            this.unsupportedAdsIds.add(obj);
        }

        public boolean awaitingFirstAdToStartFor(Object obj) {
            return this.contentSourceAwaitingFirstAdToStart.contains(obj);
        }

        public AdPlaybackState getAdPlaybackState(Object obj) {
            return this.activeAdPlaybackStates.get(obj);
        }

        public Collection<AdPlaybackState> getAdPlaybackStates() {
            return this.activeAdPlaybackStates.values();
        }

        public AdsLoader.EventListener getEventListener(Object obj) {
            return this.activeEventListeners.get(obj);
        }

        public int getUnresolvedAssetListCount(Object obj) {
            TreeMap<Long, AssetListData> treeMap = this.unresolvedAssetLists.get(obj);
            if (treeMap != null) {
                return treeMap.size();
            }
            return 0;
        }

        public Map<Long, AssetListData> getUnresolvedAssetLists(Object obj) {
            return this.unresolvedAssetLists.get(obj);
        }

        public boolean isIdle() {
            return this.activeEventListeners.isEmpty();
        }

        public boolean isInsertedInterstitialId(Object obj, String str) {
            Set<String> set = this.insertedInterstitialIds.get(obj);
            return set != null && set.contains(str);
        }

        public boolean isManagedContentSource(Object obj) {
            return this.activeAdPlaybackStates.containsKey(obj);
        }

        public boolean isStartedContentMediaSource(Object obj) {
            return this.activeEventListeners.containsKey(obj);
        }

        public boolean isUnsupportedContentMediaSource(Object obj) {
            return this.unsupportedAdsIds.contains(obj);
        }

        public void notifyAdStarted(Object obj) {
            this.contentSourceAwaitingFirstAdToStart.remove(obj);
        }

        public AdPlaybackState putAdPlaybackState(Object obj, AdPlaybackState adPlaybackState) {
            return this.activeAdPlaybackStates.put(obj, adPlaybackState);
        }

        public AdsLoader.EventListener startContentSource(Object obj, AdsLoader.EventListener eventListener) {
            this.insertedInterstitialIds.put(obj, new HashSet());
            this.unresolvedAssetLists.put(obj, new TreeMap<>());
            this.contentSourceAwaitingFirstAdToStart.add(obj);
            return this.activeEventListeners.put(obj, eventListener);
        }

        public AdPlaybackState stopContentSource(Object obj) {
            this.activeEventListeners.remove(obj);
            this.insertedInterstitialIds.remove(obj);
            this.unresolvedAssetLists.remove(obj);
            this.unsupportedAdsIds.remove(obj);
            this.contentSourceAwaitingFirstAdToStart.remove(obj);
            return this.activeAdPlaybackStates.remove(obj);
        }
    }

    public interface Listener {
        void onAdCompleted(MediaItem mediaItem, Object obj, int i2, int i7);

        void onAdSkipped(MediaItem mediaItem, Object obj, int i2, int i7);

        void onAdStarted(MediaItem mediaItem, Object obj, int i2, int i7);

        void onAssetListLoadCompleted(MediaItem mediaItem, Object obj, int i2, int i7, AssetList assetList, JSONObject jSONObject);

        void onAssetListLoadFailed(MediaItem mediaItem, Object obj, int i2, int i7, IOException iOException, boolean z6);

        void onAssetListLoadStarted(MediaItem mediaItem, Object obj, int i2, int i7);

        void onContentTimelineChanged(MediaItem mediaItem, Object obj, Timeline timeline);

        void onMetadata(MediaItem mediaItem, Object obj, int i2, int i7, Metadata metadata);

        void onPrepareCompleted(MediaItem mediaItem, Object obj, int i2, int i7);

        void onPrepareError(MediaItem mediaItem, Object obj, int i2, int i7, IOException iOException);

        void onStart(MediaItem mediaItem, Object obj, AdViewProvider adViewProvider);

        void onStop(MediaItem mediaItem, Object obj, AdPlaybackState adPlaybackState);
    }

    public class LoaderCallback implements Loader.Callback<ParsingLoadable<Pair<AssetList, JSONObject>>> {
        private final AssetListData assetListData;
        private final Timeline.Window window = new Timeline.Window();

        public LoaderCallback(AssetListData assetListData) {
            this.assetListData = assetListData;
        }

        private void handleAssetResolutionFailed(final IOException iOException, final boolean z6) {
            HlsInterstitialsAdsLoader.this.notifyAssetResolutionFailed(this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup);
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.e
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    HlsInterstitialsAdsLoader.LoaderCallback.this.lambda$handleAssetResolutionFailed$2(iOException, z6, (HlsInterstitialsAdsLoader.Listener) obj);
                }
            });
            maybeContinueAssetResolution();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$handleAssetResolutionFailed$2(IOException iOException, boolean z6, Listener listener) {
            listener.onAssetListLoadFailed(this.assetListData.mediaItem, this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup, iOException, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLoadCompleted$0(Listener listener) {
            listener.onAssetListLoadFailed(this.assetListData.mediaItem, this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup, null, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLoadCompleted$1(AssetList assetList, Pair pair, Listener listener) {
            listener.onAssetListLoadCompleted(this.assetListData.mediaItem, this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup, assetList, (JSONObject) pair.second);
        }

        private void maybeContinueAssetResolution() {
            ExoPlayer exoPlayer = HlsInterstitialsAdsLoader.this.player;
            if (exoPlayer == null || exoPlayer.getPlaybackState() == 1 || !this.assetListData.mediaItem.equals(exoPlayer.getCurrentMediaItem())) {
                return;
            }
            long msToUs = Util.msToUs(exoPlayer.getContentPosition());
            Timeline currentTimeline = exoPlayer.getCurrentTimeline();
            int currentMediaItemIndex = exoPlayer.getCurrentMediaItemIndex();
            HlsInterstitialsAdsLoader.this.maybeExecuteOrSetNextAssetListResolutionMessage(this.assetListData.adsId, currentTimeline, currentMediaItemIndex, currentTimeline.getWindow(currentMediaItemIndex, this.window).positionInFirstPeriodUs, msToUs);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final /* synthetic */ void onLoadStarted(ParsingLoadable<Pair<AssetList, JSONObject>> parsingLoadable, long j7, long j8, int i2) {
            androidx.media3.exoplayer.upstream.i.a(this, parsingLoadable, j7, j8, i2);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(ParsingLoadable<Pair<AssetList, JSONObject>> parsingLoadable, long j7, long j8, boolean z6) {
            handleAssetResolutionFailed(null, true);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(ParsingLoadable<Pair<AssetList, JSONObject>> parsingLoadable, long j7, long j8) {
            Pair pair = (Pair) v.checkNotNull(parsingLoadable.getResult());
            AssetList assetList = (AssetList) pair.first;
            AdPlaybackState adPlaybackState = HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.getAdPlaybackState(this.assetListData.adsId);
            if ((adPlaybackState != null ? adPlaybackState.getAdGroup(this.assetListData.adGroupIndex).states[this.assetListData.adIndexInAdGroup] : 4) != 0) {
                maybeContinueAssetResolution();
                HlsInterstitialsAdsLoader.this.notifyListeners(new c(this, 2));
                return;
            }
            int i2 = 0;
            if (assetList == null || assetList.assets.isEmpty()) {
                handleAssetResolutionFailed(new IOException("empty asset list"), false);
                return;
            }
            AdPlaybackState.AdGroup adGroup = ((AdPlaybackState) v.checkNotNull(adPlaybackState)).getAdGroup(this.assetListData.adGroupIndex);
            long j9 = adGroup.durationsUs[this.assetListData.adIndexInAdGroup];
            long j10 = androidx.media3.common.C.TIME_UNSET;
            long j11 = 0;
            long j12 = j9 != androidx.media3.common.C.TIME_UNSET ? adGroup.durationsUs[this.assetListData.adIndexInAdGroup] : 0L;
            int i7 = adGroup.count;
            if (assetList.assets.size() > 1) {
                adPlaybackState = adPlaybackState.withAdCount(this.assetListData.adGroupIndex, (assetList.assets.size() + i7) - 1);
                adGroup = adPlaybackState.getAdGroup(this.assetListData.adGroupIndex);
            }
            int i8 = this.assetListData.adIndexInAdGroup;
            long[] jArr = (long[]) adGroup.durationsUs.clone();
            while (i2 < assetList.assets.size()) {
                Asset asset = assetList.assets.get(i2);
                if (i2 > 0) {
                    i8 = (i7 + i2) - 1;
                }
                long j13 = j10;
                long j14 = asset.durationUs;
                jArr[i8] = j14;
                j11 += j14;
                adPlaybackState = adPlaybackState.withAvailableAdMediaItem(this.assetListData.adGroupIndex, i8, new MediaItem.Builder().setUri(asset.uri).setMimeType(MimeTypes.APPLICATION_M3U8).build());
                if (assetList.skipInfo != null) {
                    adPlaybackState = adPlaybackState.withAdSkipInfo(this.assetListData.adGroupIndex, i8, assetList.skipInfo);
                }
                i2++;
                j10 = j13;
            }
            long j15 = j10;
            AdPlaybackState withAdDurationsUs = adPlaybackState.withAdDurationsUs(this.assetListData.adGroupIndex, jArr);
            if (this.assetListData.interstitial.resumeOffsetUs == j15) {
                withAdDurationsUs = withAdDurationsUs.withContentResumeOffsetUs(this.assetListData.adGroupIndex, (withAdDurationsUs.getAdGroup(this.assetListData.adGroupIndex).contentResumeOffsetUs - j12) + j11);
            }
            HlsInterstitialsAdsLoader.this.putAndNotifyAdPlaybackStateUpdate(this.assetListData.adsId, withAdDurationsUs);
            HlsInterstitialsAdsLoader.this.notifyListeners(new f(this, assetList, pair, 0));
            maybeContinueAssetResolution();
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<Pair<AssetList, JSONObject>> parsingLoadable, long j7, long j8, IOException iOException, int i2) {
            handleAssetResolutionFailed(iOException, false);
            return Loader.DONT_RETRY;
        }
    }

    public class PlayerListener implements Player.Listener {
        private final Timeline.Period period;

        private PlayerListener() {
            this.period = new Timeline.Period();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onPlaybackStateChanged$4(Player player, Object obj, Listener listener) {
            listener.onAdStarted((MediaItem) v.checkNotNull(player.getCurrentMediaItem()), obj, player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onPositionDiscontinuity$1(Player.PositionInfo positionInfo, Object obj, Listener listener) {
            listener.onAdStarted((MediaItem) v.checkNotNull(positionInfo.mediaItem), obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onPositionDiscontinuity$2(Player.PositionInfo positionInfo, Object obj, Listener listener) {
            listener.onAdStarted((MediaItem) v.checkNotNull(positionInfo.mediaItem), obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onPositionDiscontinuity$3(Player.PositionInfo positionInfo, Object obj, Listener listener) {
            listener.onAdSkipped((MediaItem) v.checkNotNull(positionInfo.mediaItem), obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }

        private void markAdAsPlayedAndNotifyListeners(MediaItem mediaItem, Object obj, int i2, int i7) {
            AdPlaybackState adPlaybackState = HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
            if (adPlaybackState == null || adPlaybackState.getAdGroup(i2).states[i7] != 1) {
                return;
            }
            HlsInterstitialsAdsLoader.this.putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState.withPlayedAd(i2, i7));
            HlsInterstitialsAdsLoader.this.notifyListeners(new i(mediaItem, obj, i2, i7, 0));
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            androidx.media3.common.h.a(this, audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAudioSessionIdChanged(int i2) {
            androidx.media3.common.h.b(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            androidx.media3.common.h.c(this, commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onCues(CueGroup cueGroup) {
            androidx.media3.common.h.d(this, cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            androidx.media3.common.h.f(this, deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onDeviceVolumeChanged(int i2, boolean z6) {
            androidx.media3.common.h.g(this, i2, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onEvents(Player player, Player.Events events) {
            androidx.media3.common.h.h(this, player, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onIsLoadingChanged(boolean z6) {
            androidx.media3.common.h.i(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onIsPlayingChanged(boolean z6) {
            androidx.media3.common.h.j(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onLoadingChanged(boolean z6) {
            androidx.media3.common.h.k(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j7) {
            androidx.media3.common.h.l(this, j7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i2) {
            androidx.media3.common.h.m(this, mediaItem, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.h.n(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(Metadata metadata) {
            ExoPlayer exoPlayer = HlsInterstitialsAdsLoader.this.player;
            if (exoPlayer == null || !exoPlayer.isPlayingAd()) {
                return;
            }
            exoPlayer.getCurrentTimeline().getPeriod(exoPlayer.getCurrentPeriodIndex(), this.period);
            Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.isManagedContentSource(obj)) {
                return;
            }
            HlsInterstitialsAdsLoader.this.notifyListeners(new j((MediaItem) v.checkNotNull(exoPlayer.getCurrentMediaItem()), obj, exoPlayer.getCurrentAdGroupIndex(), exoPlayer.getCurrentAdIndexInAdGroup(), metadata, 0));
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i2) {
            androidx.media3.common.h.p(this, z6, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            androidx.media3.common.h.q(this, playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i2) {
            ExoPlayer exoPlayer = HlsInterstitialsAdsLoader.this.player;
            if (i2 == 3 && exoPlayer != null && exoPlayer.isPlayingAd()) {
                exoPlayer.getCurrentTimeline().getPeriod(exoPlayer.getCurrentPeriodIndex(), this.period);
                Object obj = this.period.adPlaybackState.adsId;
                if (obj == null || !HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.awaitingFirstAdToStartFor(obj)) {
                    return;
                }
                HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.notifyAdStarted(obj);
                HlsInterstitialsAdsLoader.this.notifyListeners(new h(0, exoPlayer, obj));
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i2) {
            androidx.media3.common.h.s(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            androidx.media3.common.h.t(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            androidx.media3.common.h.u(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerStateChanged(boolean z6, int i2) {
            androidx.media3.common.h.v(this, z6, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.h.w(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPositionDiscontinuity(int i2) {
            androidx.media3.common.h.x(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onRenderedFirstFrame() {
            androidx.media3.common.h.z(this);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onRepeatModeChanged(int i2) {
            androidx.media3.common.h.A(this, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSeekBackIncrementChanged(long j7) {
            androidx.media3.common.h.B(this, j7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSeekForwardIncrementChanged(long j7) {
            androidx.media3.common.h.C(this, j7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            androidx.media3.common.h.D(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            androidx.media3.common.h.E(this, z6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSurfaceSizeChanged(int i2, int i7) {
            androidx.media3.common.h.F(this, i2, i7);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTimelineChanged(Timeline timeline, int i2) {
            if (timeline.isEmpty()) {
                HlsInterstitialsAdsLoader.this.cancelPendingAssetListResolutionMessage();
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            androidx.media3.common.h.H(this, trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTracksChanged(Tracks tracks) {
            androidx.media3.common.h.I(this, tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            androidx.media3.common.h.J(this, videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onVolumeChanged(float f3) {
            androidx.media3.common.h.K(this, f3);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onCues(List list) {
            androidx.media3.common.h.e(this, list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(final Player.PositionInfo positionInfo, final Player.PositionInfo positionInfo2, int i2) {
            if (HlsInterstitialsAdsLoader.this.player == null || positionInfo.mediaItem == null || positionInfo2.mediaItem == null || i2 == 4 || i2 == 6 || i2 == 5) {
                HlsInterstitialsAdsLoader.this.cancelPendingAssetListResolutionMessage();
                return;
            }
            Timeline currentTimeline = HlsInterstitialsAdsLoader.this.player.getCurrentTimeline();
            currentTimeline.getPeriod(positionInfo2.periodIndex, this.period);
            final Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.isManagedContentSource(obj)) {
                HlsInterstitialsAdsLoader.this.cancelPendingAssetListResolutionMessage();
                return;
            }
            if (i2 == 0) {
                int i7 = positionInfo.adGroupIndex;
                if (i7 != -1) {
                    markAdAsPlayedAndNotifyListeners(positionInfo.mediaItem, obj, i7, positionInfo.adIndexInAdGroup);
                }
                if (positionInfo2.adIndexInAdGroup != -1) {
                    HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.notifyAdStarted(obj);
                    final int i8 = 0;
                    HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.g
                        @Override // androidx.media3.common.util.Consumer
                        public final void accept(Object obj2) {
                            HlsInterstitialsAdsLoader.Listener listener = (HlsInterstitialsAdsLoader.Listener) obj2;
                            switch (i8) {
                                case 0:
                                    HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$1(positionInfo2, obj, listener);
                                    break;
                                case 1:
                                    HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$2(positionInfo2, obj, listener);
                                    break;
                                default:
                                    HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$3(positionInfo2, obj, listener);
                                    break;
                            }
                        }
                    });
                    return;
                }
                return;
            }
            if (i2 != 1 && i2 != 2) {
                if (positionInfo.adGroupIndex == -1 || i2 != 3) {
                    return;
                }
                final int i9 = 2;
                HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.g
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj2) {
                        HlsInterstitialsAdsLoader.Listener listener = (HlsInterstitialsAdsLoader.Listener) obj2;
                        switch (i9) {
                            case 0:
                                HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$1(positionInfo, obj, listener);
                                break;
                            case 1:
                                HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$2(positionInfo, obj, listener);
                                break;
                            default:
                                HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$3(positionInfo, obj, listener);
                                break;
                        }
                    }
                });
                return;
            }
            long msToUs = Util.msToUs(positionInfo2.contentPositionMs);
            long unresolvedAssetListWindowPositionForContentPositionUs = HlsInterstitialsAdsLoader.this.getUnresolvedAssetListWindowPositionForContentPositionUs(msToUs, currentTimeline, positionInfo2.periodIndex);
            HlsInterstitialsAdsLoader.this.maybeExecuteOrSetNextAssetListResolutionMessage(obj, currentTimeline, positionInfo2.mediaItemIndex, -this.period.positionInWindowUs, unresolvedAssetListWindowPositionForContentPositionUs != androidx.media3.common.C.TIME_UNSET ? unresolvedAssetListWindowPositionForContentPositionUs : msToUs);
            if (positionInfo.adIndexInAdGroup != -1 || positionInfo2.adIndexInAdGroup == -1) {
                return;
            }
            final int i10 = 1;
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.g
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj2) {
                    HlsInterstitialsAdsLoader.Listener listener = (HlsInterstitialsAdsLoader.Listener) obj2;
                    switch (i10) {
                        case 0:
                            HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$1(positionInfo2, obj, listener);
                            break;
                        case 1:
                            HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$2(positionInfo2, obj, listener);
                            break;
                        default:
                            HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$3(positionInfo2, obj, listener);
                            break;
                    }
                }
            });
        }
    }

    public static class RunnableAtPosition implements Runnable {
        public final long adStartTimeUs;
        private final Runnable runnable;
        private final long targetDurationUs;

        public RunnableAtPosition(long j7, long j8, Runnable runnable) {
            this.adStartTimeUs = j7;
            this.targetDurationUs = j8;
            this.runnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runnable.run();
        }
    }

    public HlsInterstitialsAdsLoader(Context context) {
        this(new DefaultDataSource.Factory(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelPendingAssetListResolutionMessage() {
        PlayerMessage playerMessage = this.pendingAssetListResolutionMessage;
        if (playerMessage != null) {
            playerMessage.cancel();
            this.pendingAssetListResolutionMessage = null;
        }
    }

    private LongSparseArray<List<HlsMediaPlaylist.Interstitial>> filterAndSortWithResolvedStartPositions(ImmutableList<HlsMediaPlaylist.Interstitial> immutableList, Object obj, HlsMediaPlaylist hlsMediaPlaylist, long j7, boolean z6) {
        LongSparseArray<List<HlsMediaPlaylist.Interstitial>> longSparseArray = new LongSparseArray<>();
        for (int i2 = 0; i2 < immutableList.size(); i2++) {
            HlsMediaPlaylist.Interstitial interstitial = immutableList.get(i2);
            if (!this.contentMediaSourceAdDataHolder.isInsertedInterstitialId(obj, interstitial.id) && (!z6 || !interstitial.cue.contains("POST"))) {
                long resolveInterstitialStartTimeUs = resolveInterstitialStartTimeUs(interstitial, hlsMediaPlaylist, j7);
                List<HlsMediaPlaylist.Interstitial> arrayList = longSparseArray.indexOfKey(resolveInterstitialStartTimeUs) < 0 ? new ArrayList<>() : longSparseArray.get(resolveInterstitialStartTimeUs);
                longSparseArray.put(resolveInterstitialStartTimeUs, arrayList);
                arrayList.add(interstitial);
            }
        }
        return longSparseArray;
    }

    private AdPlaybackState getAdPlaybackState() {
        Object obj;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return null;
        }
        Timeline currentTimeline = exoPlayer.getCurrentTimeline();
        if (currentTimeline.isEmpty() || (obj = currentTimeline.getPeriod(exoPlayer.getCurrentPeriodIndex(), new Timeline.Period()).adPlaybackState.adsId) == null) {
            return null;
        }
        return this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
    }

    public static long getClosestSegmentBoundaryUs(long j7, HlsMediaPlaylist hlsMediaPlaylist) {
        long j8;
        long j9 = j7 - hlsMediaPlaylist.startTimeUs;
        if (j9 <= 0 || hlsMediaPlaylist.segments.isEmpty()) {
            return hlsMediaPlaylist.startTimeUs;
        }
        long j10 = hlsMediaPlaylist.durationUs;
        if (j9 >= j10) {
            j8 = hlsMediaPlaylist.startTimeUs;
        } else {
            int size = hlsMediaPlaylist.segments.size() - 1;
            int i2 = 0;
            int i7 = 0;
            while (i2 <= size) {
                i7 = b.c.c(size, i2, 2, i2);
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i7);
                long j11 = segment.relativeStartTimeUs;
                long j12 = segment.durationUs + j11;
                if (j9 >= j11 && j9 <= j12) {
                    break;
                }
                if (j9 < j11) {
                    size = i7 - 1;
                } else {
                    i2 = i7 + 1;
                }
            }
            HlsMediaPlaylist.Segment segment2 = hlsMediaPlaylist.segments.get(i7);
            long j13 = segment2.relativeStartTimeUs;
            if (j9 - j13 < Math.abs(j9 - (j13 + segment2.durationUs))) {
                j8 = hlsMediaPlaylist.startTimeUs;
                j10 = segment2.relativeStartTimeUs;
            } else {
                j8 = hlsMediaPlaylist.startTimeUs + segment2.relativeStartTimeUs;
                j10 = segment2.durationUs;
            }
        }
        return j8 + j10;
    }

    private Loader getLoader() {
        if (this.loader == null) {
            this.loader = new Loader("HLS-interstitials");
        }
        return this.loader;
    }

    private static int getLowestValidAdGroupInsertionIndex(AdPlaybackState adPlaybackState) {
        int i2 = adPlaybackState.adGroupCount;
        while (true) {
            i2--;
            int i7 = adPlaybackState.removedAdGroupCount;
            if (i2 < i7) {
                return i7;
            }
            for (int i8 : adPlaybackState.getAdGroup(i2).states) {
                if (i8 != 0) {
                    return i2 + 1;
                }
            }
        }
    }

    private RunnableAtPosition getNextAssetResolution(Object obj, long j7) {
        final Map map = (Map) v.checkNotNull(this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(obj));
        for (final Long l7 : map.keySet()) {
            if (j7 <= l7.longValue()) {
                final AssetListData assetListData = (AssetListData) v.checkNotNull((AssetListData) map.get(l7));
                return new RunnableAtPosition(l7.longValue(), assetListData.targetDurationUs, new Runnable() { // from class: androidx.media3.exoplayer.hls.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        HlsInterstitialsAdsLoader.this.lambda$getNextAssetResolution$7(map, l7, assetListData);
                    }
                });
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getUnresolvedAssetListWindowPositionForContentPositionUs(long j7, Timeline timeline, int i2) {
        int adGroupIndexForPositionUs;
        Timeline.Period period = timeline.getPeriod(i2, new Timeline.Period());
        long j8 = j7 - period.positionInWindowUs;
        AdPlaybackState adPlaybackState = period.adPlaybackState;
        if (adPlaybackState.adsId != null && (adGroupIndexForPositionUs = adPlaybackState.getAdGroupIndexForPositionUs(j8, androidx.media3.common.C.TIME_UNSET)) != -1) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(adGroupIndexForPositionUs);
            Map<Long, AssetListData> unresolvedAssetLists = this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(adPlaybackState.adsId);
            if (unresolvedAssetLists != null && unresolvedAssetLists.containsKey(Long.valueOf(adGroup.timeUs))) {
                return adGroup.timeUs - timeline.getWindow(period.windowIndex, new Timeline.Window()).positionInFirstPeriodUs;
            }
        }
        return androidx.media3.common.C.TIME_UNSET;
    }

    private AdPlaybackState insertOrUpdateInterstitialInAdGroup(MediaItem mediaItem, HlsMediaPlaylist.Interstitial interstitial, AdPlaybackState adPlaybackState, int i2, long j7) {
        long[] jArr;
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
        if (adGroup.getIndexOfAdId(interstitial.id) != -1) {
            return adPlaybackState;
        }
        int max = Math.max(adGroup.count, 0);
        long resolveInterstitialDurationUs = resolveInterstitialDurationUs(interstitial, androidx.media3.common.C.TIME_UNSET);
        if (max == 0) {
            jArr = new long[1];
        } else {
            long[] jArr2 = adGroup.durationsUs;
            long[] jArr3 = new long[jArr2.length + 1];
            System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
            jArr = jArr3;
        }
        jArr[jArr.length - 1] = resolveInterstitialDurationUs;
        long j8 = interstitial.resumeOffsetUs;
        if (j8 != androidx.media3.common.C.TIME_UNSET) {
            resolveInterstitialDurationUs = j8;
        } else if (resolveInterstitialDurationUs == androidx.media3.common.C.TIME_UNSET) {
            resolveInterstitialDurationUs = 0;
        }
        AdPlaybackState withContentResumeOffsetUs = adPlaybackState.withAdCount(i2, max + 1).withAdId(i2, max, interstitial.id).withAdDurationsUs(i2, jArr).withContentResumeOffsetUs(i2, adGroup.contentResumeOffsetUs + resolveInterstitialDurationUs);
        if (interstitial.skipControlDurationUs != androidx.media3.common.C.TIME_UNSET || interstitial.skipControlOffsetUs != androidx.media3.common.C.TIME_UNSET || interstitial.skipControlLabelId != null) {
            withContentResumeOffsetUs = withContentResumeOffsetUs.withAdSkipInfo(i2, max, new AdPlaybackState.SkipInfo(interstitial.skipControlOffsetUs, interstitial.skipControlDurationUs, interstitial.skipControlLabelId));
        }
        AdPlaybackState adPlaybackState2 = withContentResumeOffsetUs;
        if (interstitial.assetUri != null) {
            return adPlaybackState2.withAvailableAdMediaItem(i2, max, new MediaItem.Builder().setUri(interstitial.assetUri).setMimeType(MimeTypes.APPLICATION_M3U8).build());
        }
        Object checkNotNull = v.checkNotNull(adPlaybackState2.adsId);
        Map map = (Map) v.checkNotNull(this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(checkNotNull));
        long j9 = adGroup.timeUs;
        if (j9 == Long.MIN_VALUE) {
            j9 = Long.MAX_VALUE;
        }
        map.put(Long.valueOf(j9), new AssetListData(mediaItem, checkNotNull, interstitial, i2, max, j7));
        return adPlaybackState2;
    }

    private static boolean isHlsMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = (MediaItem.LocalConfiguration) v.checkNotNull(mediaItem.localConfiguration);
        return Objects.equals(localConfiguration.mimeType, MimeTypes.APPLICATION_M3U8) || Util.inferContentType(localConfiguration.uri) == 2;
    }

    private static boolean isLiveMediaItem(MediaItem mediaItem, Timeline timeline) {
        int firstWindowIndex = timeline.getFirstWindowIndex(false);
        Timeline.Window window = new Timeline.Window();
        while (firstWindowIndex != -1) {
            timeline.getWindow(firstWindowIndex, window);
            if (window.mediaItem.equals(mediaItem)) {
                return window.isLive();
            }
            firstWindowIndex = timeline.getNextWindowIndex(firstWindowIndex, 0, false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getNextAssetResolution$7(Map map, Long l7, AssetListData assetListData) {
        if (map.remove(l7) != null) {
            startLoadingAssetList(assetListData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleContentTimelineChanged$1(AdsMediaSource adsMediaSource, Object obj, Timeline timeline, Listener listener) {
        listener.onContentTimelineChanged(adsMediaSource.getMediaItem(), obj, timeline);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handlePrepareComplete$2(AdsMediaSource adsMediaSource, Object obj, int i2, int i7, Listener listener) {
        listener.onPrepareCompleted(adsMediaSource.getMediaItem(), obj, i2, i7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handlePrepareError$3(AdsMediaSource adsMediaSource, Object obj, int i2, int i7, IOException iOException, Listener listener) {
        listener.onPrepareError(adsMediaSource.getMediaItem(), obj, i2, i7, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startLoadingAssetList$5(AssetListData assetListData, Listener listener) {
        listener.onAssetListLoadStarted(assetListData.mediaItem, assetListData.adsId, assetListData.adGroupIndex, assetListData.adIndexInAdGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$stop$4(AdsMediaSource adsMediaSource, AdPlaybackState adPlaybackState, Listener listener) {
        listener.onStop(adsMediaSource.getMediaItem(), adsMediaSource.getAdsId(), (AdPlaybackState) v.checkNotNull(adPlaybackState));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0075, code lost:
    
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.media3.common.AdPlaybackState mapInterstitialsForLive(androidx.media3.common.MediaItem r20, androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist r21, androidx.media3.common.AdPlaybackState r22, long r23, long r25) {
        /*
            r19 = this;
            r3 = r21
            r7 = r22
            java.lang.Object r0 = r7.adsId
            java.lang.Object r2 = P3.v.checkNotNull(r0)
            com.google.common.collect.ImmutableList<androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial> r1 = r3.interstitials
            r6 = 1
            r0 = r19
            r4 = r25
            android.util.LongSparseArray r1 = r0.filterAndSortWithResolvedStartPositions(r1, r2, r3, r4, r6)
            r0 = r3
            r11 = 0
        L17:
            int r3 = r1.size()
            if (r11 >= r3) goto Lb6
            long r12 = r1.keyAt(r11)
            java.lang.Object r3 = r1.get(r12)
            r14 = r3
            java.util.List r14 = (java.util.List) r14
            r15 = 0
        L29:
            int r3 = r14.size()
            if (r15 >= r3) goto Lae
            java.lang.Object r3 = r14.get(r15)
            r5 = r3
            androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial r5 = (androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist.Interstitial) r5
            long r3 = r0.startTimeUs
            long r3 = r12 - r3
            r8 = 0
            int r6 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r6 < 0) goto La4
            long r8 = r0.durationUs
            r16 = 3
            r22 = r11
            long r10 = r0.targetDurationUs
            long r10 = r10 * r16
            long r10 = r10 + r8
            int r6 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r6 >= 0) goto L52
        L4f:
            r3 = r19
            goto La8
        L52:
            long r3 = r23 + r3
            int r6 = r7.adGroupCount
            int r8 = r6 + (-1)
            int r6 = r6 + (-2)
        L5a:
            r18 = r8
            r8 = r6
            r6 = r18
            int r9 = r7.removedAdGroupCount
            if (r8 < r9) goto L7a
            androidx.media3.common.AdPlaybackState$AdGroup r6 = r7.getAdGroup(r8)
            long r10 = r6.timeUs
            int r6 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r6 != 0) goto L6f
            r10 = 0
            goto L7c
        L6f:
            int r6 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r6 >= 0) goto L77
            int r8 = r8 + 1
        L75:
            r10 = 1
            goto L7c
        L77:
            int r6 = r8 + (-1)
            goto L5a
        L7a:
            r8 = r6
            goto L75
        L7c:
            if (r10 == 0) goto L90
            int r6 = getLowestValidAdGroupInsertionIndex(r7)
            if (r8 >= r6) goto L8c
            java.lang.String r3 = "HlsInterstitiaAdsLoader"
            java.lang.String r4 = "Skipping insertion of interstitial attempted to be inserted behind an already initialized ad group."
            androidx.media3.common.util.Log.w(r3, r4)
            goto L4f
        L8c:
            androidx.media3.common.AdPlaybackState r7 = r7.withNewAdGroup(r8, r3)
        L90:
            r6 = r7
            r7 = r8
            long r8 = r0.targetDurationUs
            r3 = r19
            r4 = r20
            androidx.media3.common.AdPlaybackState r7 = r3.insertOrUpdateInterstitialInAdGroup(r4, r5, r6, r7, r8)
            androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader$ContentMediaSourceAdDataHolder r4 = r3.contentMediaSourceAdDataHolder
            java.lang.String r5 = r5.id
            r4.addInsertedInterstitialId(r2, r5)
            goto La8
        La4:
            r3 = r19
            r22 = r11
        La8:
            int r15 = r15 + 1
            r11 = r22
            goto L29
        Lae:
            r3 = r19
            r22 = r11
            int r11 = r22 + 1
            goto L17
        Lb6:
            r3 = r19
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader.mapInterstitialsForLive(androidx.media3.common.MediaItem, androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist, androidx.media3.common.AdPlaybackState, long, long):androidx.media3.common.AdPlaybackState");
    }

    private AdPlaybackState mapInterstitialsForVod(MediaItem mediaItem, HlsMediaPlaylist hlsMediaPlaylist, AdPlaybackState adPlaybackState, long j7, long j8, long j9) {
        int i2;
        AdPlaybackState adPlaybackState2 = adPlaybackState;
        v.checkArgument(adPlaybackState2.adGroupCount == adPlaybackState2.removedAdGroupCount);
        LongSparseArray<List<HlsMediaPlaylist.Interstitial>> filterAndSortWithResolvedStartPositions = filterAndSortWithResolvedStartPositions(hlsMediaPlaylist.interstitials, v.checkNotNull(adPlaybackState2.adsId), hlsMediaPlaylist, j8, false);
        long j10 = hlsMediaPlaylist.startTimeUs + j8;
        long j11 = j10 + j7;
        for (int i7 = 0; i7 < filterAndSortWithResolvedStartPositions.size(); i7++) {
            List<HlsMediaPlaylist.Interstitial> list = filterAndSortWithResolvedStartPositions.get(filterAndSortWithResolvedStartPositions.keyAt(i7));
            while (i2 < list.size()) {
                HlsMediaPlaylist.Interstitial interstitial = list.get(i2);
                long resolveInterstitialStartTimeUs = resolveInterstitialStartTimeUs(interstitial, hlsMediaPlaylist, j9);
                if (resolveInterstitialStartTimeUs < j10 && interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE)) {
                    resolveInterstitialStartTimeUs = j10;
                } else if (resolveInterstitialStartTimeUs <= j11 || !interstitial.cue.contains("POST")) {
                    i2 = (resolveInterstitialStartTimeUs < j10 || j11 < resolveInterstitialStartTimeUs) ? i2 + 1 : 0;
                } else {
                    resolveInterstitialStartTimeUs = j11;
                }
                long j12 = j11 == resolveInterstitialStartTimeUs ? Long.MIN_VALUE : resolveInterstitialStartTimeUs - hlsMediaPlaylist.startTimeUs;
                int adGroupIndexForPositionUs = adPlaybackState2.getAdGroupIndexForPositionUs(j12, hlsMediaPlaylist.durationUs);
                if (adGroupIndexForPositionUs == -1) {
                    adGroupIndexForPositionUs = adPlaybackState2.removedAdGroupCount;
                    adPlaybackState2 = adPlaybackState2.withNewAdGroup(adGroupIndexForPositionUs, j12);
                } else if (adPlaybackState2.getAdGroup(adGroupIndexForPositionUs).timeUs != j12) {
                    adGroupIndexForPositionUs++;
                    adPlaybackState2 = adPlaybackState2.withNewAdGroup(adGroupIndexForPositionUs, j12);
                }
                adPlaybackState2 = insertOrUpdateInterstitialInAdGroup(mediaItem, interstitial, adPlaybackState2, adGroupIndexForPositionUs, hlsMediaPlaylist.targetDurationUs);
                this.contentMediaSourceAdDataHolder.addInsertedInterstitialId(v.checkNotNull(adPlaybackState2.adsId), interstitial.id);
            }
        }
        return adPlaybackState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeExecuteOrSetNextAssetListResolutionMessage(Object obj, Timeline timeline, int i2, long j7, long j8) {
        Loader loader = this.loader;
        if (loader == null || !loader.isLoading()) {
            cancelPendingAssetListResolutionMessage();
            Timeline.Window window = timeline.getWindow(i2, new Timeline.Window());
            long j9 = j8 + j7;
            RunnableAtPosition nextAssetResolution = getNextAssetResolution(obj, j9);
            if (nextAssetResolution == null) {
                return;
            }
            long j10 = nextAssetResolution.adStartTimeUs;
            if (j10 == Long.MAX_VALUE) {
                j10 = window.durationUs;
            }
            long max = Math.max(j9, j10 - (nextAssetResolution.targetDurationUs * 3));
            if (max - j9 < 200000) {
                nextAssetResolution.run();
                return;
            }
            long j11 = max - j7;
            AdPlaybackState adPlaybackState = (AdPlaybackState) v.checkNotNull(this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj));
            int adGroupIndexForPositionUs = adPlaybackState.getAdGroupIndexForPositionUs(max, timeline.getPeriod(0, new Timeline.Period()).durationUs);
            if (adGroupIndexForPositionUs != -1) {
                AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(adGroupIndexForPositionUs);
                j11 = Math.max(j11, (adGroup.timeUs + adGroup.contentResumeOffsetUs) - j7);
            }
            PlayerMessage position = ((ExoPlayer) v.checkNotNull(this.player)).createMessage(new c(nextAssetResolution, 1)).setPayload(window.mediaItem).setLooper((Looper) v.checkNotNull(Looper.myLooper())).setPosition(Math.max(Util.usToMs(j11), 0L));
            this.pendingAssetListResolutionMessage = position;
            position.send();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAssetResolutionFailed(Object obj, int i2, int i7) {
        AdPlaybackState adPlaybackState = this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
        if (adPlaybackState == null) {
            return;
        }
        putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState.withAdLoadError(i2, i7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListeners(Consumer<Listener> consumer) {
        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
            consumer.accept(this.listeners.get(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean putAndNotifyAdPlaybackStateUpdate(Object obj, AdPlaybackState adPlaybackState) {
        if (adPlaybackState.equals(this.contentMediaSourceAdDataHolder.putAdPlaybackState(obj, adPlaybackState))) {
            return false;
        }
        AdsLoader.EventListener eventListener = this.contentMediaSourceAdDataHolder.getEventListener(obj);
        if (eventListener != null) {
            eventListener.onAdPlaybackState(adPlaybackState);
            return true;
        }
        this.contentMediaSourceAdDataHolder.stopContentSource(obj);
        return false;
    }

    private void removeUnresolvedAssetListOfAdGroup(AdPlaybackState adPlaybackState, AdPlaybackState.AdGroup adGroup) {
        v.checkArgument(adPlaybackState.adsId != null);
        Map<Long, AssetListData> unresolvedAssetLists = this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(adPlaybackState.adsId);
        if (unresolvedAssetLists != null) {
            long j7 = adGroup.timeUs;
            if (j7 == Long.MIN_VALUE) {
                j7 = Long.MAX_VALUE;
            }
            unresolvedAssetLists.remove(Long.valueOf(j7));
        }
    }

    private static long resolveInterstitialDurationUs(HlsMediaPlaylist.Interstitial interstitial, long j7) {
        long j8 = interstitial.playoutLimitUs;
        if (j8 != androidx.media3.common.C.TIME_UNSET) {
            return j8;
        }
        long j9 = interstitial.durationUs;
        if (j9 != androidx.media3.common.C.TIME_UNSET) {
            return j9;
        }
        long j10 = interstitial.endDateUnixUs;
        if (j10 != androidx.media3.common.C.TIME_UNSET) {
            return j10 - interstitial.startDateUnixUs;
        }
        long j11 = interstitial.plannedDurationUs;
        return j11 != androidx.media3.common.C.TIME_UNSET ? j11 : j7;
    }

    private static long resolveInterstitialStartTimeUs(HlsMediaPlaylist.Interstitial interstitial, HlsMediaPlaylist hlsMediaPlaylist, long j7) {
        if (interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE)) {
            return hlsMediaPlaylist.startTimeUs + j7;
        }
        if (interstitial.cue.contains("POST")) {
            return hlsMediaPlaylist.startTimeUs + hlsMediaPlaylist.durationUs;
        }
        if (interstitial.snapTypes.contains(HlsMediaPlaylist.Interstitial.SNAP_TYPE_OUT)) {
            return getClosestSegmentBoundaryUs(interstitial.startDateUnixUs, hlsMediaPlaylist);
        }
        if (!interstitial.snapTypes.contains(HlsMediaPlaylist.Interstitial.SNAP_TYPE_IN)) {
            return interstitial.startDateUnixUs;
        }
        long j8 = interstitial.resumeOffsetUs;
        if (j8 == androidx.media3.common.C.TIME_UNSET) {
            j8 = resolveInterstitialDurationUs(interstitial, 0L);
        }
        return getClosestSegmentBoundaryUs(interstitial.startDateUnixUs + j8, hlsMediaPlaylist) - j8;
    }

    private void startLoadingAssetList(AssetListData assetListData) {
        cancelPendingAssetListResolutionMessage();
        getLoader().startLoading(new ParsingLoadable(this.dataSourceFactory.createDataSource(), (Uri) v.checkNotNull(assetListData.interstitial.assetListUri), 6, new AssetListParser()), new LoaderCallback(assetListData), 1);
        notifyListeners(new c(assetListData, 0));
    }

    public void addAdResumptionState(AdsResumptionState adsResumptionState) {
        addAdResumptionState(adsResumptionState.adsId, adsResumptionState.adPlaybackState);
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void clearAllAdResumptionStates() {
        this.resumptionStates.clear();
    }

    public ImmutableList<AdsResumptionState> getAdsResumptionStates() {
        C0248s c0248s = new C0248s();
        for (AdPlaybackState adPlaybackState : this.contentMediaSourceAdDataHolder.getAdPlaybackStates()) {
            boolean endsWithLivePostrollPlaceHolder = adPlaybackState.endsWithLivePostrollPlaceHolder();
            if (endsWithLivePostrollPlaceHolder || !(adPlaybackState.adsId instanceof String)) {
                Log.i(TAG, endsWithLivePostrollPlaceHolder ? "getAdsResumptionStates(): ignoring active ad playback state of live stream. adsId=" + adPlaybackState.adsId : "getAdsResumptionStates(): ignoring active ad playback state when creating resumption states. `adsId` is not of type String: " + Util.castNonNull(adPlaybackState.adsId).getClass());
            } else {
                c0248s.add((Object) new AdsResumptionState((String) adPlaybackState.adsId, adPlaybackState.copy()));
            }
        }
        return c0248s.build();
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public boolean handleContentTimelineChanged(AdsMediaSource adsMediaSource, Timeline timeline) {
        HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader;
        Timeline timeline2;
        AdPlaybackState mapInterstitialsForVod;
        Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased) {
            AdsLoader.EventListener eventListener = this.contentMediaSourceAdDataHolder.getEventListener(adsId);
            if (eventListener != null && ((AdPlaybackState) v.checkNotNull(this.contentMediaSourceAdDataHolder.stopContentSource(adsId))).equals(AdPlaybackState.NONE)) {
                eventListener.onAdPlaybackState(new AdPlaybackState(adsId, new long[0]));
                return false;
            }
        } else {
            AdPlaybackState adPlaybackState = (AdPlaybackState) v.checkNotNull(this.contentMediaSourceAdDataHolder.getAdPlaybackState(adsId));
            AdPlaybackState adPlaybackState2 = AdPlaybackState.NONE;
            if (adPlaybackState.equals(adPlaybackState2) || adPlaybackState.endsWithLivePostrollPlaceHolder()) {
                if (adPlaybackState.equals(adPlaybackState2)) {
                    adPlaybackState = new AdPlaybackState(adsId, new long[0]);
                    if (isLiveMediaItem(adsMediaSource.getMediaItem(), timeline)) {
                        adPlaybackState = adPlaybackState.withLivePostrollPlaceholderAppended(false);
                    }
                }
                AdPlaybackState adPlaybackState3 = adPlaybackState;
                Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
                Object obj = window.manifest;
                if (obj instanceof HlsManifest) {
                    HlsMediaPlaylist hlsMediaPlaylist = ((HlsManifest) obj).mediaPlaylist;
                    int unresolvedAssetListCount = this.contentMediaSourceAdDataHolder.getUnresolvedAssetListCount(adsId);
                    if (window.isLive()) {
                        hlsInterstitialsAdsLoader = this;
                        mapInterstitialsForVod = hlsInterstitialsAdsLoader.mapInterstitialsForLive(window.mediaItem, hlsMediaPlaylist, adPlaybackState3, window.positionInFirstPeriodUs, window.defaultPositionUs);
                    } else {
                        hlsInterstitialsAdsLoader = this;
                        mapInterstitialsForVod = hlsInterstitialsAdsLoader.mapInterstitialsForVod(window.mediaItem, hlsMediaPlaylist, adPlaybackState3, window.durationUs, window.positionInFirstPeriodUs, window.defaultPositionUs);
                    }
                    AdPlaybackState adPlaybackState4 = mapInterstitialsForVod;
                    ExoPlayer exoPlayer = hlsInterstitialsAdsLoader.player;
                    if (unresolvedAssetListCount == hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder.getUnresolvedAssetListCount(adsId) || exoPlayer == null || !Objects.equals(window.mediaItem, exoPlayer.getCurrentMediaItem())) {
                        timeline2 = timeline;
                    } else {
                        int currentPeriodIndex = exoPlayer.getCurrentPeriodIndex();
                        long msToUs = Util.msToUs(exoPlayer.getContentPosition());
                        Timeline.Period period = exoPlayer.getCurrentTimeline().getPeriod(currentPeriodIndex, new Timeline.Period());
                        long j7 = -period.positionInWindowUs;
                        if (period.isPlaceholder) {
                            long j8 = window.durationUs;
                            if (msToUs >= j8) {
                                msToUs = j8 - 1;
                            }
                            if (window.isLive()) {
                                msToUs = window.defaultPositionUs;
                            }
                            int adGroupIndexForPositionUs = adPlaybackState4.getAdGroupIndexForPositionUs(msToUs, window.isLive() ? androidx.media3.common.C.TIME_UNSET : window.durationUs);
                            if (adGroupIndexForPositionUs != -1) {
                                msToUs = adPlaybackState4.getAdGroup(adGroupIndexForPositionUs).timeUs;
                            }
                            j7 = window.positionInFirstPeriodUs;
                        }
                        timeline2 = timeline;
                        maybeExecuteOrSetNextAssetListResolutionMessage(adsId, timeline2, 0, j7, msToUs);
                        hlsInterstitialsAdsLoader = this;
                    }
                    adPlaybackState3 = adPlaybackState4;
                } else {
                    hlsInterstitialsAdsLoader = this;
                    timeline2 = timeline;
                }
                boolean putAndNotifyAdPlaybackStateUpdate = putAndNotifyAdPlaybackStateUpdate(adsId, adPlaybackState3);
                if (!hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId)) {
                    notifyListeners(new f(adsMediaSource, adsId, timeline2, 1));
                }
                return putAndNotifyAdPlaybackStateUpdate;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handlePrepareComplete(AdsMediaSource adsMediaSource, int i2, int i7) {
        Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased || this.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId)) {
            return;
        }
        notifyListeners(new i(adsMediaSource, adsId, i2, i7, 1));
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handlePrepareError(AdsMediaSource adsMediaSource, int i2, int i7, IOException iOException) {
        Object adsId = adsMediaSource.getAdsId();
        putAndNotifyAdPlaybackStateUpdate(adsId, ((AdPlaybackState) v.checkNotNull(this.contentMediaSourceAdDataHolder.getAdPlaybackState(adsId))).withAdLoadError(i2, i7));
        if (this.isReleased || this.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId)) {
            return;
        }
        notifyListeners(new j(adsMediaSource, adsId, i2, i7, iOException, 1));
    }

    public boolean isReleased() {
        return this.isReleased;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void release() {
        if (this.contentMediaSourceAdDataHolder.isIdle()) {
            this.player = null;
        }
        clearAllAdResumptionStates();
        cancelPendingAssetListResolutionMessage();
        Loader loader = this.loader;
        if (loader != null) {
            loader.release();
            this.loader = null;
        }
        this.isReleased = true;
    }

    public boolean removeAdResumptionState(Object obj) {
        return this.resumptionStates.remove(obj) != null;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void setPlayer(Player player) {
        boolean z6 = true;
        v.checkState(!this.isReleased);
        v.checkArgument(player == null || (player instanceof ExoPlayer));
        if (Objects.equals(this.player, player)) {
            return;
        }
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null && !this.contentMediaSourceAdDataHolder.isIdle()) {
            exoPlayer.removeListener(this.playerListener);
        }
        if (player != null && !this.contentMediaSourceAdDataHolder.isIdle()) {
            z6 = false;
        }
        v.checkState(z6);
        this.player = (ExoPlayer) player;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void setSupportedContentTypes(int... iArr) {
        for (int i2 : iArr) {
            if (i2 == 2) {
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    public void setWithAvailableAdGroup(int i2) {
        MediaItem mediaItem;
        v.checkState(this.player != null);
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState == null) {
            return;
        }
        v.checkArgument(i2 < adPlaybackState.adGroupCount);
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
        int i7 = 0;
        while (true) {
            int[] iArr = adGroup.states;
            if (i7 >= iArr.length) {
                putAndNotifyAdPlaybackStateUpdate(v.checkNotNull(adPlaybackState.adsId), adPlaybackState);
                removeUnresolvedAssetListOfAdGroup(adPlaybackState, adGroup);
                return;
            }
            int i8 = iArr[i7];
            if ((i8 == 3 || i8 == 2) && (mediaItem = adGroup.mediaItems[i7]) != null) {
                v.checkState(mediaItem != null);
                adPlaybackState = adPlaybackState.withAvailableAdMediaItem(i2, i7, mediaItem);
            }
            i7++;
        }
    }

    public void setWithAvailableAdMediaItem(int i2, int i7, MediaItem mediaItem) {
        v.checkState(this.player != null);
        if (mediaItem != null) {
            v.checkArgument(isHlsMediaItem(mediaItem));
        }
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState != null) {
            v.checkArgument(i2 < adPlaybackState.adGroupCount);
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
            v.checkArgument(i7 < adGroup.count);
            if (mediaItem == null) {
                mediaItem = adGroup.mediaItems[i7];
                v.checkState(mediaItem != null);
            }
            if (adGroup.states[i7] != 1) {
                AdPlaybackState withAvailableAdMediaItem = adPlaybackState.withAvailableAdMediaItem(i2, i7, mediaItem);
                putAndNotifyAdPlaybackStateUpdate(v.checkNotNull(withAvailableAdMediaItem.adsId), withAvailableAdMediaItem);
                removeUnresolvedAssetListOfAdGroup(withAvailableAdMediaItem, adGroup);
            }
        }
    }

    public void setWithSkippedAd(int i2, int i7) {
        v.checkState(this.player != null);
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState != null) {
            v.checkArgument(i2 < adPlaybackState.adGroupCount);
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
            v.checkArgument(i7 < adGroup.count);
            int i8 = adGroup.states[i7];
            if (i8 == 3 || i8 == 4) {
                Log.w(TAG, "ignoring request to set ad for state AD_STATE_SKIPPED for played or failed ad at adGroupIndex=" + i2 + ", adIndexInAgGroup=" + i7);
                return;
            }
            if (i8 != 2) {
                AdPlaybackState withSkippedAd = adPlaybackState.withSkippedAd(i2, i7);
                putAndNotifyAdPlaybackStateUpdate(v.checkNotNull(withSkippedAd.adsId), withSkippedAd);
                removeUnresolvedAssetListOfAdGroup(withSkippedAd, adGroup);
            }
        }
    }

    public void setWithSkippedAdGroup(int i2) {
        v.checkState(this.player != null);
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState != null) {
            v.checkArgument(i2 < adPlaybackState.adGroupCount);
            AdPlaybackState withSkippedAdGroup = adPlaybackState.withSkippedAdGroup(i2);
            AdPlaybackState.AdGroup adGroup = withSkippedAdGroup.getAdGroup(i2);
            putAndNotifyAdPlaybackStateUpdate(v.checkNotNull(withSkippedAdGroup.adsId), withSkippedAdGroup);
            removeUnresolvedAssetListOfAdGroup(withSkippedAdGroup, adGroup);
        }
    }

    public void skipCurrentAd() {
        v.checkNotNull(this.player);
        if (this.player.isPlayingAd()) {
            setWithSkippedAd(this.player.getCurrentAdGroupIndex(), this.player.getCurrentAdIndexInAdGroup());
        }
    }

    public void skipCurrentAdGroup() {
        v.checkNotNull(this.player);
        if (this.player.isPlayingAd()) {
            setWithSkippedAdGroup(this.player.getCurrentAdGroupIndex());
        }
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void start(AdsMediaSource adsMediaSource, DataSpec dataSpec, Object obj, AdViewProvider adViewProvider, AdsLoader.EventListener eventListener) {
        if (this.isReleased) {
            eventListener.onAdPlaybackState(new AdPlaybackState(obj, new long[0]));
            return;
        }
        if (this.contentMediaSourceAdDataHolder.isStartedContentMediaSource(obj)) {
            throw new IllegalStateException("media item with adsId='" + obj + "' already started. Make sure adsIds are unique within the same playlist.");
        }
        if (this.contentMediaSourceAdDataHolder.isIdle()) {
            ((ExoPlayer) v.checkNotNull(this.player, "setPlayer(Player) needs to be called")).addListener(this.playerListener);
        }
        this.contentMediaSourceAdDataHolder.startContentSource(obj, eventListener);
        MediaItem mediaItem = adsMediaSource.getMediaItem();
        if (isHlsMediaItem(mediaItem)) {
            if ((obj instanceof String) && this.resumptionStates.containsKey(obj)) {
                putAndNotifyAdPlaybackStateUpdate(obj, (AdPlaybackState) v.checkNotNull(this.resumptionStates.remove(obj)));
            } else {
                this.contentMediaSourceAdDataHolder.putAdPlaybackState(obj, AdPlaybackState.NONE);
            }
            notifyListeners(new f(mediaItem, obj, adViewProvider, 2));
            return;
        }
        Log.w(TAG, "Unsupported media item. Playing without ads for adsId=" + obj);
        putAndNotifyAdPlaybackStateUpdate(obj, new AdPlaybackState(obj, new long[0]));
        this.contentMediaSourceAdDataHolder.addUnsupportedContentMediaSource(obj);
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void stop(AdsMediaSource adsMediaSource, AdsLoader.EventListener eventListener) {
        Object adsId = adsMediaSource.getAdsId();
        v.checkState(this.contentMediaSourceAdDataHolder.isStartedContentMediaSource(adsId) || this.isReleased);
        boolean isUnsupportedContentMediaSource = this.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId);
        AdPlaybackState stopContentSource = this.contentMediaSourceAdDataHolder.stopContentSource(adsId);
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null && this.contentMediaSourceAdDataHolder.isIdle()) {
            exoPlayer.removeListener(this.playerListener);
            if (this.isReleased) {
                this.player = null;
            }
        }
        if (!this.isReleased && !isUnsupportedContentMediaSource) {
            if (stopContentSource != null && (adsId instanceof String) && this.resumptionStates.containsKey(adsId)) {
                this.resumptionStates.put(adsId, stopContentSource);
            }
            notifyListeners(new h(1, adsMediaSource, stopContentSource));
        }
        if (this.pendingAssetListResolutionMessage == null || !adsMediaSource.getMediaItem().equals(((PlayerMessage) Util.castNonNull(this.pendingAssetListResolutionMessage)).getPayload())) {
            return;
        }
        cancelPendingAssetListResolutionMessage();
    }

    public HlsInterstitialsAdsLoader(DataSource.Factory factory) {
        this.dataSourceFactory = factory;
        this.playerListener = new PlayerListener();
        this.contentMediaSourceAdDataHolder = new ContentMediaSourceAdDataHolder();
        this.resumptionStates = new HashMap();
        this.listeners = new ArrayList();
    }

    public void addAdResumptionState(Object obj, AdPlaybackState adPlaybackState) {
        v.checkArgument(!adPlaybackState.endsWithLivePostrollPlaceHolder());
        if (!this.contentMediaSourceAdDataHolder.isStartedContentMediaSource(obj)) {
            this.resumptionStates.put(obj, adPlaybackState.copy().withAdsId(obj));
            return;
        }
        Log.w(TAG, "Attempting to add an ad resumption state for an adsId that is currently active. adsId=" + obj);
    }
}
