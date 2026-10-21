package C1;

import android.content.Context;
import o1.AbstractC1426b;

/* loaded from: classes.dex */
public final class H extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public final Context f379c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(Context context) {
        super(9, 10);
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        this.f379c = context;
    }

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        Context context = this.f379c;
        L1.q.migrateLegacyPreferences(context, db);
        L1.l.migrateLegacyIdGenerator(context, db);
    }
}
