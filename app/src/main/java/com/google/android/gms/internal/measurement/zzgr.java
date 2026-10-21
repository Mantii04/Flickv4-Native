package com.google.android.gms.internal.measurement;

import P3.v;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p.g;

/* loaded from: classes2.dex */
public final class zzgr implements zzgy {
    private static final Map<Uri, zzgr> zza = new g();
    private static final String[] zzb = {"key", FirebaseAnalytics.Param.VALUE};
    private final ContentResolver zzc;
    private final Uri zzd;
    private final Runnable zze;
    private final ContentObserver zzf;
    private final Object zzg;
    private volatile Map<String, String> zzh;
    private final List<zzgw> zzi;

    private zzgr(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        zzgt zzgtVar = new zzgt(this, null);
        this.zzf = zzgtVar;
        this.zzg = new Object();
        this.zzi = new ArrayList();
        v.checkNotNull(contentResolver);
        v.checkNotNull(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        this.zze = runnable;
        contentResolver.registerContentObserver(uri, false, zzgtVar);
    }

    public static zzgr zza(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        zzgr zzgrVar;
        synchronized (zzgr.class) {
            Map<Uri, zzgr> map = zza;
            zzgrVar = map.get(uri);
            if (zzgrVar == null) {
                try {
                    zzgr zzgrVar2 = new zzgr(contentResolver, uri, runnable);
                    try {
                        map.put(uri, zzgrVar2);
                    } catch (SecurityException unused) {
                    }
                    zzgrVar = zzgrVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzgrVar;
    }

    public static synchronized void zzc() {
        synchronized (zzgr.class) {
            try {
                for (zzgr zzgrVar : zza.values()) {
                    zzgrVar.zzc.unregisterContentObserver(zzgrVar.zzf);
                }
                zza.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final Map<String, String> zze() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                return (Map) zzgx.zza(new zzha() { // from class: com.google.android.gms.internal.measurement.zzgu
                    @Override // com.google.android.gms.internal.measurement.zzha
                    public final Object zza() {
                        return zzgr.this.zzb();
                    }
                });
            } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return null;
            }
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public final /* synthetic */ Map zzb() {
        Cursor query = this.zzc.query(this.zzd, zzb, null, null, null);
        if (query == null) {
            return Collections.EMPTY_MAP;
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.EMPTY_MAP;
            }
            Map gVar = count <= 256 ? new g(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                gVar.put(query.getString(0), query.getString(1));
            }
            return gVar;
        } finally {
            query.close();
        }
    }

    public final void zzd() {
        synchronized (this.zzg) {
            this.zzh = null;
            this.zze.run();
        }
        synchronized (this) {
            try {
                Iterator<zzgw> it = this.zzi.iterator();
                while (it.hasNext()) {
                    it.next().zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final /* synthetic */ Object zza(String str) {
        return zza().get(str);
    }

    public final Map<String, String> zza() {
        Map<String, String> map = this.zzh;
        if (map == null) {
            synchronized (this.zzg) {
                try {
                    map = this.zzh;
                    if (map == null) {
                        map = zze();
                        this.zzh = map;
                    }
                } finally {
                }
            }
        }
        return map != null ? map : Collections.EMPTY_MAP;
    }
}
