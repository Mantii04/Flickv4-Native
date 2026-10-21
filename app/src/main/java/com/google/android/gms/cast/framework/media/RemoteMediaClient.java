package com.google.android.gms.cast.framework.media;

import android.os.Looper;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzed;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RemoteMediaClient implements Cast.MessageReceivedCallback {

    /* renamed from: l, reason: collision with root package name */
    public static final Logger f10029l = new Logger("RemoteMediaClient");

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.cast.internal.zzaq f10032c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbf f10033d;

    /* renamed from: e, reason: collision with root package name */
    public final MediaQueue f10034e;

    /* renamed from: f, reason: collision with root package name */
    public com.google.android.gms.cast.zzr f10035f;

    /* renamed from: g, reason: collision with root package name */
    public TaskCompletionSource f10036g;

    /* renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArrayList f10037h = new CopyOnWriteArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f10038i = new CopyOnWriteArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f10039j = new ConcurrentHashMap();

    /* renamed from: k, reason: collision with root package name */
    public final ConcurrentHashMap f10040k = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Object f10030a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final zzed f10031b = new zzed(Looper.getMainLooper());

    public static abstract class Callback {
        public void onAdBreakStatusUpdated() {
        }

        public void onMediaError(MediaError mediaError) {
        }

        public void onMetadataUpdated() {
        }

        public void onPreloadStatusUpdated() {
        }

        public void onQueueStatusUpdated() {
        }

        public void onSendingRemoteMediaRequest() {
        }

        public void onStatusUpdated() {
        }

        public void zza(String str, long j7, int i2, long j8, long j9) {
        }

        public void zzb(int[] iArr) {
        }

        public void zzc(int[] iArr, int i2) {
        }

        public void zzd(MediaQueueItem[] mediaQueueItemArr) {
        }

        public void zze(int[] iArr) {
        }

        public void zzf(List list, List list2, int i2) {
        }

        public void zzg(int[] iArr) {
        }

        public void zzh() {
        }
    }

    @Deprecated
    public interface Listener {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onSendingRemoteMediaRequest();

        void onStatusUpdated();
    }

    public interface MediaChannelResult extends Result {
    }

    public interface ParseAdsInfoCallback {
    }

    public interface ProgressListener {
        void onProgressUpdated(long j7, long j8);
    }

    static {
        String str = com.google.android.gms.cast.internal.zzaq.f10356w;
    }

    public RemoteMediaClient(com.google.android.gms.cast.internal.zzaq zzaqVar) {
        zzbf zzbfVar = new zzbf(this);
        this.f10033d = zzbfVar;
        com.google.android.gms.cast.internal.zzaq zzaqVar2 = (com.google.android.gms.cast.internal.zzaq) Preconditions.checkNotNull(zzaqVar);
        this.f10032c = zzaqVar2;
        zzaqVar2.zzQ(new zzbn(this));
        zzaqVar2.zzh(zzbfVar);
        this.f10034e = new MediaQueue(this);
    }

    public static final void d(zzbk zzbkVar) {
        try {
            zzbkVar.zzc();
        } catch (IllegalArgumentException e3) {
            throw e3;
        } catch (Throwable unused) {
            zzbkVar.setResult(new zzbj(new Status(2100)));
        }
    }

    public static PendingResult zzf(int i2, String str) {
        zzbh zzbhVar = new zzbh();
        zzbhVar.setResult(new zzbg(new Status(i2, str)));
        return zzbhVar;
    }

    public final boolean a() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 5;
    }

    @Deprecated
    public void addListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.f10037h.add(listener);
        }
    }

    public boolean addProgressListener(ProgressListener progressListener, long j7) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (progressListener == null) {
            return false;
        }
        ConcurrentHashMap concurrentHashMap = this.f10039j;
        if (concurrentHashMap.containsKey(progressListener)) {
            return false;
        }
        ConcurrentHashMap concurrentHashMap2 = this.f10040k;
        Long valueOf = Long.valueOf(j7);
        zzbp zzbpVar = (zzbp) concurrentHashMap2.get(valueOf);
        if (zzbpVar == null) {
            zzbpVar = new zzbp(this, j7);
            concurrentHashMap2.put(valueOf, zzbpVar);
        }
        zzbpVar.zzd(progressListener);
        concurrentHashMap.put(progressListener, zzbpVar);
        if (!hasMediaSession()) {
            return true;
        }
        zzbpVar.zzf();
        return true;
    }

    public final void b(HashSet hashSet) {
        MediaInfo media;
        HashSet hashSet2 = new HashSet(hashSet);
        if (isPlaying() || isPaused() || isBuffering() || a()) {
            Iterator it = hashSet2.iterator();
            while (it.hasNext()) {
                ((ProgressListener) it.next()).onProgressUpdated(getApproximateStreamPosition(), getStreamDuration());
            }
        } else {
            if (!isLoadingNextItem()) {
                Iterator it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    ((ProgressListener) it2.next()).onProgressUpdated(0L, 0L);
                }
                return;
            }
            MediaQueueItem loadingItem = getLoadingItem();
            if (loadingItem == null || (media = loadingItem.getMedia()) == null) {
                return;
            }
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                ((ProgressListener) it3.next()).onProgressUpdated(0L, media.getStreamDuration());
            }
        }
    }

    public final boolean c() {
        return this.f10035f != null;
    }

    public long getApproximateAdBreakClipPositionMs() {
        long zzj;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzj = this.f10032c.zzj();
        }
        return zzj;
    }

    public long getApproximateLiveSeekableRangeEnd() {
        long zzk;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzk = this.f10032c.zzk();
        }
        return zzk;
    }

    public long getApproximateLiveSeekableRangeStart() {
        long zzl;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzl = this.f10032c.zzl();
        }
        return zzl;
    }

    public long getApproximateStreamPosition() {
        long zzm;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzm = this.f10032c.zzm();
        }
        return zzm;
    }

    public int getIdleReason() {
        int idleReason;
        synchronized (this.f10030a) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus mediaStatus = getMediaStatus();
                idleReason = mediaStatus != null ? mediaStatus.getIdleReason() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return idleReason;
    }

    public MediaQueueItem getLoadingItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getLoadingItemId());
    }

    public MediaInfo getMediaInfo() {
        MediaInfo zzK;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzK = this.f10032c.zzK();
        }
        return zzK;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus zzL;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzL = this.f10032c.zzL();
        }
        return zzL;
    }

    public String getNamespace() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f10032c.zze();
    }

    public int getPlayerState() {
        int playerState;
        synchronized (this.f10030a) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus mediaStatus = getMediaStatus();
                playerState = mediaStatus != null ? mediaStatus.getPlayerState() : 1;
            } catch (Throwable th) {
                throw th;
            }
        }
        return playerState;
    }

    public MediaQueueItem getPreloadedItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getPreloadedItemId());
    }

    public long getStreamDuration() {
        long zzo;
        synchronized (this.f10030a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            zzo = this.f10032c.zzo();
        }
        return zzo;
    }

    public boolean hasMediaSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return isBuffering() || a() || isPlaying() || isPaused() || isLoadingNextItem();
    }

    public boolean isBuffering() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 4;
    }

    public boolean isLiveStream() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null && mediaInfo.getStreamType() == 2;
    }

    public boolean isLoadingNextItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || mediaStatus.getLoadingItemId() == 0) ? false : true;
    }

    public boolean isPaused() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return false;
        }
        if (mediaStatus.getPlayerState() != 3) {
            return isLiveStream() && getIdleReason() == 2;
        }
        return true;
    }

    public boolean isPlaying() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 2;
    }

    public boolean isPlayingAd() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.isPlayingAd();
    }

    public PendingResult<MediaChannelResult> load(MediaLoadRequestData mediaLoadRequestData) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzav zzavVar = new zzav(this, mediaLoadRequestData);
        d(zzavVar);
        return zzavVar;
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.f10032c.zzO(str2);
    }

    public PendingResult<MediaChannelResult> pause() {
        return pause(null);
    }

    public PendingResult<MediaChannelResult> play() {
        return play(null);
    }

    public PendingResult<MediaChannelResult> queueNext(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzan zzanVar = new zzan(this, jSONObject);
        d(zzanVar);
        return zzanVar;
    }

    public PendingResult<MediaChannelResult> queuePrev(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzam zzamVar = new zzam(this, jSONObject);
        d(zzamVar);
        return zzamVar;
    }

    public void registerCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.f10038i.add(callback);
        }
    }

    @Deprecated
    public void removeListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.f10037h.remove(listener);
        }
    }

    public void removeProgressListener(ProgressListener progressListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzbp zzbpVar = (zzbp) this.f10039j.remove(progressListener);
        if (zzbpVar != null) {
            zzbpVar.zze(progressListener);
            if (zzbpVar.zzh()) {
                return;
            }
            this.f10040k.remove(Long.valueOf(zzbpVar.zzb()));
            zzbpVar.zzg();
        }
    }

    public PendingResult<MediaChannelResult> requestStatus() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzac zzacVar = new zzac(this);
        d(zzacVar);
        return zzacVar;
    }

    @Deprecated
    public PendingResult<MediaChannelResult> seek(long j7) {
        return seek(j7, 0, null);
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(long[] jArr) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzad zzadVar = new zzad(this, jArr);
        d(zzadVar);
        return zzadVar;
    }

    public PendingResult<MediaChannelResult> skipAd() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzab zzabVar = new zzab(this);
        d(zzabVar);
        return zzabVar;
    }

    public void togglePlayback() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        int playerState = getPlayerState();
        if (playerState == 4 || playerState == 2) {
            pause();
        } else {
            play();
        }
    }

    public void unregisterCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.f10038i.remove(callback);
        }
    }

    public final int zza() {
        MediaQueueItem loadingItem;
        if (getMediaInfo() != null && hasMediaSession()) {
            if (isBuffering()) {
                return 6;
            }
            if (isPlaying()) {
                return 3;
            }
            if (isPaused()) {
                return 2;
            }
            if (isLoadingNextItem() && (loadingItem = getLoadingItem()) != null && loadingItem.getMedia() != null) {
                return 6;
            }
        }
        return 0;
    }

    public final PendingResult zzi() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzas zzasVar = new zzas(this);
        d(zzasVar);
        return zzasVar;
    }

    public final PendingResult zzj(int[] iArr) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzat zzatVar = new zzat(this, iArr);
        d(zzatVar);
        return zzatVar;
    }

    public final Task zzk(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return Tasks.forException(new com.google.android.gms.cast.internal.zzao());
        }
        this.f10036g = new TaskCompletionSource();
        f10029l.d("create SessionState with cached mediaInfo and mediaStatus", new Object[0]);
        MediaInfo mediaInfo = getMediaInfo();
        MediaStatus mediaStatus = getMediaStatus();
        SessionState sessionState = null;
        if (mediaInfo != null && mediaStatus != null) {
            MediaLoadRequestData.Builder builder = new MediaLoadRequestData.Builder();
            builder.setMediaInfo(mediaInfo);
            builder.setCurrentTime(getApproximateStreamPosition());
            builder.setQueueData(mediaStatus.getQueueData());
            builder.setPlaybackRate(mediaStatus.getPlaybackRate());
            builder.setActiveTrackIds(mediaStatus.getActiveTrackIds());
            builder.setCustomData(mediaStatus.getCustomData());
            MediaLoadRequestData build = builder.build();
            SessionState.Builder builder2 = new SessionState.Builder();
            builder2.setLoadRequestData(build);
            sessionState = builder2.build();
        }
        if (sessionState != null) {
            this.f10036g.setResult(sessionState);
        } else {
            this.f10036g.setException(new com.google.android.gms.cast.internal.zzao());
        }
        return this.f10036g.getTask();
    }

    public final void zzq() {
        com.google.android.gms.cast.zzr zzrVar = this.f10035f;
        if (zzrVar == null) {
            return;
        }
        zzrVar.zzi(getNamespace(), this);
        requestStatus();
    }

    public final void zzr(SessionState sessionState) {
        MediaLoadRequestData loadRequestData;
        if (sessionState == null || (loadRequestData = sessionState.getLoadRequestData()) == null) {
            return;
        }
        f10029l.d("resume SessionState", new Object[0]);
        load(loadRequestData);
    }

    public final void zzs(com.google.android.gms.cast.zzr zzrVar) {
        com.google.android.gms.cast.zzr zzrVar2 = this.f10035f;
        if (zzrVar2 == zzrVar) {
            return;
        }
        zzbf zzbfVar = this.f10033d;
        if (zzrVar2 != null) {
            this.f10032c.zzf();
            this.f10034e.zzl();
            zzrVar2.zzg(getNamespace());
            zzbfVar.zzc(null);
            this.f10031b.removeCallbacksAndMessages(null);
        }
        this.f10035f = zzrVar;
        if (zzrVar != null) {
            zzbfVar.zzc(zzrVar);
        }
    }

    public final boolean zzt() {
        if (!hasMediaSession()) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(getMediaStatus());
        if (mediaStatus.isMediaCommandSupported(64L) || mediaStatus.getQueueRepeatMode() != 0) {
            return true;
        }
        Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
        return indexById != null && indexById.intValue() < mediaStatus.getQueueItemCount() + (-1);
    }

    public final boolean zzu() {
        if (!hasMediaSession()) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(getMediaStatus());
        if (mediaStatus.isMediaCommandSupported(128L) || mediaStatus.getQueueRepeatMode() != 0) {
            return true;
        }
        Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
        return indexById != null && indexById.intValue() > 0;
    }

    public final boolean zzw() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!isLiveStream()) {
            return true;
        }
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || !mediaStatus.isMediaCommandSupported(2L) || mediaStatus.getLiveSeekableRange() == null) ? false : true;
    }

    public PendingResult<MediaChannelResult> pause(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzax zzaxVar = new zzax(this, jSONObject);
        d(zzaxVar);
        return zzaxVar;
    }

    public PendingResult<MediaChannelResult> play(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzaz zzazVar = new zzaz(this, jSONObject);
        d(zzazVar);
        return zzazVar;
    }

    @Deprecated
    public PendingResult<MediaChannelResult> seek(long j7, int i2, JSONObject jSONObject) {
        MediaSeekOptions.Builder builder = new MediaSeekOptions.Builder();
        builder.setPosition(j7);
        builder.setResumeState(i2);
        builder.setCustomData(jSONObject);
        return seek(builder.build());
    }

    public PendingResult<MediaChannelResult> seek(MediaSeekOptions mediaSeekOptions) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!c()) {
            return zzf(17, null);
        }
        zzba zzbaVar = new zzba(this, mediaSeekOptions);
        d(zzbaVar);
        return zzbaVar;
    }
}
