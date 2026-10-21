package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes2.dex */
final class zzfx extends SQLiteOpenHelper {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfu f11552b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfx(zzfu zzfuVar, Context context) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f11552b = zzfuVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e3) {
            throw e3;
        } catch (SQLiteException unused) {
            zzfu zzfuVar = this.f11552b;
            zzfuVar.zzj().zzg().zza("Opening the local database failed, dropping and recreating it");
            if (!zzfuVar.zza().getDatabasePath("google_app_measurement_local.db").delete()) {
                zzfuVar.zzj().zzg().zza("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e7) {
                zzfuVar.zzj().zzg().zza("Failed to open local database. Events will bypass local storage", e7);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzas.b(this.f11552b.zzj(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i7) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        zzas.c(this.f11552b.zzj(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i7) {
    }
}
