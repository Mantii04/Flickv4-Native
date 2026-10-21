package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class a0 extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "DELETE FROM worktag WHERE work_spec_id=?";
    }
}
