package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class J extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET generation=generation+1 WHERE id=?";
    }
}
