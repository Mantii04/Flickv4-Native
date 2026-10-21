package com.google.android.gms.cast.framework.media.uicontroller;

import android.text.format.DateUtils;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.text.DateFormat;
import java.util.Date;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zza {

    /* renamed from: a, reason: collision with root package name */
    public RemoteMediaClient f10128a;

    private zza() {
    }

    public static final String d(long j7) {
        return j7 >= 0 ? DateUtils.formatElapsedTime(j7 / 1000) : "-".concat(String.valueOf(DateUtils.formatElapsedTime((-j7) / 1000)));
    }

    public static zza zzf() {
        return new zza();
    }

    public final Long a() {
        RemoteMediaClient remoteMediaClient;
        MediaStatus mediaStatus;
        RemoteMediaClient remoteMediaClient2 = this.f10128a;
        if (remoteMediaClient2 == null || !remoteMediaClient2.hasMediaSession() || !this.f10128a.isLiveStream() || !this.f10128a.zzw() || (mediaStatus = (remoteMediaClient = this.f10128a).getMediaStatus()) == null || mediaStatus.getLiveSeekableRange() == null) {
            return null;
        }
        return Long.valueOf(remoteMediaClient.getApproximateLiveSeekableRangeEnd());
    }

    public final Long b() {
        RemoteMediaClient remoteMediaClient;
        MediaStatus mediaStatus;
        RemoteMediaClient remoteMediaClient2 = this.f10128a;
        if (remoteMediaClient2 == null || !remoteMediaClient2.hasMediaSession() || !this.f10128a.isLiveStream() || !this.f10128a.zzw() || (mediaStatus = (remoteMediaClient = this.f10128a).getMediaStatus()) == null || mediaStatus.getLiveSeekableRange() == null) {
            return null;
        }
        return Long.valueOf(remoteMediaClient.getApproximateLiveSeekableRangeStart());
    }

    public final Long c() {
        MediaInfo mediaInfo;
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !this.f10128a.isLiveStream() || (mediaInfo = this.f10128a.getMediaInfo()) == null || mediaInfo.getStartAbsoluteTime() == -1) {
            return null;
        }
        return Long.valueOf(mediaInfo.getStartAbsoluteTime());
    }

    public final int zza() {
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            RemoteMediaClient remoteMediaClient2 = this.f10128a;
            if (remoteMediaClient2.isLiveStream() || !remoteMediaClient2.isLoadingNextItem()) {
                int approximateStreamPosition = (int) (remoteMediaClient2.getApproximateStreamPosition() - zze());
                if (remoteMediaClient2.zzw()) {
                    int zzd = zzd();
                    approximateStreamPosition = Math.min(Math.max(approximateStreamPosition, zzd), zzc());
                }
                return Math.min(Math.max(approximateStreamPosition, 0), zzb());
            }
        }
        return 0;
    }

    public final int zzb() {
        MediaInfo media;
        RemoteMediaClient remoteMediaClient = this.f10128a;
        long j7 = 1;
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            RemoteMediaClient remoteMediaClient2 = this.f10128a;
            if (remoteMediaClient2.isLiveStream()) {
                Long zzi = zzi();
                if (zzi != null) {
                    j7 = zzi.longValue();
                } else {
                    Long a7 = a();
                    j7 = a7 != null ? a7.longValue() : Math.max(remoteMediaClient2.getApproximateStreamPosition(), 1L);
                }
            } else if (remoteMediaClient2.isLoadingNextItem()) {
                MediaQueueItem loadingItem = remoteMediaClient2.getLoadingItem();
                if (loadingItem != null && (media = loadingItem.getMedia()) != null) {
                    j7 = Math.max(media.getStreamDuration(), 1L);
                }
            } else {
                j7 = Math.max(remoteMediaClient2.getStreamDuration(), 1L);
            }
        }
        return Math.max((int) (j7 - zze()), 1);
    }

    public final int zzc() {
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !this.f10128a.isLiveStream()) {
            return zzb();
        }
        if (!this.f10128a.zzw()) {
            return 0;
        }
        long longValue = ((Long) Preconditions.checkNotNull(a())).longValue() - zze();
        return Math.min(Math.max((int) longValue, 0), zzb());
    }

    public final int zzd() {
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !this.f10128a.isLiveStream() || !this.f10128a.zzw()) {
            return 0;
        }
        long longValue = ((Long) Preconditions.checkNotNull(b())).longValue() - zze();
        return Math.min(Math.max((int) longValue, 0), zzb());
    }

    public final long zze() {
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !this.f10128a.isLiveStream()) {
            return 0L;
        }
        RemoteMediaClient remoteMediaClient2 = this.f10128a;
        Long zzj = zzj();
        if (zzj != null) {
            return zzj.longValue();
        }
        Long b7 = b();
        return b7 != null ? b7.longValue() : remoteMediaClient2.getApproximateStreamPosition();
    }

    public final Long zzi() {
        Long zzj;
        MediaInfo mediaInfo;
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && this.f10128a.isLiveStream()) {
            RemoteMediaClient remoteMediaClient2 = this.f10128a;
            MediaMetadata metadata = (remoteMediaClient2 == null || !remoteMediaClient2.hasMediaSession() || (mediaInfo = this.f10128a.getMediaInfo()) == null) ? null : mediaInfo.getMetadata();
            if (metadata != null && metadata.containsKey("com.google.android.gms.cast.metadata.SECTION_DURATION") && (zzj = zzj()) != null) {
                return Long.valueOf(metadata.getTimeMillis("com.google.android.gms.cast.metadata.SECTION_DURATION") + zzj.longValue());
            }
        }
        return null;
    }

    public final Long zzj() {
        MediaInfo mediaInfo;
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && this.f10128a.isLiveStream()) {
            RemoteMediaClient remoteMediaClient2 = this.f10128a;
            MediaInfo mediaInfo2 = remoteMediaClient2.getMediaInfo();
            RemoteMediaClient remoteMediaClient3 = this.f10128a;
            MediaMetadata metadata = (remoteMediaClient3 == null || !remoteMediaClient3.hasMediaSession() || (mediaInfo = this.f10128a.getMediaInfo()) == null) ? null : mediaInfo.getMetadata();
            if (mediaInfo2 != null && metadata != null && metadata.containsKey("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA") && (metadata.containsKey("com.google.android.gms.cast.metadata.SECTION_DURATION") || remoteMediaClient2.zzw())) {
                return Long.valueOf(metadata.getTimeMillis("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"));
            }
        }
        return null;
    }

    public final String zzl(long j7) {
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            return null;
        }
        RemoteMediaClient remoteMediaClient2 = this.f10128a;
        int i2 = 1;
        if (remoteMediaClient2 != null && remoteMediaClient2.hasMediaSession() && this.f10128a.isLiveStream() && c() != null) {
            i2 = 2;
        }
        if (i2 - 1 != 0) {
            return DateFormat.getTimeInstance().format(new Date(((Long) Preconditions.checkNotNull(c())).longValue() + j7));
        }
        return (remoteMediaClient2.isLiveStream() && zzj() == null) ? d(j7) : d(j7 - zze());
    }

    public final boolean zzm() {
        return zzn(zze() + zza());
    }

    public final boolean zzn(long j7) {
        RemoteMediaClient remoteMediaClient = this.f10128a;
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && this.f10128a.zzw()) {
            return (zze() + ((long) zzc())) - j7 < Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
        }
        return false;
    }
}
