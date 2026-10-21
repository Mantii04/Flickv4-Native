package C1;

import n1.AbstractC1361E;

/* renamed from: C1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0065c extends AbstractC1361E {

    /* renamed from: a, reason: collision with root package name */
    public static final C0065c f425a = new C0065c();

    public final long getPruneDate() {
        long j7;
        long currentTimeMillis = System.currentTimeMillis();
        j7 = z.f472a;
        return currentTimeMillis - j7;
    }

    @Override // n1.AbstractC1361E
    public void onOpen(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        super.onOpen(db);
        db.beginTransaction();
        try {
            db.execSQL("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + getPruneDate() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }
}
