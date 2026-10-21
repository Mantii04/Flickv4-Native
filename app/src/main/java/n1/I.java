package n1;

/* loaded from: classes.dex */
public abstract class I {
    public static final String createInsertQuery(String hash) {
        kotlin.jvm.internal.j.checkNotNullParameter(hash, "hash");
        return "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + hash + "')";
    }
}
