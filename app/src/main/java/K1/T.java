package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class T extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
    }
}
