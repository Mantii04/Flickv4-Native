package com.google.android.gms.cast.framework.media.internal;

import android.os.RemoteException;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import java.util.List;

/* loaded from: classes.dex */
public final class zzw {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f10119a = new Logger("MediaSessionUtils");

    public static int zza(NotificationOptions notificationOptions, long j7) {
        return j7 == Renderer.DEFAULT_DURATION_TO_PROGRESS_US ? notificationOptions.getForward10DrawableResId() : j7 != 30000 ? notificationOptions.getForwardDrawableResId() : notificationOptions.getForward30DrawableResId();
    }

    public static int zzb(NotificationOptions notificationOptions, long j7) {
        return j7 == Renderer.DEFAULT_DURATION_TO_PROGRESS_US ? notificationOptions.zzb() : j7 != 30000 ? notificationOptions.zzd() : notificationOptions.zzc();
    }

    public static int zzc(NotificationOptions notificationOptions, long j7) {
        return j7 == Renderer.DEFAULT_DURATION_TO_PROGRESS_US ? notificationOptions.getRewind10DrawableResId() : j7 != 30000 ? notificationOptions.getRewindDrawableResId() : notificationOptions.getRewind30DrawableResId();
    }

    public static int zzd(NotificationOptions notificationOptions, long j7) {
        return j7 == Renderer.DEFAULT_DURATION_TO_PROGRESS_US ? notificationOptions.zzh() : j7 != 30000 ? notificationOptions.zzj() : notificationOptions.zzi();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        if (r1 != 4) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r4.containsKey("com.google.android.gms.cast.metadata.COMPOSER") != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zze(com.google.android.gms.cast.MediaMetadata r4) {
        /*
            java.lang.String r0 = "com.google.android.gms.cast.metadata.SUBTITLE"
            boolean r1 = r4.containsKey(r0)
            if (r1 != 0) goto L3c
            int r1 = r4.getMediaType()
            r2 = 1
            if (r1 == r2) goto L3a
            r2 = 2
            if (r1 == r2) goto L37
            r2 = 3
            java.lang.String r3 = "com.google.android.gms.cast.metadata.ARTIST"
            if (r1 == r2) goto L1d
            r2 = 4
            if (r1 == r2) goto L1b
            goto L3c
        L1b:
            r0 = r3
            goto L3c
        L1d:
            boolean r1 = r4.containsKey(r3)
            if (r1 == 0) goto L24
            goto L1b
        L24:
            java.lang.String r1 = "com.google.android.gms.cast.metadata.ALBUM_ARTIST"
            boolean r2 = r4.containsKey(r1)
            if (r2 == 0) goto L2e
        L2c:
            r0 = r1
            goto L3c
        L2e:
            java.lang.String r1 = "com.google.android.gms.cast.metadata.COMPOSER"
            boolean r2 = r4.containsKey(r1)
            if (r2 == 0) goto L3c
            goto L2c
        L37:
            java.lang.String r0 = "com.google.android.gms.cast.metadata.SERIES_TITLE"
            goto L3c
        L3a:
            java.lang.String r0 = "com.google.android.gms.cast.metadata.STUDIO"
        L3c:
            java.lang.String r4 = r4.getString(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.internal.zzw.zze(com.google.android.gms.cast.MediaMetadata):java.lang.String");
    }

    public static List zzf(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzf();
        } catch (RemoteException e3) {
            f10119a.e(e3, "Unable to call %s on %s.", "getNotificationActions", "zzg");
            return null;
        }
    }

    public static int[] zzg(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzg();
        } catch (RemoteException e3) {
            f10119a.e(e3, "Unable to call %s on %s.", "getCompactViewActionIndices", "zzg");
            return null;
        }
    }
}
