package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzas {
    public static HashSet a(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public static void b(zzgb zzgbVar, SQLiteDatabase sQLiteDatabase) {
        if (zzgbVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(com.google.android.gms.internal.measurement.zzci.zza().zza(sQLiteDatabase.getPath()));
        if (!file.setReadable(false, false)) {
            zzgbVar.zzu().zza("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            zzgbVar.zzu().zza("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            zzgbVar.zzu().zza("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        zzgbVar.zzu().zza("Failed to turn on database write permission for owner");
    }

    public static void c(zzgb zzgbVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        boolean z6;
        if (zzgbVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Cursor cursor = null;
        try {
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                z6 = cursor.moveToFirst();
                cursor.close();
            } catch (SQLiteException e3) {
                zzgbVar.zzu().zza("Error querying for table", str, e3);
                if (cursor != null) {
                    cursor.close();
                }
                z6 = false;
            }
            if (!z6) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                HashSet a7 = a(sQLiteDatabase, str);
                for (String str4 : str3.split(",")) {
                    if (!a7.remove(str4)) {
                        throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                    }
                }
                if (strArr != null) {
                    for (int i2 = 0; i2 < strArr.length; i2 += 2) {
                        if (!a7.remove(strArr[i2])) {
                            sQLiteDatabase.execSQL(strArr[i2 + 1]);
                        }
                    }
                }
                if (a7.isEmpty()) {
                    return;
                }
                zzgbVar.zzu().zza("Table has extra columns. table, columns", str, TextUtils.join(", ", a7));
            } catch (SQLiteException e7) {
                zzgbVar.zzg().zza("Failed to verify columns on table that was just created", str);
                throw e7;
            }
        } finally {
        }
    }
}
