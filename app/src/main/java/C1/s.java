package C1;

import android.content.Context;
import o1.AbstractC1426b;

/* loaded from: classes.dex */
public final class s extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public final Context f457c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Context mContext, int i2, int i7) {
        super(i2, i7);
        kotlin.jvm.internal.j.checkNotNullParameter(mContext, "mContext");
        this.f457c = mContext;
    }

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        if (this.f19043b >= 10) {
            db.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
        } else {
            this.f457c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
        }
    }
}
