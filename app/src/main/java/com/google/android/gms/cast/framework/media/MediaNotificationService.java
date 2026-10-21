package com.google.android.gms.cast.framework.media;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.media3.common.C;
import b4.AbstractC0658h;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzdy;
import com.google.android.gms.internal.cast.zzml;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q0.C1509c;
import z.C1954B;
import z.C1977x;
import z.X;
import z.y;

/* loaded from: classes.dex */
public class MediaNotificationService extends Service {

    /* renamed from: x, reason: collision with root package name */
    public static final Logger f9945x = new Logger("MediaNotificationService");

    /* renamed from: b, reason: collision with root package name */
    public NotificationOptions f9946b;

    /* renamed from: e, reason: collision with root package name */
    public ImagePicker f9947e;

    /* renamed from: f, reason: collision with root package name */
    public ComponentName f9948f;

    /* renamed from: j, reason: collision with root package name */
    public ComponentName f9949j;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f9950m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public int[] f9951n;

    /* renamed from: p, reason: collision with root package name */
    public long f9952p;

    /* renamed from: q, reason: collision with root package name */
    public com.google.android.gms.cast.framework.media.internal.zzb f9953q;

    /* renamed from: r, reason: collision with root package name */
    public ImageHints f9954r;

    /* renamed from: s, reason: collision with root package name */
    public Resources f9955s;

    /* renamed from: t, reason: collision with root package name */
    public zzm f9956t;

    /* renamed from: u, reason: collision with root package name */
    public zzn f9957u;

    /* renamed from: v, reason: collision with root package name */
    public NotificationManager f9958v;

    /* renamed from: w, reason: collision with root package name */
    public Notification f9959w;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final y a(String str) {
        char c7;
        int pauseDrawableResId;
        int zzf;
        switch (str.hashCode()) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    c7 = 4;
                    break;
                }
                c7 = 65535;
                break;
            case -945151566:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case -945080078:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    c7 = 5;
                    break;
                }
                c7 = 65535;
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    c7 = 6;
                    break;
                }
                c7 = 65535;
                break;
            case 235550565:
                if (str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        PendingIntent pendingIntent = null;
        switch (c7) {
            case 0:
                zzm zzmVar = this.f9956t;
                if (zzmVar.f10303c == 2) {
                    pauseDrawableResId = this.f9946b.getStopLiveStreamDrawableResId();
                    zzf = this.f9946b.getStopLiveStreamTitleResId();
                } else {
                    pauseDrawableResId = this.f9946b.getPauseDrawableResId();
                    zzf = this.f9946b.zzf();
                }
                boolean z6 = zzmVar.f10302b;
                if (!z6) {
                    pauseDrawableResId = this.f9946b.getPlayDrawableResId();
                }
                if (!z6) {
                    zzf = this.f9946b.zzg();
                }
                Intent intent = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                intent.setComponent(this.f9948f);
                return new C1977x(pauseDrawableResId, this.f9955s.getString(zzf), PendingIntent.getBroadcast(this, 0, intent, zzdy.zza)).build();
            case 1:
                if (this.f9956t.f10306f) {
                    Intent intent2 = new Intent(MediaIntentReceiver.ACTION_SKIP_NEXT);
                    intent2.setComponent(this.f9948f);
                    pendingIntent = PendingIntent.getBroadcast(this, 0, intent2, zzdy.zza);
                }
                return new C1977x(this.f9946b.getSkipNextDrawableResId(), this.f9955s.getString(this.f9946b.zzk()), pendingIntent).build();
            case 2:
                if (this.f9956t.f10307g) {
                    Intent intent3 = new Intent(MediaIntentReceiver.ACTION_SKIP_PREV);
                    intent3.setComponent(this.f9948f);
                    pendingIntent = PendingIntent.getBroadcast(this, 0, intent3, zzdy.zza);
                }
                return new C1977x(this.f9946b.getSkipPrevDrawableResId(), this.f9955s.getString(this.f9946b.zzl()), pendingIntent).build();
            case 3:
                long j7 = this.f9952p;
                Intent intent4 = new Intent(MediaIntentReceiver.ACTION_FORWARD);
                intent4.setComponent(this.f9948f);
                intent4.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j7);
                return new C1977x(com.google.android.gms.cast.framework.media.internal.zzw.zza(this.f9946b, j7), this.f9955s.getString(com.google.android.gms.cast.framework.media.internal.zzw.zzb(this.f9946b, j7)), PendingIntent.getBroadcast(this, 0, intent4, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE)).build();
            case 4:
                long j8 = this.f9952p;
                Intent intent5 = new Intent(MediaIntentReceiver.ACTION_REWIND);
                intent5.setComponent(this.f9948f);
                intent5.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j8);
                return new C1977x(com.google.android.gms.cast.framework.media.internal.zzw.zzc(this.f9946b, j8), this.f9955s.getString(com.google.android.gms.cast.framework.media.internal.zzw.zzd(this.f9946b, j8)), PendingIntent.getBroadcast(this, 0, intent5, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE)).build();
            case 5:
                Intent intent6 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                intent6.setComponent(this.f9948f);
                return new C1977x(this.f9946b.getDisconnectDrawableResId(), this.f9955s.getString(this.f9946b.zza()), PendingIntent.getBroadcast(this, 0, intent6, zzdy.zza)).build();
            case 6:
                Intent intent7 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                intent7.setComponent(this.f9948f);
                return new C1977x(this.f9946b.getDisconnectDrawableResId(), this.f9955s.getString(this.f9946b.zza(), ""), PendingIntent.getBroadcast(this, 0, intent7, zzdy.zza)).build();
            default:
                f9945x.e("Action: %s is not a pre-defined action.", str);
                return null;
        }
    }

    public final void b() {
        PendingIntent pendingIntent;
        y a7;
        if (this.f9956t == null) {
            return;
        }
        zzn zznVar = this.f9957u;
        C1954B visibility = new C1954B(this, "cast_media_notification").setLargeIcon(zznVar == null ? null : zznVar.f10309b).setSmallIcon(this.f9946b.getSmallIconDrawableResId()).setContentTitle(this.f9956t.f10304d).setContentText(this.f9955s.getString(this.f9946b.getCastingToDeviceStringResId(), this.f9956t.f10305e)).setOngoing(true).setShowWhen(false).setVisibility(1);
        ComponentName componentName = this.f9949j;
        if (componentName == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            X create = X.create(this);
            create.addNextIntentWithParentStack(intent);
            pendingIntent = create.getPendingIntent(1, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE);
        }
        if (pendingIntent != null) {
            visibility.setContentIntent(pendingIntent);
        }
        zzg zzm = this.f9946b.zzm();
        Logger logger = f9945x;
        if (zzm != null) {
            logger.i("actionsProvider != null", new Object[0]);
            int[] zzg = com.google.android.gms.cast.framework.media.internal.zzw.zzg(zzm);
            this.f9951n = zzg != null ? (int[]) zzg.clone() : null;
            List<NotificationAction> zzf = com.google.android.gms.cast.framework.media.internal.zzw.zzf(zzm);
            this.f9950m = new ArrayList();
            if (zzf != null) {
                for (NotificationAction notificationAction : zzf) {
                    String action = notificationAction.getAction();
                    if (action.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || action.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || action.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || action.equals(MediaIntentReceiver.ACTION_FORWARD) || action.equals(MediaIntentReceiver.ACTION_REWIND) || action.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || action.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        a7 = a(notificationAction.getAction());
                    } else {
                        Intent intent2 = new Intent(notificationAction.getAction());
                        intent2.setComponent(this.f9948f);
                        a7 = new C1977x(notificationAction.getIconResId(), notificationAction.getContentDescription(), PendingIntent.getBroadcast(this, 0, intent2, zzdy.zza)).build();
                    }
                    if (a7 != null) {
                        this.f9950m.add(a7);
                    }
                }
            }
        } else {
            logger.i("actionsProvider == null", new Object[0]);
            this.f9950m = new ArrayList();
            Iterator<String> it = this.f9946b.getActions().iterator();
            while (it.hasNext()) {
                y a8 = a(it.next());
                if (a8 != null) {
                    this.f9950m.add(a8);
                }
            }
            this.f9951n = (int[]) this.f9946b.getCompatActionIndices().clone();
        }
        Iterator it2 = this.f9950m.iterator();
        while (it2.hasNext()) {
            visibility.addAction((y) it2.next());
        }
        C1509c c1509c = new C1509c();
        int[] iArr = this.f9951n;
        if (iArr != null) {
            c1509c.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f9956t.f10301a;
        if (token != null) {
            c1509c.setMediaSession(token);
        }
        visibility.setStyle(c1509c);
        Notification build = visibility.build();
        this.f9959w = build;
        startForeground(1, build);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f9958v = (NotificationManager) getSystemService("notification");
        CastMediaOptions castMediaOptions = (CastMediaOptions) Preconditions.checkNotNull(CastContext.getSharedInstance(this).getCastOptions().getCastMediaOptions());
        this.f9946b = (NotificationOptions) Preconditions.checkNotNull(castMediaOptions.getNotificationOptions());
        this.f9947e = castMediaOptions.getImagePicker();
        this.f9955s = getResources();
        this.f9948f = new ComponentName(getApplicationContext(), castMediaOptions.getMediaIntentReceiverClassName());
        if (TextUtils.isEmpty(this.f9946b.getTargetActivityClassName())) {
            this.f9949j = null;
        } else {
            this.f9949j = new ComponentName(getApplicationContext(), this.f9946b.getTargetActivityClassName());
        }
        this.f9952p = this.f9946b.getSkipStepMs();
        int dimensionPixelSize = this.f9955s.getDimensionPixelSize(this.f9946b.zze());
        this.f9954r = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.f9953q = new com.google.android.gms.cast.framework.media.internal.zzb(getApplicationContext(), this.f9954r);
        if (PlatformVersion.isAtLeastO()) {
            NotificationChannel C6 = AbstractC0658h.C(getResources().getString(R.string.media_notification_channel_name));
            C6.setShowBadge(false);
            this.f9958v.createNotificationChannel(C6);
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAF_NOTIFICATION_SERVICE);
    }

    @Override // android.app.Service
    public void onDestroy() {
        com.google.android.gms.cast.framework.media.internal.zzb zzbVar = this.f9953q;
        if (zzbVar != null) {
            zzbVar.zza();
        }
        this.f9958v.cancel(1);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, final int i7) {
        zzm zzmVar;
        MediaInfo mediaInfo = (MediaInfo) Preconditions.checkNotNull((MediaInfo) intent.getParcelableExtra("extra_media_info"));
        MediaMetadata mediaMetadata = (MediaMetadata) Preconditions.checkNotNull(mediaInfo.getMetadata());
        zzm zzmVar2 = new zzm(intent.getIntExtra("extra_remote_media_client_player_state", 0) == 2, mediaInfo.getStreamType(), mediaMetadata.getString("com.google.android.gms.cast.metadata.TITLE"), ((CastDevice) Preconditions.checkNotNull((CastDevice) intent.getParcelableExtra("extra_cast_device"))).getFriendlyName(), (MediaSessionCompat.Token) intent.getParcelableExtra("extra_media_session_token"), intent.getBooleanExtra("extra_can_skip_next", false), intent.getBooleanExtra("extra_can_skip_prev", false));
        if (intent.getBooleanExtra("extra_media_notification_force_update", false) || (zzmVar = this.f9956t) == null || zzmVar2.f10302b != zzmVar.f10302b || zzmVar2.f10303c != zzmVar.f10303c || !CastUtils.zze(zzmVar2.f10304d, zzmVar.f10304d) || !CastUtils.zze(zzmVar2.f10305e, zzmVar.f10305e) || zzmVar2.f10306f != zzmVar.f10306f || zzmVar2.f10307g != zzmVar.f10307g) {
            this.f9956t = zzmVar2;
            b();
        }
        ImagePicker imagePicker = this.f9947e;
        zzn zznVar = new zzn(imagePicker != null ? imagePicker.onPickImage(mediaMetadata, this.f9954r) : mediaMetadata.hasImages() ? mediaMetadata.getImages().get(0) : null);
        zzn zznVar2 = this.f9957u;
        Uri uri = zznVar.f10308a;
        if (zznVar2 == null || !CastUtils.zze(uri, zznVar2.f10308a)) {
            this.f9953q.zzc(new zzl(this, zznVar));
            this.f9953q.zzd(uri);
        }
        startForeground(1, this.f9959w);
        new Runnable() { // from class: com.google.android.gms.cast.framework.media.zzk
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationService.this.stopSelf(i7);
            }
        };
        return 2;
    }
}
