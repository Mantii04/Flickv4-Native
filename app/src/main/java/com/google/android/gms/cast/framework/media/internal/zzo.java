package com.google.android.gms.cast.framework.media.internal;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.media3.common.C;
import b4.AbstractC0658h;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
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
final class zzo {

    /* renamed from: w, reason: collision with root package name */
    public static final Logger f10069w = new Logger("MediaNotificationProxy");

    /* renamed from: a, reason: collision with root package name */
    public final Context f10070a;

    /* renamed from: b, reason: collision with root package name */
    public final NotificationManager f10071b;

    /* renamed from: c, reason: collision with root package name */
    public final NotificationOptions f10072c;

    /* renamed from: d, reason: collision with root package name */
    public final ImagePicker f10073d;

    /* renamed from: e, reason: collision with root package name */
    public final ComponentName f10074e;

    /* renamed from: f, reason: collision with root package name */
    public final ComponentName f10075f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f10076g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public int[] f10077h;

    /* renamed from: i, reason: collision with root package name */
    public final long f10078i;

    /* renamed from: j, reason: collision with root package name */
    public final zzb f10079j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageHints f10080k;

    /* renamed from: l, reason: collision with root package name */
    public final Resources f10081l;

    /* renamed from: m, reason: collision with root package name */
    public zzm f10082m;

    /* renamed from: n, reason: collision with root package name */
    public zzn f10083n;

    /* renamed from: o, reason: collision with root package name */
    public y f10084o;

    /* renamed from: p, reason: collision with root package name */
    public y f10085p;

    /* renamed from: q, reason: collision with root package name */
    public y f10086q;

    /* renamed from: r, reason: collision with root package name */
    public y f10087r;

    /* renamed from: s, reason: collision with root package name */
    public y f10088s;

    /* renamed from: t, reason: collision with root package name */
    public y f10089t;

    /* renamed from: u, reason: collision with root package name */
    public y f10090u;

    /* renamed from: v, reason: collision with root package name */
    public y f10091v;

    public zzo(Context context) {
        this.f10070a = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.f10071b = notificationManager;
        CastMediaOptions castMediaOptions = (CastMediaOptions) Preconditions.checkNotNull(((CastOptions) Preconditions.checkNotNull(((CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance())).getCastOptions())).getCastMediaOptions());
        NotificationOptions notificationOptions = (NotificationOptions) Preconditions.checkNotNull(castMediaOptions.getNotificationOptions());
        this.f10072c = notificationOptions;
        this.f10073d = castMediaOptions.getImagePicker();
        Resources resources = context.getResources();
        this.f10081l = resources;
        this.f10074e = new ComponentName(context.getApplicationContext(), castMediaOptions.getMediaIntentReceiverClassName());
        if (TextUtils.isEmpty(notificationOptions.getTargetActivityClassName())) {
            this.f10075f = null;
        } else {
            this.f10075f = new ComponentName(context.getApplicationContext(), notificationOptions.getTargetActivityClassName());
        }
        this.f10078i = notificationOptions.getSkipStepMs();
        int dimensionPixelSize = resources.getDimensionPixelSize(notificationOptions.zze());
        ImageHints imageHints = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.f10080k = imageHints;
        this.f10079j = new zzb(context.getApplicationContext(), imageHints);
        if (PlatformVersion.isAtLeastO() && notificationManager != null) {
            NotificationChannel C6 = AbstractC0658h.C(((Context) Preconditions.checkNotNull(context)).getResources().getString(R.string.media_notification_channel_name));
            C6.setShowBadge(false);
            notificationManager.createNotificationChannel(C6);
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAF_MEDIA_NOTIFICATION_PROXY);
    }

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
        long j7 = this.f10078i;
        PendingIntent pendingIntent = null;
        Resources resources = this.f10081l;
        Context context = this.f10070a;
        ComponentName componentName = this.f10074e;
        NotificationOptions notificationOptions = this.f10072c;
        switch (c7) {
            case 0:
                zzm zzmVar = this.f10082m;
                int i2 = zzmVar.f10062c;
                if (!zzmVar.f10061b) {
                    if (this.f10084o == null) {
                        Intent intent = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                        intent.setComponent(componentName);
                        this.f10084o = new C1977x(notificationOptions.getPlayDrawableResId(), resources.getString(notificationOptions.zzg()), PendingIntent.getBroadcast(context, 0, intent, zzdy.zza)).build();
                    }
                    return this.f10084o;
                }
                if (this.f10085p == null) {
                    if (i2 == 2) {
                        pauseDrawableResId = notificationOptions.getStopLiveStreamDrawableResId();
                        zzf = notificationOptions.getStopLiveStreamTitleResId();
                    } else {
                        pauseDrawableResId = notificationOptions.getPauseDrawableResId();
                        zzf = notificationOptions.zzf();
                    }
                    Intent intent2 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                    intent2.setComponent(componentName);
                    this.f10085p = new C1977x(pauseDrawableResId, resources.getString(zzf), PendingIntent.getBroadcast(context, 0, intent2, zzdy.zza)).build();
                }
                return this.f10085p;
            case 1:
                boolean z6 = this.f10082m.f10065f;
                if (this.f10086q == null) {
                    if (z6) {
                        Intent intent3 = new Intent(MediaIntentReceiver.ACTION_SKIP_NEXT);
                        intent3.setComponent(componentName);
                        pendingIntent = PendingIntent.getBroadcast(context, 0, intent3, zzdy.zza);
                    }
                    this.f10086q = new C1977x(notificationOptions.getSkipNextDrawableResId(), resources.getString(notificationOptions.zzk()), pendingIntent).build();
                }
                return this.f10086q;
            case 2:
                boolean z7 = this.f10082m.f10066g;
                if (this.f10087r == null) {
                    if (z7) {
                        Intent intent4 = new Intent(MediaIntentReceiver.ACTION_SKIP_PREV);
                        intent4.setComponent(componentName);
                        pendingIntent = PendingIntent.getBroadcast(context, 0, intent4, zzdy.zza);
                    }
                    this.f10087r = new C1977x(notificationOptions.getSkipPrevDrawableResId(), resources.getString(notificationOptions.zzl()), pendingIntent).build();
                }
                return this.f10087r;
            case 3:
                if (this.f10088s == null) {
                    Intent intent5 = new Intent(MediaIntentReceiver.ACTION_FORWARD);
                    intent5.setComponent(componentName);
                    intent5.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j7);
                    this.f10088s = new C1977x(zzw.zza(notificationOptions, j7), resources.getString(zzw.zzb(notificationOptions, j7)), PendingIntent.getBroadcast(context, 0, intent5, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE)).build();
                }
                return this.f10088s;
            case 4:
                if (this.f10089t == null) {
                    Intent intent6 = new Intent(MediaIntentReceiver.ACTION_REWIND);
                    intent6.setComponent(componentName);
                    intent6.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j7);
                    this.f10089t = new C1977x(zzw.zzc(notificationOptions, j7), resources.getString(zzw.zzd(notificationOptions, j7)), PendingIntent.getBroadcast(context, 0, intent6, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE)).build();
                }
                return this.f10089t;
            case 5:
                if (this.f10091v == null) {
                    Intent intent7 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                    intent7.setComponent(componentName);
                    this.f10091v = new C1977x(notificationOptions.getDisconnectDrawableResId(), resources.getString(notificationOptions.zza()), PendingIntent.getBroadcast(context, 0, intent7, zzdy.zza)).build();
                }
                return this.f10091v;
            case 6:
                if (this.f10090u == null) {
                    Intent intent8 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                    intent8.setComponent(componentName);
                    this.f10090u = new C1977x(notificationOptions.getDisconnectDrawableResId(), resources.getString(notificationOptions.zza(), ""), PendingIntent.getBroadcast(context, 0, intent8, zzdy.zza)).build();
                }
                return this.f10090u;
            default:
                f10069w.e("Action: %s is not a pre-defined action.", str);
                return null;
        }
    }

    public final void b() {
        PendingIntent pendingIntent;
        y a7;
        NotificationManager notificationManager = this.f10071b;
        if (notificationManager == null || this.f10082m == null) {
            return;
        }
        zzn zznVar = this.f10083n;
        Bitmap bitmap = zznVar == null ? null : zznVar.f10068b;
        Context context = this.f10070a;
        C1954B largeIcon = new C1954B(context, "cast_media_notification").setLargeIcon(bitmap);
        NotificationOptions notificationOptions = this.f10072c;
        C1954B visibility = largeIcon.setSmallIcon(notificationOptions.getSmallIconDrawableResId()).setContentTitle(this.f10082m.f10063d).setContentText(this.f10081l.getString(notificationOptions.getCastingToDeviceStringResId(), this.f10082m.f10064e)).setOngoing(true).setShowWhen(false).setVisibility(1);
        ComponentName componentName = this.f10075f;
        if (componentName == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            X create = X.create(context);
            create.addNextIntentWithParentStack(intent);
            pendingIntent = create.getPendingIntent(1, zzdy.zza | C.BUFFER_FLAG_FIRST_SAMPLE);
        }
        if (pendingIntent != null) {
            visibility.setContentIntent(pendingIntent);
        }
        com.google.android.gms.cast.framework.media.zzg zzm = notificationOptions.zzm();
        Logger logger = f10069w;
        if (zzm != null) {
            logger.d("actionsProvider != null", new Object[0]);
            int[] zzg = zzw.zzg(zzm);
            this.f10077h = zzg != null ? (int[]) zzg.clone() : null;
            List<NotificationAction> zzf = zzw.zzf(zzm);
            this.f10076g = new ArrayList();
            if (zzf != null) {
                for (NotificationAction notificationAction : zzf) {
                    String action = notificationAction.getAction();
                    if (action.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || action.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || action.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || action.equals(MediaIntentReceiver.ACTION_FORWARD) || action.equals(MediaIntentReceiver.ACTION_REWIND) || action.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || action.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        a7 = a(notificationAction.getAction());
                    } else {
                        Intent intent2 = new Intent(notificationAction.getAction());
                        intent2.setComponent(this.f10074e);
                        a7 = new C1977x(notificationAction.getIconResId(), notificationAction.getContentDescription(), PendingIntent.getBroadcast(context, 0, intent2, zzdy.zza)).build();
                    }
                    if (a7 != null) {
                        this.f10076g.add(a7);
                    }
                }
            }
        } else {
            logger.d("actionsProvider == null", new Object[0]);
            this.f10076g = new ArrayList();
            Iterator<String> it = notificationOptions.getActions().iterator();
            while (it.hasNext()) {
                y a8 = a(it.next());
                if (a8 != null) {
                    this.f10076g.add(a8);
                }
            }
            this.f10077h = (int[]) notificationOptions.getCompatActionIndices().clone();
        }
        Iterator it2 = this.f10076g.iterator();
        while (it2.hasNext()) {
            visibility.addAction((y) it2.next());
        }
        C1509c c1509c = new C1509c();
        int[] iArr = this.f10077h;
        if (iArr != null) {
            c1509c.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f10082m.f10060a;
        if (token != null) {
            c1509c.setMediaSession(token);
        }
        visibility.setStyle(c1509c);
        notificationManager.notify("castMediaNotification", 1, visibility.build());
    }
}
