package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class S extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
    }
}
