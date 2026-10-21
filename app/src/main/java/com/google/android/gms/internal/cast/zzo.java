package com.google.android.gms.internal.cast;

import A.i;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import cz.msebera.android.httpclient.util.LangUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
public final class zzo {
    private static final Logger zza = new Logger("FeatureUsageAnalytics");
    private static final String zzb = "21.4.0";
    private static zzo zzc;
    private final zzg zzd;
    private final SharedPreferences zze;
    private final String zzf;
    private long zzl;
    private final Clock zzk = DefaultClock.getInstance();
    private final Set zzi = new HashSet();
    private final Set zzj = new HashSet();
    private final Handler zzh = new zzed(Looper.getMainLooper());
    private final Runnable zzg = new Runnable() { // from class: com.google.android.gms.internal.cast.zzn
        @Override // java.lang.Runnable
        public final void run() {
            zzo.zzc(zzo.this);
        }
    };

    private zzo(SharedPreferences sharedPreferences, zzg zzgVar, String str) {
        this.zze = sharedPreferences;
        this.zzd = zzgVar;
        this.zzf = str;
    }

    public static synchronized zzo zza(SharedPreferences sharedPreferences, zzg zzgVar, String str) {
        zzo zzoVar;
        synchronized (zzo.class) {
            try {
                if (zzc == null) {
                    zzc = new zzo(sharedPreferences, zzgVar, str);
                }
                zzoVar = zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzoVar;
    }

    public static String zzb(String str, String str2) {
        return i.B(str, str2);
    }

    public static /* synthetic */ void zzc(zzo zzoVar) {
        if (zzoVar.zzi.isEmpty()) {
            return;
        }
        long j7 = true != zzoVar.zzj.equals(zzoVar.zzi) ? DateUtils.MILLIS_PER_DAY : 172800000L;
        long zzf = zzoVar.zzf();
        long j8 = zzoVar.zzl;
        if (j8 == 0 || zzf - j8 >= j7) {
            zza.d("Upload the feature usage report.", new Object[0]);
            zznd zza2 = zzne.zza();
            zza2.zzb(zzb);
            zza2.zza(zzoVar.zzf);
            zzne zzneVar = (zzne) zza2.zzq();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(zzoVar.zzi);
            zzmx zza3 = zzmy.zza();
            zza3.zza(arrayList);
            zza3.zzb(zzneVar);
            zzmy zzmyVar = (zzmy) zza3.zzq();
            zznn zzc2 = zzno.zzc();
            zzc2.zzc(zzmyVar);
            zzoVar.zzd.zze((zzno) zzc2.zzq(), 243);
            SharedPreferences sharedPreferences = zzoVar.zze;
            Set set = zzoVar.zzj;
            Set set2 = zzoVar.zzi;
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (!set.equals(set2)) {
                zzoVar.zzj.clear();
                zzoVar.zzj.addAll(zzoVar.zzi);
                Iterator it = zzoVar.zzj.iterator();
                while (it.hasNext()) {
                    String num = Integer.toString(((zzml) it.next()).zza());
                    String zzh = zzoVar.zzh(num);
                    String zzb2 = zzb("feature_usage_timestamp_reported_feature_", num);
                    if (!TextUtils.equals(zzh, zzb2)) {
                        long j9 = zzoVar.zze.getLong(zzh, 0L);
                        edit.remove(zzh);
                        if (j9 != 0) {
                            edit.putLong(zzb2, j9);
                        }
                    }
                }
            }
            zzoVar.zzl = zzf;
            edit.putLong("feature_usage_last_report_time", zzf).apply();
        }
    }

    public static void zzd(zzml zzmlVar) {
        zzo zzoVar;
        if (!zzg.zza || (zzoVar = zzc) == null) {
            return;
        }
        zzoVar.zze.edit().putLong(zzoVar.zzh(Integer.toString(zzmlVar.zza())), zzoVar.zzf()).apply();
        zzoVar.zzi.add(zzmlVar);
        zzoVar.zzj();
    }

    private final long zzf() {
        return ((Clock) Preconditions.checkNotNull(this.zzk)).currentTimeMillis();
    }

    private static zzml zzg(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            zzml zzmlVar = zzml.DEVELOPER_FEATURE_FLAG_UNKNOWN;
            switch (parseInt) {
                case 0:
                    return zzml.DEVELOPER_FEATURE_FLAG_UNKNOWN;
                case 1:
                    return zzml.CAF_CAST_BUTTON;
                case 2:
                    return zzml.CAF_EXPANDED_CONTROLLER;
                case 3:
                    return zzml.CAF_MINI_CONTROLLER;
                case 4:
                    return zzml.CAF_CONTAINER_CONTROLLER;
                case 5:
                    return zzml.CAST_CONTEXT;
                case 6:
                    return zzml.IMAGE_CACHE;
                case 7:
                    return zzml.IMAGE_PICKER;
                case 8:
                    return zzml.AD_BREAK_PARSER;
                case 9:
                    return zzml.UI_STYLE;
                case 10:
                    return zzml.HARDWARE_VOLUME_BUTTON;
                case 11:
                    return zzml.NON_CAST_DEVICE_PROVIDER;
                case 12:
                    return zzml.PAUSE_CONTROLLER;
                case 13:
                    return zzml.SEEK_CONTROLLER;
                case 14:
                    return zzml.STREAM_VOLUME;
                case 15:
                    return zzml.UI_MEDIA_CONTROLLER;
                case 16:
                    return zzml.PLAYBACK_RATE_CONTROLLER;
                case 17:
                    return zzml.PRECACHE;
                case 18:
                    return zzml.INSTRUCTIONS_VIEW;
                case 19:
                    return zzml.OPTION_SUSPEND_SESSIONS_WHEN_BACKGROUNDED;
                case 20:
                    return zzml.OPTION_STOP_RECEIVER_APPLICATION_WHEN_ENDING_SESSION;
                case 21:
                    return zzml.OPTION_DISABLE_DISCOVERY_AUTOSTART;
                case 22:
                    return zzml.OPTION_DISABLE_ANALYTICS_LOGGING;
                case 23:
                    return zzml.OPTION_PHYSICAL_VOLUME_BUTTONS_WILL_CONTROL_DEVICE_VOLUME;
                case 24:
                    return zzml.CAF_EXPANDED_CONTROLLER_HIDE_STREAM_POSITION_CONTROLS_FOR_LIVE_CONTENT;
                case 25:
                    return zzml.CAF_EXPANDED_CONTROLLER_WITH_LIVE_CONTENT;
                case 26:
                    return zzml.REMOTE_MEDIA_CLIENT_LOAD_MEDIA_WITH_OPTIONS;
                case 27:
                    return zzml.REMOTE_MEDIA_CLIENT_QUEUE_LOAD_ITEMS_WITH_OPTIONS;
                case 28:
                    return zzml.REMOTE_MEDIA_CLIENT_LOAD_MEDIA_WITH_LOAD_REQUEST_DATA;
                case 29:
                    return zzml.LAUNCH_OPTION_ANDROID_RECEIVER_COMPATIBLE;
                case 30:
                    return zzml.CAST_CONTEXT_SET_LAUNCH_CREDENTIALS_DATA;
                case 31:
                    return zzml.START_DISCOVERY_AFTER_FIRST_TAP_ON_CAST_BUTTON;
                case 32:
                    return zzml.CAST_UNAVAILABLE_BUTTON_VISIBLE;
                case 33:
                    return zzml.CAST_DEFAULT_MEDIA_ROUTER_DIALOG;
                case 34:
                    return zzml.CAST_CUSTOM_MEDIA_ROUTER_DIALOG;
                case 35:
                    return zzml.CAST_OUTPUT_SWITCHER_ENABLED;
                case 36:
                    return zzml.CAST_TRANSFER_TO_LOCAL_ENABLED;
                case LangUtils.HASH_OFFSET /* 37 */:
                    return zzml.CAST_BUTTON_IS_TRIGGERED_DEFAULT_CAST_DIALOG_FALSE;
                case 38:
                    return zzml.CAST_BUTTON_DELEGATE;
                case 39:
                    return zzml.CAST_BUTTON_DELEGATE_PRESENT_LNA_PERMISSION_CUSTOM_DIALOG;
                case 40:
                    return zzml.CAST_BUTTON_DELEGATE_PRESENT_CAST_STATE_CUSTOM_DIALOG;
                case 41:
                    return zzml.CAST_TRANSFER_TO_LOCAL_USED;
                case 42:
                    return zzml.MEDIA_REQUEST_ITEM_MAP_HLS_SEGMENT_FORMAT_TO_STRING;
                case 43:
                    return zzml.MEDIA_REQUEST_ITEM_MAP_HLS_SEGMENT_FORMAT_STRING_TO_ENUM;
                case 44:
                    return zzml.HLS_SEGMENT_MAP_HLS_SEGMENT_FORMAT_TO_STRING;
                case 45:
                    return zzml.HLS_SEGMENT_MAP_HLS_SEGMENT_FORMAT_STRING_TO_ENUM;
                case 46:
                    return zzml.HLS_VIDEO_SEGMENT_MAP_HLS_VIDEO_SEGMENT_FORMAT_TO_STRING;
                case 47:
                    return zzml.HLS_VIDEO_SEGMENT_MAP_HLS_VIDEO_SEGMENT_FORMAT_STRING_TO_ENUM;
                case 48:
                    return zzml.CAST_SLIDER_SET_AD_BLOCK_POSITIONS;
                case 49:
                    return zzml.CAF_NOTIFICATION_SERVICE;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    return zzml.HARDWARE_VOLUME_BUTTON_PRESS;
                case 51:
                    return zzml.CAST_SDK_DEFAULT_DEVICE_DIALOG;
                case 52:
                    return zzml.CAST_SDK_CUSTOM_DEVICE_DIALOG;
                case 53:
                    return zzml.PERSISTENT_CAST_BUTTON_DISCOVERY_DISABLED_WITH_CONFLICT_TYPES;
                case 54:
                    return zzml.CAST_DEVICE_DIALOG_FACTORY_INSTANTIATED;
                case 55:
                    return zzml.CAF_MEDIA_NOTIFICATION_PROXY;
                default:
                    return null;
            }
        } catch (NumberFormatException unused) {
            return zzml.DEVELOPER_FEATURE_FLAG_UNKNOWN;
        }
    }

    private final String zzh(String str) {
        SharedPreferences sharedPreferences = this.zze;
        String zzb2 = zzb("feature_usage_timestamp_reported_feature_", str);
        return sharedPreferences.contains(zzb2) ? zzb2 : zzb("feature_usage_timestamp_detected_feature_", str);
    }

    private final void zzi(Set set) {
        if (set.isEmpty()) {
            return;
        }
        SharedPreferences.Editor edit = this.zze.edit();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            edit.remove((String) it.next());
        }
        edit.apply();
    }

    private final void zzj() {
        this.zzh.post(this.zzg);
    }

    public final void zze() {
        zzml zzg;
        SharedPreferences sharedPreferences = this.zze;
        Set set = this.zzi;
        String string = sharedPreferences.getString("feature_usage_sdk_version", null);
        String string2 = sharedPreferences.getString("feature_usage_package_name", null);
        set.clear();
        this.zzj.clear();
        this.zzl = 0L;
        if (!zzb.equals(string) || !this.zzf.equals(string2)) {
            HashSet hashSet = new HashSet();
            for (String str : this.zze.getAll().keySet()) {
                if (str.startsWith("feature_usage_timestamp_")) {
                    hashSet.add(str);
                }
            }
            hashSet.add("feature_usage_last_report_time");
            zzi(hashSet);
            this.zze.edit().putString("feature_usage_sdk_version", zzb).putString("feature_usage_package_name", this.zzf).apply();
            return;
        }
        this.zzl = this.zze.getLong("feature_usage_last_report_time", 0L);
        long zzf = zzf();
        HashSet hashSet2 = new HashSet();
        for (String str2 : this.zze.getAll().keySet()) {
            if (str2.startsWith("feature_usage_timestamp_")) {
                long j7 = this.zze.getLong(str2, 0L);
                if (j7 != 0 && zzf - j7 > 1209600000) {
                    hashSet2.add(str2);
                } else if (str2.startsWith("feature_usage_timestamp_reported_feature_")) {
                    zzml zzg2 = zzg(str2.substring(41));
                    if (zzg2 != null) {
                        this.zzj.add(zzg2);
                        this.zzi.add(zzg2);
                    }
                } else if (str2.startsWith("feature_usage_timestamp_detected_feature_") && (zzg = zzg(str2.substring(41))) != null) {
                    this.zzi.add(zzg);
                }
            }
        }
        zzi(hashSet2);
        Preconditions.checkNotNull(this.zzh);
        Preconditions.checkNotNull(this.zzg);
        zzj();
    }
}
