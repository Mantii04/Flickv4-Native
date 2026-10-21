package com.google.android.gms.cast.framework.media.internal;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzbf;
import com.google.android.gms.internal.cast.zzdy;
import com.google.android.gms.internal.cast.zzed;
import java.util.List;

/* loaded from: classes.dex */
public final class zzv {

    /* renamed from: v, reason: collision with root package name */
    public static final Logger f10097v = new Logger("MediaSessionManager");

    /* renamed from: a, reason: collision with root package name */
    public final Context f10098a;

    /* renamed from: b, reason: collision with root package name */
    public final CastOptions f10099b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbf f10100c;

    /* renamed from: d, reason: collision with root package name */
    public final SessionManager f10101d;

    /* renamed from: e, reason: collision with root package name */
    public final NotificationOptions f10102e;

    /* renamed from: f, reason: collision with root package name */
    public final ComponentName f10103f;

    /* renamed from: g, reason: collision with root package name */
    public final ComponentName f10104g;

    /* renamed from: h, reason: collision with root package name */
    public final zzb f10105h;

    /* renamed from: i, reason: collision with root package name */
    public final zzb f10106i;

    /* renamed from: j, reason: collision with root package name */
    public final zzo f10107j;

    /* renamed from: k, reason: collision with root package name */
    public final zzed f10108k;

    /* renamed from: l, reason: collision with root package name */
    public final zzp f10109l;

    /* renamed from: m, reason: collision with root package name */
    public final RemoteMediaClient.Callback f10110m;

    /* renamed from: n, reason: collision with root package name */
    public RemoteMediaClient f10111n;

    /* renamed from: o, reason: collision with root package name */
    public CastDevice f10112o;

    /* renamed from: p, reason: collision with root package name */
    public MediaSessionCompat f10113p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f10114q;

    /* renamed from: r, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f10115r;

    /* renamed from: s, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f10116s;

    /* renamed from: t, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f10117t;

    /* renamed from: u, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f10118u;

    /* JADX WARN: Type inference failed for: r8v1, types: [com.google.android.gms.cast.framework.media.internal.zzp] */
    public zzv(Context context, CastOptions castOptions, zzbf zzbfVar) {
        NotificationOptions notificationOptions;
        this.f10098a = context;
        this.f10099b = castOptions;
        this.f10100c = zzbfVar;
        CastContext sharedInstance = CastContext.getSharedInstance();
        zzo zzoVar = null;
        this.f10101d = sharedInstance != null ? sharedInstance.getSessionManager() : null;
        CastMediaOptions castMediaOptions = castOptions.getCastMediaOptions();
        this.f10102e = castMediaOptions == null ? null : castMediaOptions.getNotificationOptions();
        this.f10110m = new zzu(this);
        String expandedControllerActivityClassName = castMediaOptions == null ? null : castMediaOptions.getExpandedControllerActivityClassName();
        this.f10103f = !TextUtils.isEmpty(expandedControllerActivityClassName) ? new ComponentName(context, expandedControllerActivityClassName) : null;
        String mediaIntentReceiverClassName = castMediaOptions == null ? null : castMediaOptions.getMediaIntentReceiverClassName();
        this.f10104g = !TextUtils.isEmpty(mediaIntentReceiverClassName) ? new ComponentName(context, mediaIntentReceiverClassName) : null;
        zzb zzbVar = new zzb(context);
        this.f10105h = zzbVar;
        zzbVar.zzc(new zzq(this));
        zzb zzbVar2 = new zzb(context);
        this.f10106i = zzbVar2;
        zzbVar2.zzc(new zzr(this));
        this.f10108k = new zzed(Looper.getMainLooper());
        Logger logger = zzo.f10069w;
        CastMediaOptions castMediaOptions2 = castOptions.getCastMediaOptions();
        if (castMediaOptions2 != null && (notificationOptions = castMediaOptions2.getNotificationOptions()) != null) {
            com.google.android.gms.cast.framework.media.zzg zzm = notificationOptions.zzm();
            if (zzm != null) {
                List zzf = zzw.zzf(zzm);
                int[] zzg = zzw.zzg(zzm);
                int size = zzf == null ? 0 : zzf.size();
                Logger logger2 = zzo.f10069w;
                if (zzf == null || zzf.isEmpty()) {
                    logger2.e("NotificationActionsProvider".concat(" doesn't provide any action."), new Object[0]);
                } else if (zzf.size() > 5) {
                    logger2.e("NotificationActionsProvider".concat(" provides more than 5 actions."), new Object[0]);
                } else if (zzg == null || (zzg.length) == 0) {
                    logger2.e("NotificationActionsProvider".concat(" doesn't provide any actions for compact view."), new Object[0]);
                } else {
                    for (int i2 : zzg) {
                        if (i2 < 0 || i2 >= size) {
                            logger2.e("NotificationActionsProvider".concat("provides a compact view action whose index is out of bounds."), new Object[0]);
                            break;
                        }
                    }
                }
            }
            zzoVar = new zzo(context);
        }
        this.f10107j = zzoVar;
        this.f10109l = new Runnable() { // from class: com.google.android.gms.cast.framework.media.internal.zzp
            @Override // java.lang.Runnable
            public final void run() {
                zzv.this.e(false);
            }
        };
    }

    public final long a(int i2, String str, Bundle bundle) {
        char c7;
        long j7;
        int hashCode = str.hashCode();
        if (hashCode == -945151566) {
            if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                c7 = 2;
            }
            c7 = 65535;
        } else if (hashCode != -945080078) {
            if (hashCode == 235550565 && str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                c7 = 0;
            }
            c7 = 65535;
        } else {
            if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                c7 = 1;
            }
            c7 = 65535;
        }
        if (c7 == 0) {
            if (i2 == 3) {
                j7 = 514;
                i2 = 3;
            } else {
                j7 = 512;
            }
            if (i2 != 2) {
                return j7;
            }
            return 516L;
        }
        if (c7 == 1) {
            RemoteMediaClient remoteMediaClient = this.f10111n;
            if (remoteMediaClient != null && remoteMediaClient.zzu()) {
                return 16L;
            }
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
            return 0L;
        }
        if (c7 != 2) {
            return 0L;
        }
        RemoteMediaClient remoteMediaClient2 = this.f10111n;
        if (remoteMediaClient2 != null && remoteMediaClient2.zzt()) {
            return 32L;
        }
        bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        return 0L;
    }

    public final Uri b(MediaMetadata mediaMetadata, int i2) {
        CastMediaOptions castMediaOptions = this.f10099b.getCastMediaOptions();
        ImagePicker imagePicker = castMediaOptions == null ? null : castMediaOptions.getImagePicker();
        WebImage onPickImage = imagePicker != null ? imagePicker.onPickImage(mediaMetadata, i2) : mediaMetadata.hasImages() ? mediaMetadata.getImages().get(0) : null;
        if (onPickImage == null) {
            return null;
        }
        return onPickImage.getUrl();
    }

    public final void c(int i2, Bitmap bitmap) {
        MediaSessionCompat mediaSessionCompat = this.f10113p;
        if (mediaSessionCompat == null) {
            return;
        }
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            bitmap.eraseColor(0);
        }
        MediaSessionCompat mediaSessionCompat2 = this.f10113p;
        MediaMetadataCompat metadata = mediaSessionCompat2 == null ? null : mediaSessionCompat2.getController().getMetadata();
        mediaSessionCompat.setMetadata((metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata)).putBitmap(i2 == 0 ? MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON : MediaMetadataCompat.METADATA_KEY_ALBUM_ART, bitmap).build());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void d(PlaybackStateCompat.Builder builder, String str, NotificationAction notificationAction) {
        char c7;
        PlaybackStateCompat.CustomAction customAction;
        switch (str.hashCode()) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        Context context = this.f10098a;
        NotificationOptions notificationOptions = this.f10102e;
        if (c7 == 0) {
            if (this.f10115r == null && notificationOptions != null) {
                long skipStepMs = notificationOptions.getSkipStepMs();
                this.f10115r = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_FORWARD, context.getResources().getString(zzw.zzb(notificationOptions, skipStepMs)), zzw.zza(notificationOptions, skipStepMs)).build();
            }
            customAction = this.f10115r;
        } else if (c7 == 1) {
            if (this.f10116s == null && notificationOptions != null) {
                long skipStepMs2 = notificationOptions.getSkipStepMs();
                this.f10116s = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_REWIND, context.getResources().getString(zzw.zzd(notificationOptions, skipStepMs2)), zzw.zzc(notificationOptions, skipStepMs2)).build();
            }
            customAction = this.f10116s;
        } else if (c7 == 2) {
            if (this.f10117t == null && notificationOptions != null) {
                this.f10117t = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_STOP_CASTING, context.getResources().getString(notificationOptions.zza()), notificationOptions.getDisconnectDrawableResId()).build();
            }
            customAction = this.f10117t;
        } else if (c7 != 3) {
            customAction = notificationAction != null ? new PlaybackStateCompat.CustomAction.Builder(str, notificationAction.getContentDescription(), notificationAction.getIconResId()).build() : null;
        } else {
            if (this.f10118u == null && notificationOptions != null) {
                this.f10118u = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_DISCONNECT, context.getResources().getString(notificationOptions.zza()), notificationOptions.getDisconnectDrawableResId()).build();
            }
            customAction = this.f10118u;
        }
        if (customAction != null) {
            builder.addCustomAction(customAction);
        }
    }

    public final void e(boolean z6) {
        if (this.f10099b.getEnableReconnectionService()) {
            zzp zzpVar = this.f10109l;
            zzed zzedVar = this.f10108k;
            if (zzpVar != null) {
                zzedVar.removeCallbacks(zzpVar);
            }
            Context context = this.f10098a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            try {
                context.startService(intent);
            } catch (IllegalStateException unused) {
                if (z6) {
                    zzedVar.postDelayed(zzpVar, 1000L);
                }
            }
        }
    }

    public final void f() {
        zzo zzoVar = this.f10107j;
        if (zzoVar != null) {
            f10097v.d("Stopping media notification.", new Object[0]);
            zzoVar.f10079j.zza();
            NotificationManager notificationManager = zzoVar.f10071b;
            if (notificationManager != null) {
                notificationManager.cancel("castMediaNotification", 1);
            }
        }
    }

    public final void g() {
        if (this.f10099b.getEnableReconnectionService()) {
            this.f10108k.removeCallbacks(this.f10109l);
            Context context = this.f10098a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            context.stopService(intent);
        }
    }

    public final void h(MediaInfo mediaInfo, int i2) {
        PlaybackStateCompat build;
        MediaSessionCompat mediaSessionCompat;
        MediaMetadata metadata;
        PendingIntent activity;
        MediaSessionCompat mediaSessionCompat2 = this.f10113p;
        if (mediaSessionCompat2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        RemoteMediaClient remoteMediaClient = this.f10111n;
        NotificationOptions notificationOptions = this.f10102e;
        if (remoteMediaClient == null || this.f10107j == null) {
            build = builder.build();
        } else {
            builder.setState(i2, (remoteMediaClient.zza() == 0 || remoteMediaClient.isLiveStream()) ? 0L : remoteMediaClient.getApproximateStreamPosition(), 1.0f);
            if (i2 == 0) {
                build = builder.build();
            } else {
                com.google.android.gms.cast.framework.media.zzg zzm = notificationOptions != null ? notificationOptions.zzm() : null;
                RemoteMediaClient remoteMediaClient2 = this.f10111n;
                long j7 = (remoteMediaClient2 == null || remoteMediaClient2.isLiveStream() || this.f10111n.isPlayingAd()) ? 0L : 256L;
                if (zzm != null) {
                    List<NotificationAction> zzf = zzw.zzf(zzm);
                    if (zzf != null) {
                        for (NotificationAction notificationAction : zzf) {
                            String action = notificationAction.getAction();
                            if (TextUtils.equals(action, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(action, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(action, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                                j7 = a(i2, action, bundle) | j7;
                            } else {
                                d(builder, action, notificationAction);
                            }
                        }
                    }
                } else if (notificationOptions != null) {
                    for (String str : notificationOptions.getActions()) {
                        if (TextUtils.equals(str, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                            j7 = a(i2, str, bundle) | j7;
                        } else {
                            d(builder, str, null);
                        }
                    }
                }
                build = builder.setActions(j7).build();
            }
        }
        mediaSessionCompat2.setPlaybackState(build);
        if (notificationOptions != null && notificationOptions.zzp()) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
        }
        if (notificationOptions != null && notificationOptions.zzo()) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        if (bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS") || bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
            mediaSessionCompat2.setExtras(bundle);
        }
        if (i2 == 0) {
            mediaSessionCompat2.setMetadata(new MediaMetadataCompat.Builder().build());
            return;
        }
        if (this.f10111n != null) {
            ComponentName componentName = this.f10103f;
            if (componentName == null) {
                activity = null;
            } else {
                Intent intent = new Intent();
                intent.setComponent(componentName);
                activity = PendingIntent.getActivity(this.f10098a, 0, intent, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE);
            }
            if (activity != null) {
                mediaSessionCompat2.setSessionActivity(activity);
            }
        }
        if (this.f10111n == null || (mediaSessionCompat = this.f10113p) == null || mediaInfo == null || (metadata = mediaInfo.getMetadata()) == null) {
            return;
        }
        RemoteMediaClient remoteMediaClient3 = this.f10111n;
        long streamDuration = (remoteMediaClient3 == null || !remoteMediaClient3.isLiveStream()) ? mediaInfo.getStreamDuration() : 0L;
        String string = metadata.getString("com.google.android.gms.cast.metadata.TITLE");
        String string2 = metadata.getString("com.google.android.gms.cast.metadata.SUBTITLE");
        MediaSessionCompat mediaSessionCompat3 = this.f10113p;
        MediaMetadataCompat metadata2 = mediaSessionCompat3 == null ? null : mediaSessionCompat3.getController().getMetadata();
        MediaMetadataCompat.Builder putLong = (metadata2 == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata2)).putLong(MediaMetadataCompat.METADATA_KEY_DURATION, streamDuration);
        if (string != null) {
            putLong.putString(MediaMetadataCompat.METADATA_KEY_TITLE, string);
            putLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, string);
        }
        if (string2 != null) {
            putLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, string2);
        }
        mediaSessionCompat.setMetadata(putLong.build());
        Uri b7 = b(metadata, 0);
        if (b7 != null) {
            this.f10105h.zzd(b7);
        } else {
            c(0, null);
        }
        Uri b8 = b(metadata, 3);
        if (b8 != null) {
            this.f10106i.zzd(b8);
        } else {
            c(3, null);
        }
    }

    public final void zzh(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        ComponentName componentName;
        AudioManager audioManager;
        CastOptions castOptions = this.f10099b;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.getCastMediaOptions();
        if (this.f10114q || castOptions == null || castMediaOptions == null || this.f10102e == null || remoteMediaClient == null || castDevice == null || (componentName = this.f10104g) == null) {
            f10097v.d("skip attaching media session", new Object[0]);
            return;
        }
        this.f10111n = remoteMediaClient;
        remoteMediaClient.registerCallback(this.f10110m);
        this.f10112o = castDevice;
        boolean isAtLeastLollipop = PlatformVersion.isAtLeastLollipop();
        Context context = this.f10098a;
        if (!isAtLeastLollipop && (audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
            audioManager.requestAudioFocus(null, 3, 3);
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, zzdy.zza);
        if (castMediaOptions.getMediaSessionEnabled()) {
            MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, "CastMediaSession", componentName, broadcast);
            this.f10113p = mediaSessionCompat;
            h(null, 0);
            CastDevice castDevice2 = this.f10112o;
            if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.getFriendlyName())) {
                mediaSessionCompat.setMetadata(new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST, context.getResources().getString(R.string.cast_casting_to_device, this.f10112o.getFriendlyName())).build());
            }
            mediaSessionCompat.setCallback(new zzs(this));
            mediaSessionCompat.setActive(true);
            this.f10100c.zzr(mediaSessionCompat);
        }
        this.f10114q = true;
        zzl(false);
    }

    public final void zzi(int i2) {
        AudioManager audioManager;
        if (this.f10114q) {
            this.f10114q = false;
            RemoteMediaClient remoteMediaClient = this.f10111n;
            if (remoteMediaClient != null) {
                remoteMediaClient.unregisterCallback(this.f10110m);
            }
            if (!PlatformVersion.isAtLeastLollipop() && (audioManager = (AudioManager) this.f10098a.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                audioManager.abandonAudioFocus(null);
            }
            this.f10100c.zzr(null);
            zzb zzbVar = this.f10105h;
            if (zzbVar != null) {
                zzbVar.zza();
            }
            zzb zzbVar2 = this.f10106i;
            if (zzbVar2 != null) {
                zzbVar2.zza();
            }
            MediaSessionCompat mediaSessionCompat = this.f10113p;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setCallback(null);
                this.f10113p.setMetadata(new MediaMetadataCompat.Builder().build());
                h(null, 0);
            }
            MediaSessionCompat mediaSessionCompat2 = this.f10113p;
            if (mediaSessionCompat2 != null) {
                mediaSessionCompat2.setActive(false);
                this.f10113p.release();
                this.f10113p = null;
            }
            this.f10111n = null;
            this.f10112o = null;
            f();
            if (i2 == 0) {
                g();
            }
        }
    }

    public final void zzk(CastDevice castDevice) {
        f10097v.i("update Cast device to %s", castDevice);
        this.f10112o = castDevice;
        zzl(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzl(boolean r23) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.internal.zzv.zzl(boolean):void");
    }
}
