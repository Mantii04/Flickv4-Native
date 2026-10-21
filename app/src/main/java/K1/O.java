package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class O extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
    }
}
