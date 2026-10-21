package C1;

import o1.AbstractC1426b;

/* renamed from: C1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0076n extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public static final C0076n f435c = new C0076n(8, 9);

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
