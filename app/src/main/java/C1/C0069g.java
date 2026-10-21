package C1;

import o1.AbstractC1426b;

/* renamed from: C1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0069g extends AbstractC1426b {

    /* renamed from: c, reason: collision with root package name */
    public static final C0069g f428c = new C0069g(12, 13);

    @Override // o1.AbstractC1426b
    public void migrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        db.execSQL("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
