package K1;

import androidx.room.SharedSQLiteStatement;

/* loaded from: classes.dex */
public final class G extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
    }
}
