package C1;

import o1.AbstractC1426b;

/* renamed from: C1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0074l extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public static final C0074l f433c = new C0074l(6, 7);

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ");
    }
}
