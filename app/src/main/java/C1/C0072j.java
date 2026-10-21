package C1;

import o1.AbstractC1426b;

/* renamed from: C1.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0072j extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public static final C0072j f431c = new C0072j(3, 4);

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    ");
    }
}
