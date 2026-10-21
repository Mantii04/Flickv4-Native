package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzfu extends zzg {

    /* renamed from: c, reason: collision with root package name */
    public final zzfx f11532c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11533d;

    public zzfu(zzho zzhoVar) {
        super(zzhoVar);
        this.f11532c = new zzfx(this, zza());
    }

    public static long a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (!cursor.moveToFirst()) {
                cursor.close();
                return -1L;
            }
            long j7 = cursor.getLong(0);
            cursor.close();
            return j7;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(int r18, byte[] r19) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfu.b(int, byte[]):boolean");
    }

    public final SQLiteDatabase c() {
        if (this.f11533d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f11532c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f11533d = true;
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final void zzaa() {
        int delete;
        zzt();
        try {
            SQLiteDatabase c7 = c();
            if (c7 == null || (delete = c7.delete("messages", null, null)) <= 0) {
                return;
            }
            zzj().zzp().zza("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e3) {
            zzj().zzg().zza("Error resetting local analytics data. error", e3);
        }
    }

    public final boolean zzab() {
        return b(3, new byte[0]);
    }

    public final boolean zzac() {
        zzt();
        if (!this.f11533d && zza().getDatabasePath("google_app_measurement_local.db").exists()) {
            int i2 = 5;
            for (int i7 = 0; i7 < 5; i7++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        try {
                            SQLiteDatabase c7 = c();
                            if (c7 != null) {
                                c7.beginTransaction();
                                c7.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                                c7.setTransactionSuccessful();
                                c7.endTransaction();
                                c7.close();
                                return true;
                            }
                            this.f11533d = true;
                            if (c7 != null) {
                                c7.close();
                            }
                        } catch (SQLiteException e3) {
                            if (0 != 0) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th) {
                                    if (0 != 0) {
                                        sQLiteDatabase.close();
                                    }
                                    throw th;
                                }
                            }
                            zzj().zzg().zza("Error deleting app launch break from local database", e3);
                            this.f11533d = true;
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                        }
                    } catch (SQLiteDatabaseLockedException unused) {
                        SystemClock.sleep(i2);
                        i2 += 20;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteFullException e7) {
                    zzj().zzg().zza("Error deleting app launch break from local database", e7);
                    this.f11533d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            zzj().zzu().zza("Error deleting app launch break from local database in reasonable time");
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzd, com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zzz() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zza(int r22) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfu.zza(int):java.util.List");
    }

    public final boolean zza(zzac zzacVar) {
        zzq();
        byte[] z6 = zznt.z(zzacVar);
        if (z6.length > 131072) {
            zzj().zzm().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return b(2, z6);
    }

    public final boolean zza(zzbf zzbfVar) {
        Parcel obtain = Parcel.obtain();
        zzbfVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzj().zzm().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return b(0, marshall);
    }

    public final boolean zza(zzno zznoVar) {
        Parcel obtain = Parcel.obtain();
        zznoVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzj().zzm().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return b(1, marshall);
    }
}
