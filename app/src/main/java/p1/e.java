package p1;

/* loaded from: classes.dex */
public final class e {
    public e(kotlin.jvm.internal.g gVar) {
    }

    public final j read(r1.f database, String tableName) {
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
        kotlin.jvm.internal.j.checkNotNullParameter(tableName, "tableName");
        return k.readTableInfo(database, tableName);
    }
}
