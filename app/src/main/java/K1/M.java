package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class M extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "DELETE FROM workspec WHERE id=?";
    }
}
