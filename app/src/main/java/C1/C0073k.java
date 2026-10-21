package C1;

import o1.AbstractC1426b;

/* renamed from: C1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0073k extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public static final C0073k f432c = new C0073k(4, 5);

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        db.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
