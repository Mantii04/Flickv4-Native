package com.google.android.gms.measurement.internal;

import A.i;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.PlaybackException;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzft;
import com.google.android.gms.internal.measurement.zznw;
import com.google.android.gms.internal.measurement.zzoh;
import com.google.android.gms.internal.measurement.zzon;
import com.google.android.gms.internal.measurement.zzoo;
import com.google.android.gms.internal.measurement.zzpy;
import com.google.android.gms.internal.measurement.zzqv;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p.g;

/* loaded from: classes2.dex */
final class zzan extends zzmy {

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f11195f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f11196g = {FirebaseAnalytics.Param.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f11197h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;"};

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f11198i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f11199j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f11200k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f11201l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f11202m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: n, reason: collision with root package name */
    public static final String[] f11203n = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"};

    /* renamed from: o, reason: collision with root package name */
    public static final String[] f11204o = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    /* renamed from: d, reason: collision with root package name */
    public final zzat f11205d;

    /* renamed from: e, reason: collision with root package name */
    public final zzms f11206e;

    public zzan(zznd zzndVar) {
        super(zzndVar);
        this.f11206e = new zzms(zzb());
        this.f11205d = new zzat(this, zza());
    }

    public static void f(ContentValues contentValues, Object obj) {
        Preconditions.checkNotEmpty(FirebaseAnalytics.Param.VALUE);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(FirebaseAnalytics.Param.VALUE, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(FirebaseAnalytics.Param.VALUE, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(FirebaseAnalytics.Param.VALUE, (Double) obj);
        }
    }

    public final SQLiteDatabase a() {
        zzt();
        try {
            return this.f11205d.getWritableDatabase();
        } catch (SQLiteException e3) {
            zzj().zzu().zza("Error opening database", e3);
            throw e3;
        }
    }

    public final long b(String str, String[] strArr, long j7) {
        Cursor cursor = null;
        try {
            try {
                cursor = a().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return j7;
                }
                long j8 = cursor.getLong(0);
                cursor.close();
                return j8;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Database error", str, e3);
                throw e3;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long b_() {
        Cursor cursor = null;
        try {
            try {
                cursor = a().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return -1L;
                }
                long j7 = cursor.getLong(0);
                cursor.close();
                return j7;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Error querying raw events", e3);
                if (cursor != null) {
                    cursor.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final Object c(Cursor cursor, int i2) {
        int type = cursor.getType(i2);
        if (type == 0) {
            zzj().zzg().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i2));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i2));
        }
        if (type == 3) {
            return cursor.getString(i2);
        }
        if (type != 4) {
            zzj().zzg().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        zzj().zzg().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    public final long c_() {
        return b("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    public final String d(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = a().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return str2;
                }
                String string = cursor.getString(0);
                cursor.close();
                return string;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Database error", str, e3);
                throw e3;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long d_() {
        return b("select max(timestamp) from raw_events", null, 0L);
    }

    public final void e(ContentValues contentValues) {
        try {
            SQLiteDatabase a7 = a();
            if (contentValues.getAsString("app_id") == null) {
                zzj().zzh().zza("Value of the primary key is not set.", zzgb.zza("app_id"));
            } else if (a7.update("consent_settings", contentValues, "app_id = ?", new String[]{r3}) == 0 && a7.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update table (got -1). key", zzgb.zza("consent_settings"), zzgb.zza("app_id"));
            }
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing into table. key", zzgb.zza("consent_settings"), zzgb.zza("app_id"), e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String f_() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.a()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L27
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            if (r2 == 0) goto L1e
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            r0.close()
            return r1
        L1a:
            r1 = move-exception
            goto L3c
        L1c:
            r2 = move-exception
            goto L29
        L1e:
            r0.close()
            return r1
        L22:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L3c
        L27:
            r2 = move-exception
            r0 = r1
        L29:
            com.google.android.gms.measurement.internal.zzgb r3 = r6.zzj()     // Catch: java.lang.Throwable -> L1a
            com.google.android.gms.measurement.internal.zzgd r3 = r3.zzg()     // Catch: java.lang.Throwable -> L1a
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.zza(r4, r2)     // Catch: java.lang.Throwable -> L1a
            if (r0 == 0) goto L3b
            r0.close()
        L3b:
            return r1
        L3c:
            if (r0 == 0) goto L41
            r0.close()
        L41:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.f_():java.lang.String");
    }

    public final void g(List list) {
        zzt();
        zzak();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zza().getDatabasePath("google_app_measurement.db").exists()) {
            String l7 = i.l("(", TextUtils.join(",", list), ")");
            if (j(i.l("SELECT COUNT(1) FROM queue WHERE rowid IN ", l7, " AND retry_count =  2147483647 LIMIT 1"), null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                a().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + l7 + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Error incrementing retry count. error", e3);
            }
        }
    }

    public final boolean h(String str, int i2, zzfh.zzb zzbVar) {
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (zzbVar.zzf().isEmpty()) {
            zzj().zzu().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgb.zza(str), Integer.valueOf(i2), String.valueOf(zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null));
            return false;
        }
        byte[] zzbv = zzbVar.zzbv();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzf());
        contentValues.put("session_scoped", zzbVar.zzm() ? Boolean.valueOf(zzbVar.zzj()) : null);
        contentValues.put(DataSchemeDataSource.SCHEME_DATA, zzbv);
        try {
            if (a().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert event filter (got -1). appId", zzgb.zza(str));
            return true;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing event filter. appId", zzgb.zza(str), e3);
            return false;
        }
    }

    public final boolean i(String str, int i2, zzfh.zze zzeVar) {
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (zzeVar.zze().isEmpty()) {
            zzj().zzu().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgb.zza(str), Integer.valueOf(i2), String.valueOf(zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null));
            return false;
        }
        byte[] zzbv = zzeVar.zzbv();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i2));
        contentValues.put("filter_id", zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null);
        contentValues.put("property_name", zzeVar.zze());
        contentValues.put("session_scoped", zzeVar.zzj() ? Boolean.valueOf(zzeVar.zzh()) : null);
        contentValues.put(DataSchemeDataSource.SCHEME_DATA, zzbv);
        try {
            if (a().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert property filter (got -1). appId", zzgb.zza(str));
            return false;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing property filter. appId", zzgb.zza(str), e3);
            return false;
        }
    }

    public final long j(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = a().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j7 = rawQuery.getLong(0);
                rawQuery.close();
                return j7;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Database error", str, e3);
                throw e3;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void k(String str, ArrayList arrayList) {
        Preconditions.checkNotEmpty(str);
        zzak();
        zzt();
        SQLiteDatabase a7 = a();
        try {
            long j7 = j("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, zze().zzb(str, zzbh.f11274G)));
            if (j7 <= max) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Integer num = (Integer) arrayList.get(i2);
                if (num == null) {
                    return;
                }
                arrayList2.add(Integer.toString(num.intValue()));
            }
            a7.delete("audience_filter_values", i.l("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ", i.l("(", TextUtils.join(",", arrayList2), ")"), " order by rowid desc limit -1 offset ?)"), new String[]{str, Integer.toString(max)});
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Database error querying filters. appId", zzgb.zza(str), e3);
        }
    }

    public final Map l(String str, String str2) {
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        g gVar = new g();
        Cursor cursor = null;
        try {
            try {
                Cursor query = a().query("event_filters", new String[]{"audience_id", DataSchemeDataSource.SCHEME_DATA}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                if (!query.moveToFirst()) {
                    Map map = Collections.EMPTY_MAP;
                    query.close();
                    return map;
                }
                do {
                    try {
                        zzfh.zzb zzbVar = (zzfh.zzb) ((com.google.android.gms.internal.measurement.zzjt) ((zzfh.zzb.zza) zznm.g(zzfh.zzb.zzc(), query.getBlob(1))).zzah());
                        int i2 = query.getInt(0);
                        List list = (List) gVar.get(Integer.valueOf(i2));
                        if (list == null) {
                            list = new ArrayList();
                            gVar.put(Integer.valueOf(i2), list);
                        }
                        list.add(zzbVar);
                    } catch (IOException e3) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgb.zza(str), e3);
                    }
                } while (query.moveToNext());
                query.close();
                return gVar;
            } catch (SQLiteException e7) {
                zzj().zzg().zza("Database error querying filters. appId", zzgb.zza(str), e7);
                Map map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } finally {
        }
    }

    public final Map m(String str, String str2) {
        zzak();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        g gVar = new g();
        Cursor cursor = null;
        try {
            try {
                Cursor query = a().query("property_filters", new String[]{"audience_id", DataSchemeDataSource.SCHEME_DATA}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                if (!query.moveToFirst()) {
                    Map map = Collections.EMPTY_MAP;
                    query.close();
                    return map;
                }
                do {
                    try {
                        zzfh.zze zzeVar = (zzfh.zze) ((com.google.android.gms.internal.measurement.zzjt) ((zzfh.zze.zza) zznm.g(zzfh.zze.zzc(), query.getBlob(1))).zzah());
                        int i2 = query.getInt(0);
                        List list = (List) gVar.get(Integer.valueOf(i2));
                        if (list == null) {
                            list = new ArrayList();
                            gVar.put(Integer.valueOf(i2), list);
                        }
                        list.add(zzeVar);
                    } catch (IOException e3) {
                        zzj().zzg().zza("Failed to merge filter", zzgb.zza(str), e3);
                    }
                } while (query.moveToNext());
                query.close();
                return gVar;
            } catch (SQLiteException e7) {
                zzj().zzg().zza("Database error querying filters. appId", zzgb.zza(str), e7);
                Map map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } finally {
        }
    }

    public final int zza(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzak();
        try {
            return a().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error deleting conditional property", zzgb.zza(str), zzi().zzc(str2), e3);
            return 0;
        }
    }

    public final long zzb(String str, String str2) {
        long b7;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzak();
        SQLiteDatabase a7 = a();
        a7.beginTransaction();
        long j7 = 0;
        try {
            try {
                b7 = b("select " + str2 + " from app2 where app_id=?", new String[]{str}, -1L);
                if (b7 == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (a7.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzj().zzg().zza("Failed to insert column (got -1). appId", zzgb.zza(str), str2);
                        return -1L;
                    }
                    b7 = 0;
                }
            } finally {
                a7.endTransaction();
            }
        } catch (SQLiteException e3) {
            e = e3;
        }
        try {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str);
            contentValues2.put(str2, Long.valueOf(1 + b7));
            if (a7.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                zzj().zzg().zza("Failed to update column (got 0). appId", zzgb.zza(str), str2);
                return -1L;
            }
            a7.setTransactionSuccessful();
            return b7;
        } catch (SQLiteException e7) {
            long j8 = b7;
            e = e7;
            j7 = j8;
            zzj().zzg().zza("Error inserting column. appId", zzgb.zza(str), str2, e);
            return j7;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzmy
    public final boolean zzc() {
        return false;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x002d: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x002d */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zzd(java.lang.String r6) {
        /*
            r5 = this;
            r5.zzt()
            r5.zzak()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.a()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            java.lang.String r2 = "select parameters from default_event_params where app_id=?"
            java.lang.String[] r3 = new java.lang.String[]{r6}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L6f
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            if (r2 != 0) goto L31
            com.google.android.gms.measurement.internal.zzgb r6 = r5.zzj()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.measurement.internal.zzgd r6 = r6.zzp()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            java.lang.String r2 = "Default event parameters not found"
            r6.zza(r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r1.close()
            return r0
        L2c:
            r6 = move-exception
            r0 = r1
            goto L84
        L2f:
            r6 = move-exception
            goto L71
        L31:
            r2 = 0
            byte[] r2 = r1.getBlob(r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.internal.measurement.zzft$zze$zza r3 = com.google.android.gms.internal.measurement.zzft.zze.zze()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L57
            com.google.android.gms.internal.measurement.zzlf r2 = com.google.android.gms.measurement.internal.zznm.g(r3, r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L57
            com.google.android.gms.internal.measurement.zzft$zze$zza r2 = (com.google.android.gms.internal.measurement.zzft.zze.zza) r2     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L57
            com.google.android.gms.internal.measurement.zzlg r2 = r2.zzah()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L57
            com.google.android.gms.internal.measurement.zzjt r2 = (com.google.android.gms.internal.measurement.zzjt) r2     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L57
            com.google.android.gms.internal.measurement.zzft$zze r2 = (com.google.android.gms.internal.measurement.zzft.zze) r2     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L57
            r5.g_()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            java.util.List r6 = r2.zzh()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            android.os.Bundle r6 = com.google.android.gms.measurement.internal.zznm.zza(r6)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r1.close()
            return r6
        L57:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgb r3 = r5.zzj()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.measurement.internal.zzgd r3 = r3.zzg()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgb.zza(r6)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r3.zza(r4, r6, r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r1.close()
            goto L83
        L6d:
            r6 = move-exception
            goto L84
        L6f:
            r6 = move-exception
            r1 = r0
        L71:
            com.google.android.gms.measurement.internal.zzgb r2 = r5.zzj()     // Catch: java.lang.Throwable -> L2c
            com.google.android.gms.measurement.internal.zzgd r2 = r2.zzg()     // Catch: java.lang.Throwable -> L2c
            java.lang.String r3 = "Error selecting default event parameters"
            r2.zza(r3, r6)     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L83
            r1.close()
        L83:
            return r0
        L84:
            if (r0 == 0) goto L89
            r0.close()
        L89:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zzd(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02f6 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TRY_LEAVE, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x018f A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x013a A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x019e A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01b6 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01dd A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f2 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x023c A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0260 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0286 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x029c A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02b0 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d4 A[Catch: all -> 0x00ed, SQLiteException -> 0x00f1, TryCatch #3 {SQLiteException -> 0x00f1, blocks: (B:14:0x0083, B:16:0x00e4, B:20:0x00f5, B:23:0x013f, B:25:0x016e, B:29:0x0178, B:32:0x0193, B:34:0x019e, B:35:0x01b0, B:37:0x01b6, B:39:0x01c2, B:41:0x01ce, B:42:0x01d7, B:44:0x01dd, B:46:0x01e9, B:48:0x01f2, B:50:0x01fa, B:53:0x0203, B:55:0x021b, B:57:0x0224, B:59:0x023c, B:61:0x0248, B:62:0x025a, B:64:0x0260, B:66:0x026c, B:68:0x0274, B:71:0x027d, B:73:0x0280, B:75:0x0286, B:77:0x0292, B:80:0x02a7, B:81:0x029c, B:84:0x02a3, B:85:0x02aa, B:87:0x02b0, B:89:0x02bc, B:90:0x02ce, B:92:0x02d4, B:94:0x02e0, B:97:0x02ea, B:98:0x02ed, B:100:0x02f6, B:104:0x018f, B:106:0x013a), top: B:13:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzf zze(java.lang.String r47) {
        /*
            Method dump skipped, instructions count: 825
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zze(java.lang.String):com.google.android.gms.measurement.internal.zzf");
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x005a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:91), block:B:28:0x0059 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzap zzf(java.lang.String r11) {
        /*
            r10 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r11)
            r10.zzt()
            r10.zzak()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r10.a()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            java.lang.String r3 = "apps"
            java.lang.String r0 = "remote_config"
            java.lang.String r4 = "config_last_modified_time"
            java.lang.String r5 = "e_tag"
            java.lang.String[] r4 = new java.lang.String[]{r0, r4, r5}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[]{r11}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            r9 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            boolean r0 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            if (r0 != 0) goto L31
            r2.close()
            return r1
        L31:
            r0 = 0
            byte[] r0 = r2.getBlob(r0)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r3 = 1
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r4 = 2
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            if (r5 == 0) goto L5e
            com.google.android.gms.measurement.internal.zzgb r5 = r10.zzj()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            com.google.android.gms.measurement.internal.zzgd r5 = r5.zzg()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            java.lang.String r6 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzgb.zza(r11)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r5.zza(r6, r7)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            goto L5e
        L58:
            r0 = move-exception
            r11 = r0
            r1 = r2
            goto L89
        L5c:
            r0 = move-exception
            goto L72
        L5e:
            if (r0 != 0) goto L64
            r2.close()
            return r1
        L64:
            com.google.android.gms.measurement.internal.zzap r5 = new com.google.android.gms.measurement.internal.zzap     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r5.<init>(r0, r3, r4)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r2.close()
            return r5
        L6d:
            r0 = move-exception
            r11 = r0
            goto L89
        L70:
            r0 = move-exception
            r2 = r1
        L72:
            com.google.android.gms.measurement.internal.zzgb r3 = r10.zzj()     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.zzgd r3 = r3.zzg()     // Catch: java.lang.Throwable -> L58
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r11 = com.google.android.gms.measurement.internal.zzgb.zza(r11)     // Catch: java.lang.Throwable -> L58
            r3.zza(r4, r11, r0)     // Catch: java.lang.Throwable -> L58
            if (r2 == 0) goto L88
            r2.close()
        L88:
            return r1
        L89:
            if (r1 == 0) goto L8e
            r1.close()
        L8e:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zzf(java.lang.String):com.google.android.gms.measurement.internal.zzap");
    }

    public final zzax zzg(String str) {
        if (!zzon.zza() || !zze().zza(zzbh.f11287M0)) {
            return zzax.f11224f;
        }
        Preconditions.checkNotNull(str);
        zzt();
        zzak();
        return zzax.zza(d("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0070  */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.measurement.internal.zzam, com.google.android.gms.measurement.internal.zzaq] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zziq zzh(java.lang.String r5) {
        /*
            r4 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r5)
            r4.zzt()
            r4.zzak()
            boolean r0 = com.google.android.gms.internal.measurement.zzon.zza()
            if (r0 == 0) goto L74
            com.google.android.gms.measurement.internal.zzae r0 = r4.zze()
            com.google.android.gms.measurement.internal.zzfo r1 = com.google.android.gms.measurement.internal.zzbh.f11287M0
            boolean r0 = r0.zza(r1)
            if (r0 == 0) goto L74
            java.lang.String r0 = "select consent_state, consent_source from consent_settings where app_id=? limit 1;"
            java.lang.String[] r5 = new java.lang.String[]{r5}
            com.google.android.gms.measurement.internal.zzam r1 = new com.google.android.gms.measurement.internal.zzaq() { // from class: com.google.android.gms.measurement.internal.zzam
                static {
                    /*
                        com.google.android.gms.measurement.internal.zzam r0 = new com.google.android.gms.measurement.internal.zzam
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.google.android.gms.measurement.internal.zzam) com.google.android.gms.measurement.internal.zzam.a com.google.android.gms.measurement.internal.zzam
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.<init>():void");
                }

                @Override // com.google.android.gms.measurement.internal.zzaq
                public final java.lang.Object zza(android.database.Cursor r3) {
                    /*
                        r2 = this;
                        r0 = 0
                        java.lang.String r0 = r3.getString(r0)
                        r1 = 1
                        int r3 = r3.getInt(r1)
                        com.google.android.gms.measurement.internal.zziq r3 = com.google.android.gms.measurement.internal.zziq.zza(r0, r3)
                        return r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(android.database.Cursor):java.lang.Object");
                }
            }
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r4.a()     // Catch: java.lang.Throwable -> L50 android.database.sqlite.SQLiteException -> L52
            android.database.Cursor r5 = r3.rawQuery(r0, r5)     // Catch: java.lang.Throwable -> L50 android.database.sqlite.SQLiteException -> L52
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            if (r0 != 0) goto L48
            com.google.android.gms.measurement.internal.zzgb r0 = r4.zzj()     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            com.google.android.gms.measurement.internal.zzgd r0 = r0.zzp()     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            java.lang.String r1 = "No data found"
            r0.zza(r1)     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            r5.close()
            goto L66
        L43:
            r0 = move-exception
            r2 = r5
            goto L6e
        L46:
            r0 = move-exception
            goto L54
        L48:
            java.lang.Object r2 = r1.zza(r5)     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L46
            r5.close()
            goto L66
        L50:
            r0 = move-exception
            goto L6e
        L52:
            r0 = move-exception
            r5 = r2
        L54:
            com.google.android.gms.measurement.internal.zzgb r1 = r4.zzj()     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.measurement.internal.zzgd r1 = r1.zzg()     // Catch: java.lang.Throwable -> L43
            java.lang.String r3 = "Error querying database."
            r1.zza(r3, r0)     // Catch: java.lang.Throwable -> L43
            if (r5 == 0) goto L66
            r5.close()
        L66:
            com.google.android.gms.measurement.internal.zziq r2 = (com.google.android.gms.measurement.internal.zziq) r2
            if (r2 != 0) goto L6d
            com.google.android.gms.measurement.internal.zziq r5 = com.google.android.gms.measurement.internal.zziq.f11810c
            return r5
        L6d:
            return r2
        L6e:
            if (r2 == 0) goto L73
            r2.close()
        L73:
            throw r0
        L74:
            java.lang.String[] r5 = new java.lang.String[]{r5}
            java.lang.String r0 = "G1"
            java.lang.String r1 = "select consent_state from consent_settings where app_id=? limit 1;"
            java.lang.String r5 = r4.d(r1, r5, r0)
            com.google.android.gms.measurement.internal.zziq r5 = com.google.android.gms.measurement.internal.zziq.zzb(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zzh(java.lang.String):com.google.android.gms.measurement.internal.zziq");
    }

    public final List<zzmv> zzi(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzak();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = a().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", FirebaseAnalytics.Param.SOURCE}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                do {
                    String string = cursor.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    arrayList.add(new zzmv(cursor.getInt(2), string, cursor.getLong(1)));
                } while (cursor.moveToNext());
                cursor.close();
                return arrayList;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Error querying trigger uris. appId", zzgb.zza(str), e3);
                List<zzmv> list = Collections.EMPTY_LIST;
                if (cursor != null) {
                    cursor.close();
                }
                return list;
            }
        } finally {
        }
    }

    public final List<zznq> zzj(String str) {
        String str2;
        Preconditions.checkNotEmpty(str);
        zzt();
        zzak();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursor = a().query("user_attributes", new String[]{"name", FirebaseAnalytics.Param.ORIGIN, "set_timestamp", FirebaseAnalytics.Param.VALUE}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return arrayList;
                }
                while (true) {
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str3 = string2;
                    long j7 = cursor.getLong(2);
                    Object c7 = c(cursor, 3);
                    if (c7 == null) {
                        zzj().zzg().zza("Read invalid user property value, ignoring it. appId", zzgb.zza(str));
                        str2 = str;
                    } else {
                        str2 = str;
                        try {
                            arrayList.add(new zznq(str2, str3, string, j7, c7));
                        } catch (SQLiteException e3) {
                            e = e3;
                            zzj().zzg().zza("Error querying user properties. appId", zzgb.zza(str2), e);
                            List<zznq> list = Collections.EMPTY_LIST;
                            if (cursor != null) {
                                cursor.close();
                            }
                            return list;
                        }
                    }
                    if (!cursor.moveToNext()) {
                        cursor.close();
                        return arrayList;
                    }
                    str = str2;
                }
            } finally {
            }
        } catch (SQLiteException e7) {
            e = e7;
            str2 = str;
        }
    }

    public final void zzp() {
        zzak();
        a().beginTransaction();
    }

    public final void zzu() {
        zzak();
        a().endTransaction();
    }

    public final void zzv() {
        int delete;
        zzt();
        zzak();
        if (zza().getDatabasePath("google_app_measurement.db").exists()) {
            long zza = zzn().f12090e.zza();
            long elapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(elapsedRealtime - zza) > ((Long) zzbh.f11366z.zza(null)).longValue()) {
                zzn().f12090e.zza(elapsedRealtime);
                zzt();
                zzak();
                if (!zza().getDatabasePath("google_app_measurement.db").exists() || (delete = a().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzb().currentTimeMillis()), String.valueOf(zzae.zzm())})) <= 0) {
                    return;
                }
                zzj().zzp().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }

    public final void zzw() {
        zzak();
        a().setTransactionSuccessful();
    }

    public final boolean zzx() {
        return j("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzy() {
        return j("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    public final boolean zzz() {
        return j("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    public final long zzc(String str) {
        Preconditions.checkNotEmpty(str);
        return b("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzac zzc(java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zzc(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzac");
    }

    public final long zza(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzak();
        try {
            return a().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(PlaybackException.CUSTOM_ERROR_CODE_BASE, zze().zzb(str, zzbh.f11348q))))});
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error deleting over the limit events. appId", zzgb.zza(str), e3);
            return 0L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzbb zzd(java.lang.String r29, java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zzd(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzbb");
    }

    public final void zzh(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzak();
        try {
            a().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error deleting user property. appId", zzgb.zza(str), zzi().zzc(str2), e3);
        }
    }

    public final long zza(zzft.zzj zzjVar) throws IOException {
        zzt();
        zzak();
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotEmpty(zzjVar.zzx());
        byte[] zzbv = zzjVar.zzbv();
        long b7 = g_().b(zzbv);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzjVar.zzx());
        contentValues.put("metadata_fingerprint", Long.valueOf(b7));
        contentValues.put("metadata", zzbv);
        try {
            a().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return b7;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing raw event metadata. appId", zzgb.zza(zzjVar.zzx()), e3);
            throw e3;
        }
    }

    public final long zzb(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzak();
        return b("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x009e, code lost:
    
        zzj().zzg().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zznq> zzb(java.lang.String r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zzb(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0031: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x0031 */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzft.zze, java.lang.Long> zza(java.lang.String r6, java.lang.Long r7) {
        /*
            r5 = this;
            r5.zzt()
            r5.zzak()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.a()     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            java.lang.String r3 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            java.lang.String[] r3 = new java.lang.String[]{r6, r3}     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L73 android.database.sqlite.SQLiteException -> L75
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            if (r2 != 0) goto L35
            com.google.android.gms.measurement.internal.zzgb r6 = r5.zzj()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.measurement.internal.zzgd r6 = r6.zzp()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.String r7 = "Main event not found"
            r6.zza(r7)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r1.close()
            return r0
        L30:
            r6 = move-exception
            r0 = r1
            goto L8a
        L33:
            r6 = move-exception
            goto L77
        L35:
            r2 = 0
            byte[] r2 = r1.getBlob(r2)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r3 = 1
            long r3 = r1.getLong(r3)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.internal.measurement.zzft$zze$zza r4 = com.google.android.gms.internal.measurement.zzft.zze.zze()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5d
            com.google.android.gms.internal.measurement.zzlf r2 = com.google.android.gms.measurement.internal.zznm.g(r4, r2)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5d
            com.google.android.gms.internal.measurement.zzft$zze$zza r2 = (com.google.android.gms.internal.measurement.zzft.zze.zza) r2     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5d
            com.google.android.gms.internal.measurement.zzlg r2 = r2.zzah()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5d
            com.google.android.gms.internal.measurement.zzjt r2 = (com.google.android.gms.internal.measurement.zzjt) r2     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5d
            com.google.android.gms.internal.measurement.zzft$zze r2 = (com.google.android.gms.internal.measurement.zzft.zze) r2     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5d
            android.util.Pair r6 = android.util.Pair.create(r2, r3)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r1.close()
            return r6
        L5d:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgb r3 = r5.zzj()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.measurement.internal.zzgd r3 = r3.zzg()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgb.zza(r6)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r3.zza(r4, r6, r7, r2)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r1.close()
            goto L89
        L73:
            r6 = move-exception
            goto L8a
        L75:
            r6 = move-exception
            r1 = r0
        L77:
            com.google.android.gms.measurement.internal.zzgb r7 = r5.zzj()     // Catch: java.lang.Throwable -> L30
            com.google.android.gms.measurement.internal.zzgd r7 = r7.zzg()     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = "Error selecting main event"
            r7.zza(r2, r6)     // Catch: java.lang.Throwable -> L30
            if (r1 == 0) goto L89
            r1.close()
        L89:
            return r0
        L8a:
            if (r0 == 0) goto L8f
            r0.close()
        L8f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final zzao zza(long j7, String str, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
        return zza(j7, str, 1L, false, false, z8, false, z10, z11);
    }

    public final zzao zza(long j7, String str, long j8, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzak();
        String[] strArr = {str};
        zzao zzaoVar = new zzao();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase a7 = a();
                Cursor query = a7.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    zzj().zzu().zza("Not updating daily counts, app is not known. appId", zzgb.zza(str));
                    query.close();
                    return zzaoVar;
                }
                if (query.getLong(0) == j7) {
                    zzaoVar.f11208b = query.getLong(1);
                    zzaoVar.f11207a = query.getLong(2);
                    zzaoVar.f11209c = query.getLong(3);
                    zzaoVar.f11210d = query.getLong(4);
                    zzaoVar.f11211e = query.getLong(5);
                    if (zzon.zza() && zze().zza(zzbh.f11295Q0)) {
                        zzaoVar.f11212f = query.getLong(6);
                    }
                }
                if (z6) {
                    zzaoVar.f11208b += j8;
                }
                if (z7) {
                    zzaoVar.f11207a += j8;
                }
                if (z8) {
                    zzaoVar.f11209c += j8;
                }
                if (z9) {
                    zzaoVar.f11210d += j8;
                }
                if (z10) {
                    zzaoVar.f11211e += j8;
                }
                if (zzon.zza() && zze().zza(zzbh.f11295Q0) && z11) {
                    zzaoVar.f11212f += j8;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j7));
                contentValues.put("daily_public_events_count", Long.valueOf(zzaoVar.f11207a));
                contentValues.put("daily_events_count", Long.valueOf(zzaoVar.f11208b));
                contentValues.put("daily_conversions_count", Long.valueOf(zzaoVar.f11209c));
                contentValues.put("daily_error_events_count", Long.valueOf(zzaoVar.f11210d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzaoVar.f11211e));
                if (zzon.zza() && zze().zza(zzbh.f11295Q0)) {
                    contentValues.put("daily_realtime_dcu_count", Long.valueOf(zzaoVar.f11212f));
                }
                a7.update("apps", contentValues, "app_id=?", strArr);
                query.close();
                return zzaoVar;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Error updating daily counts. appId", zzgb.zza(str), e3);
                if (0 != 0) {
                    cursor.close();
                }
                return zzaoVar;
            }
        } finally {
        }
    }

    public final zznq zze(String str, String str2) {
        Throwable th;
        String str3;
        String str4;
        SQLiteException sQLiteException;
        Cursor cursor;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzak();
        Cursor cursor2 = null;
        try {
            cursor = a().query("user_attributes", new String[]{"set_timestamp", FirebaseAnalytics.Param.VALUE, FirebaseAnalytics.Param.ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (!cursor.moveToFirst()) {
                        cursor.close();
                        return null;
                    }
                    long j7 = cursor.getLong(0);
                    Object c7 = c(cursor, 1);
                    if (c7 == null) {
                        cursor.close();
                        return null;
                    }
                    str3 = str;
                    str4 = str2;
                    try {
                        zznq zznqVar = new zznq(str3, cursor.getString(2), str4, j7, c7);
                        if (cursor.moveToNext()) {
                            zzj().zzg().zza("Got multiple records for user property, expected one. appId", zzgb.zza(str3));
                        }
                        cursor.close();
                        return zznqVar;
                    } catch (SQLiteException e3) {
                        e = e3;
                        sQLiteException = e;
                        zzj().zzg().zza("Error querying user property. appId", zzgb.zza(str3), zzi().zzc(str4), sQLiteException);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (SQLiteException e7) {
                    e = e7;
                    str3 = str;
                    str4 = str2;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                    throw th;
                }
                throw th;
            }
        } catch (SQLiteException e8) {
            str3 = str;
            str4 = str2;
            sQLiteException = e8;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza(long r4) {
        /*
            r3 = this;
            r3.zzt()
            r3.zzak()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r3.a()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            android.database.Cursor r4 = r1.rawQuery(r2, r4)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            if (r5 != 0) goto L35
            com.google.android.gms.measurement.internal.zzgb r5 = r3.zzj()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.measurement.internal.zzgd r5 = r5.zzp()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.String r1 = "No expired configs for apps with pending events"
            r5.zza(r1)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r4.close()
            return r0
        L30:
            r5 = move-exception
            r0 = r4
            goto L55
        L33:
            r5 = move-exception
            goto L42
        L35:
            r5 = 0
            java.lang.String r5 = r4.getString(r5)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r4.close()
            return r5
        L3e:
            r5 = move-exception
            goto L55
        L40:
            r5 = move-exception
            r4 = r0
        L42:
            com.google.android.gms.measurement.internal.zzgb r1 = r3.zzj()     // Catch: java.lang.Throwable -> L30
            com.google.android.gms.measurement.internal.zzgd r1 = r1.zzg()     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = "Error selecting expired configs"
            r1.zza(r2, r5)     // Catch: java.lang.Throwable -> L30
            if (r4 == 0) goto L54
            r4.close()
        L54:
            return r0
        L55:
            if (r0 == 0) goto L5a
            r0.close()
        L5a:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zza(long):java.lang.String");
    }

    public final List<Pair<zzft.zzj, Long>> zza(String str, int i2, int i7) {
        byte[] J6;
        long j7;
        long j8;
        zzt();
        zzak();
        int i8 = 1;
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkArgument(i7 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor query = a().query("queue", new String[]{"rowid", DataSchemeDataSource.SCHEME_DATA, "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i2));
                if (!query.moveToFirst()) {
                    List<Pair<zzft.zzj, Long>> list = Collections.EMPTY_LIST;
                    query.close();
                    return list;
                }
                ArrayList arrayList = new ArrayList();
                int i9 = 0;
                while (true) {
                    long j9 = query.getLong(0);
                    try {
                        J6 = g_().J(query.getBlob(i8));
                    } catch (IOException e3) {
                        zzj().zzg().zza("Failed to unzip queued bundle. appId", zzgb.zza(str), e3);
                    }
                    if (!arrayList.isEmpty() && J6.length + i9 > i7) {
                        break;
                    }
                    try {
                        zzft.zzj.zza zzaVar = (zzft.zzj.zza) zznm.g(zzft.zzj.zzu(), J6);
                        if (zzon.zza() && zze().zza(zzbh.f11293P0) && !arrayList.isEmpty()) {
                            zzft.zzj zzjVar = (zzft.zzj) ((Pair) arrayList.get(0)).first;
                            zzft.zzj zzjVar2 = (zzft.zzj) ((com.google.android.gms.internal.measurement.zzjt) zzaVar.zzah());
                            if (!zzjVar.zzac().equals(zzjVar2.zzac()) || !zzjVar.zzab().equals(zzjVar2.zzab()) || zzjVar.zzas() != zzjVar2.zzas() || !zzjVar.zzad().equals(zzjVar2.zzad())) {
                                break;
                            }
                            Iterator<zzft.zzn> it = zzjVar.zzaq().iterator();
                            while (true) {
                                j7 = -1;
                                if (!it.hasNext()) {
                                    j8 = -1;
                                    break;
                                }
                                zzft.zzn next = it.next();
                                if ("_npa".equals(next.zzg())) {
                                    j8 = next.zzc();
                                    break;
                                }
                            }
                            Iterator<zzft.zzn> it2 = zzjVar2.zzaq().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                zzft.zzn next2 = it2.next();
                                if ("_npa".equals(next2.zzg())) {
                                    j7 = next2.zzc();
                                    break;
                                }
                            }
                            if (j8 != j7) {
                                break;
                            }
                        }
                        if (!query.isNull(2)) {
                            zzaVar.zzi(query.getInt(2));
                        }
                        i9 += J6.length;
                        arrayList.add(Pair.create((zzft.zzj) ((com.google.android.gms.internal.measurement.zzjt) zzaVar.zzah()), Long.valueOf(j9)));
                    } catch (IOException e7) {
                        zzj().zzg().zza("Failed to merge queued bundle. appId", zzgb.zza(str), e7);
                    }
                    if (!query.moveToNext() || i9 > i7) {
                        break;
                    }
                    i8 = 1;
                }
                query.close();
                return arrayList;
            } catch (SQLiteException e8) {
                zzj().zzg().zza("Error querying bundles. appId", zzgb.zza(str), e8);
                List<Pair<zzft.zzj, Long>> list2 = Collections.EMPTY_LIST;
                if (0 != 0) {
                    cursor.close();
                }
                return list2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final List<zzac> zza(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzak();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb.append(" and name glob ?");
        }
        return zza(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        zzj().zzg().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzac> zza(java.lang.String r21, java.lang.String[] r22) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzan.zza(java.lang.String, java.lang.String[]):java.util.List");
    }

    public final void zza(zzf zzfVar) {
        Preconditions.checkNotNull(zzfVar);
        zzt();
        zzak();
        String zzaa = zzfVar.zzaa();
        Preconditions.checkNotNull(zzaa);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzaa);
        contentValues.put("app_instance_id", zzfVar.zzab());
        contentValues.put("gmp_app_id", zzfVar.zzaf());
        contentValues.put("resettable_device_id_hash", zzfVar.zzah());
        contentValues.put("last_bundle_index", Long.valueOf(zzfVar.zzt()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzfVar.zzu()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzfVar.zzs()));
        contentValues.put("app_version", zzfVar.zzad());
        contentValues.put("app_store", zzfVar.zzac());
        contentValues.put("gmp_version", Long.valueOf(zzfVar.zzq()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzfVar.zzn()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzfVar.zzap()));
        contentValues.put("day", Long.valueOf(zzfVar.zzm()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzfVar.zzk()));
        contentValues.put("daily_events_count", Long.valueOf(zzfVar.zzj()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzfVar.zzh()));
        contentValues.put("config_fetched_time", Long.valueOf(zzfVar.zzg()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzfVar.zzp()));
        contentValues.put("app_version_int", Long.valueOf(zzfVar.zze()));
        contentValues.put("firebase_instance_id", zzfVar.zzae());
        contentValues.put("daily_error_events_count", Long.valueOf(zzfVar.zzi()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzfVar.zzl()));
        contentValues.put("health_monitor_sample", zzfVar.zzag());
        contentValues.put("android_id", Long.valueOf(zzfVar.zzd()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzfVar.zzao()));
        contentValues.put("admob_app_id", zzfVar.zzy());
        contentValues.put("dynamite_version", Long.valueOf(zzfVar.zzo()));
        contentValues.put("session_stitching_token", zzfVar.zzaj());
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(zzfVar.zzar()));
        contentValues.put("target_os_version", Long.valueOf(zzfVar.zzw()));
        contentValues.put("session_stitching_token_hash", Long.valueOf(zzfVar.zzv()));
        if (zzpy.zza() && zze().zze(zzaa, zzbh.f11271E0)) {
            contentValues.put("ad_services_version", Integer.valueOf(zzfVar.zza()));
            contentValues.put("attribution_eligibility_status", Long.valueOf(zzfVar.zzf()));
        }
        if (zzoh.zza() && zze().zze(zzaa, zzbh.f11297R0)) {
            contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(zzfVar.zzas()));
        }
        if (zzon.zza() && zze().zze(zzaa, zzbh.f11287M0)) {
            contentValues.put("npa_metadata_value", zzfVar.zzx());
        }
        if (zzqv.zza() && zze().zze(zzaa, zzbh.f11355t0)) {
            zzq();
            if (zznt.L(zzaa)) {
                contentValues.put("bundle_delivery_index", Long.valueOf(zzfVar.zzr()));
            }
        }
        if (zzqv.zza() && zze().zze(zzaa, zzbh.f11357u0)) {
            contentValues.put("sgtm_preview_key", zzfVar.zzak());
        }
        if (zzon.zza() && zze().zze(zzaa, zzbh.f11295Q0)) {
            contentValues.put("dma_consent_state", Integer.valueOf(zzfVar.zzc()));
            contentValues.put("daily_realtime_dcu_count", Integer.valueOf(zzfVar.zzb()));
        }
        if (zznw.zza() && zze().zze(zzaa, zzbh.f11309X0)) {
            contentValues.put("serialized_npa_metadata", zzfVar.zzai());
        }
        List<String> zzal = zzfVar.zzal();
        if (zzal != null) {
            if (zzal.isEmpty()) {
                zzj().zzu().zza("Safelisted events should not be an empty list. appId", zzaa);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzal));
            }
        }
        if (zzoo.zza() && zze().zza(zzbh.f11345o0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        try {
            SQLiteDatabase a7 = a();
            if (a7.update("apps", contentValues, "app_id = ?", new String[]{zzaa}) == 0 && a7.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update app (got -1). appId", zzgb.zza(zzaa));
            }
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing app. appId", zzgb.zza(zzaa), e3);
        }
    }

    public final void zza(String str, zziq zziqVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zziqVar);
        zzt();
        zzak();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zziqVar.zzh());
        if (zzon.zza() && zze().zza(zzbh.f11287M0)) {
            contentValues.put("consent_source", Integer.valueOf(zziqVar.zza()));
            e(contentValues);
            return;
        }
        try {
            if (a().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update consent setting (got -1). appId", zzgb.zza(str));
            }
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing consent setting. appId, error", zzgb.zza(str), e3);
        }
    }

    public final void zza(String str, zzax zzaxVar) {
        if (zzon.zza() && zze().zza(zzbh.f11287M0)) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(zzaxVar);
            zzt();
            zzak();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("dma_consent_settings", zzaxVar.zzf());
            e(contentValues);
        }
    }

    public final void zza(zzbb zzbbVar) {
        Preconditions.checkNotNull(zzbbVar);
        zzt();
        zzak();
        ContentValues contentValues = new ContentValues();
        String str = zzbbVar.f11245a;
        String str2 = zzbbVar.f11245a;
        contentValues.put("app_id", str);
        contentValues.put("name", zzbbVar.f11246b);
        contentValues.put("lifetime_count", Long.valueOf(zzbbVar.f11247c));
        contentValues.put("current_bundle_count", Long.valueOf(zzbbVar.f11248d));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzbbVar.f11250f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzbbVar.f11251g));
        contentValues.put("last_bundled_day", zzbbVar.f11252h);
        contentValues.put("last_sampled_complex_event_id", zzbbVar.f11253i);
        contentValues.put("last_sampling_rate", zzbbVar.f11254j);
        contentValues.put("current_session_count", Long.valueOf(zzbbVar.f11249e));
        Boolean bool = zzbbVar.f11255k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (a().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update event aggregates (got -1). appId", zzgb.zza(str2));
            }
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing event aggregates. appId", zzgb.zza(str2), e3);
        }
    }

    public final boolean zza(zzft.zzj zzjVar, boolean z6) {
        zzt();
        zzak();
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotEmpty(zzjVar.zzx());
        Preconditions.checkState(zzjVar.zzbe());
        zzv();
        long currentTimeMillis = zzb().currentTimeMillis();
        if (zzjVar.zzl() < currentTimeMillis - zzae.zzm() || zzjVar.zzl() > zzae.zzm() + currentTimeMillis) {
            zzj().zzu().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgb.zza(zzjVar.zzx()), Long.valueOf(currentTimeMillis), Long.valueOf(zzjVar.zzl()));
        }
        try {
            byte[] G6 = g_().G(zzjVar.zzbv());
            zzj().zzp().zza("Saving bundle, size", Integer.valueOf(G6.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzjVar.zzx());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzjVar.zzl()));
            contentValues.put(DataSchemeDataSource.SCHEME_DATA, G6);
            contentValues.put("has_realtime", Integer.valueOf(z6 ? 1 : 0));
            if (zzjVar.zzbl()) {
                contentValues.put("retry_count", Integer.valueOf(zzjVar.zzf()));
            }
            try {
                if (a().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzj().zzg().zza("Failed to insert bundle (got -1). appId", zzgb.zza(zzjVar.zzx()));
                return false;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Error storing bundle. appId", zzgb.zza(zzjVar.zzx()), e3);
                return false;
            }
        } catch (IOException e7) {
            zzj().zzg().zza("Data loss. Failed to serialize bundle. appId", zzgb.zza(zzjVar.zzx()), e7);
            return false;
        }
    }

    public final boolean zza(zzay zzayVar, long j7, boolean z6) {
        zzt();
        zzak();
        Preconditions.checkNotNull(zzayVar);
        Preconditions.checkNotEmpty(zzayVar.f11230a);
        byte[] zzbv = g_().e(zzayVar).zzbv();
        ContentValues contentValues = new ContentValues();
        String str = zzayVar.f11230a;
        contentValues.put("app_id", str);
        contentValues.put("name", zzayVar.f11231b);
        contentValues.put("timestamp", Long.valueOf(zzayVar.f11233d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j7));
        contentValues.put(DataSchemeDataSource.SCHEME_DATA, zzbv);
        contentValues.put("realtime", Integer.valueOf(z6 ? 1 : 0));
        try {
            if (a().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert raw event (got -1). appId", zzgb.zza(str));
            return false;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing raw event. appId", zzgb.zza(str), e3);
            return false;
        }
    }

    public final boolean zza(String str, zzmv zzmvVar) {
        zzt();
        zzak();
        Preconditions.checkNotNull(zzmvVar);
        Preconditions.checkNotEmpty(str);
        long currentTimeMillis = zzb().currentTimeMillis();
        long j7 = zzmvVar.f12131e;
        long zzm = currentTimeMillis - zzae.zzm();
        long j8 = zzmvVar.f12131e;
        if (j7 < zzm || j8 > zzae.zzm() + currentTimeMillis) {
            zzj().zzu().zza("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgb.zza(str), Long.valueOf(currentTimeMillis), Long.valueOf(j8));
        }
        zzj().zzp().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zzmvVar.f12130b);
        contentValues.put(FirebaseAnalytics.Param.SOURCE, Integer.valueOf(zzmvVar.f12132f));
        contentValues.put("timestamp_millis", Long.valueOf(j8));
        try {
            if (a().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert trigger URI (got -1). appId", zzgb.zza(str));
            return false;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing trigger URI. appId", zzgb.zza(str), e3);
            return false;
        }
    }

    public final boolean zza(String str, Long l7, long j7, zzft.zze zzeVar) {
        zzt();
        zzak();
        Preconditions.checkNotNull(zzeVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l7);
        byte[] zzbv = zzeVar.zzbv();
        zzj().zzp().zza("Saving complex main event, appId, data size", zzi().zza(str), Integer.valueOf(zzbv.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l7);
        contentValues.put("children_to_process", Long.valueOf(j7));
        contentValues.put("main_event", zzbv);
        try {
            if (a().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert complex main event (got -1). appId", zzgb.zza(str));
            return false;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing complex main event. appId", zzgb.zza(str), e3);
            return false;
        }
    }

    public final boolean zza(zzac zzacVar) {
        Preconditions.checkNotNull(zzacVar);
        zzt();
        zzak();
        String str = zzacVar.f11164b;
        Preconditions.checkNotNull(str);
        if (zze(str, zzacVar.f11166f.f12227e) == null && j("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzacVar.f11165e);
        contentValues.put("name", zzacVar.f11166f.f12227e);
        f(contentValues, Preconditions.checkNotNull(zzacVar.f11166f.zza()));
        contentValues.put("active", Boolean.valueOf(zzacVar.f11168m));
        contentValues.put("trigger_event_name", zzacVar.f11169n);
        contentValues.put("trigger_timeout", Long.valueOf(zzacVar.f11171q));
        zzq();
        contentValues.put("timed_out_event", zznt.z(zzacVar.f11170p));
        contentValues.put("creation_timestamp", Long.valueOf(zzacVar.f11167j));
        zzq();
        contentValues.put("triggered_event", zznt.z(zzacVar.f11172r));
        contentValues.put("triggered_timestamp", Long.valueOf(zzacVar.f11166f.f12228f));
        contentValues.put("time_to_live", Long.valueOf(zzacVar.f11173s));
        zzq();
        contentValues.put("expired_event", zznt.z(zzacVar.f11174t));
        try {
            if (a().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update conditional user property (got -1)", zzgb.zza(str));
            return true;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing conditional user property", zzgb.zza(str), e3);
            return true;
        }
    }

    public final boolean zza(zznq zznqVar) {
        Preconditions.checkNotNull(zznqVar);
        zzt();
        zzak();
        String str = zznqVar.f12233a;
        String str2 = zznqVar.f12235c;
        zznq zze = zze(str, str2);
        String str3 = zznqVar.f12234b;
        String str4 = zznqVar.f12233a;
        if (zze == null) {
            if (zznt.N(str2)) {
                if (j("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str4}) >= zze().zza(str4, zzbh.f11276H, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(str2) && j("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str4, str3}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str4);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, str3);
        contentValues.put("name", str2);
        contentValues.put("set_timestamp", Long.valueOf(zznqVar.f12236d));
        f(contentValues, zznqVar.f12237e);
        try {
            if (a().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update user property (got -1). appId", zzgb.zza(str4));
            return true;
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error storing user property. appId", zzgb.zza(str4), e3);
            return true;
        }
    }
}
