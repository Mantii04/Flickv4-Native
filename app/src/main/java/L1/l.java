package L1;

import K1.C0114e;
import K1.C0117h;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;

/* loaded from: classes.dex */
public abstract class l {
    public static final int access$nextId(WorkDatabase workDatabase, String str) {
        Long longValue = ((C0117h) workDatabase.preferenceDao()).getLongValue(str);
        int longValue2 = longValue != null ? (int) longValue.longValue() : 0;
        ((C0117h) workDatabase.preferenceDao()).insertPreference(new C0114e(str, Long.valueOf(longValue2 != Integer.MAX_VALUE ? longValue2 + 1 : 0)));
        return longValue2;
    }

    public static final void migrateLegacyIdGenerator(Context context, r1.f sqLiteDatabase) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i2 = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i7 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            sqLiteDatabase.beginTransaction();
            try {
                sqLiteDatabase.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i2)});
                sqLiteDatabase.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i7)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.setTransactionSuccessful();
            } finally {
                sqLiteDatabase.endTransaction();
            }
        }
    }
}
