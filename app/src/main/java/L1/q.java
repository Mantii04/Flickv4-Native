package L1;

import K1.C0114e;
import K1.C0117h;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase f1882a;

    public q(WorkDatabase workDatabase) {
        this.f1882a = workDatabase;
    }

    public static void migrateLegacyPreferences(Context context, r1.f fVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j7 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            long j8 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
            fVar.beginTransaction();
            try {
                fVar.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j7)});
                fVar.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j8)});
                sharedPreferences.edit().clear().apply();
                fVar.setTransactionSuccessful();
            } finally {
                fVar.endTransaction();
            }
        }
    }

    public long getLastForceStopEventMillis() {
        Long longValue = ((C0117h) this.f1882a.preferenceDao()).getLongValue("last_force_stop_ms");
        if (longValue != null) {
            return longValue.longValue();
        }
        return 0L;
    }

    public boolean getNeedsReschedule() {
        Long longValue = ((C0117h) this.f1882a.preferenceDao()).getLongValue("reschedule_needed");
        return longValue != null && longValue.longValue() == 1;
    }

    public void setLastForceStopEventMillis(long j7) {
        ((C0117h) this.f1882a.preferenceDao()).insertPreference(new C0114e("last_force_stop_ms", Long.valueOf(j7)));
    }

    public void setNeedsReschedule(boolean z6) {
        ((C0117h) this.f1882a.preferenceDao()).insertPreference(new C0114e("reschedule_needed", z6));
    }
}
