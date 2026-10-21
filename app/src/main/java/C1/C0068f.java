package C1;

import o1.AbstractC1426b;

/* renamed from: C1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0068f extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public static final C0068f f427c = new C0068f(11, 12);

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
    }
}
