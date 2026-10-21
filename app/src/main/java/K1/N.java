package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class N extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET state=? WHERE id=?";
    }
}
