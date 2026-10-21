package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class Q extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
    }
}
