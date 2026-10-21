package K1;

import androidx.room.SharedSQLiteStatement;

/* renamed from: K1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0124o extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "DELETE FROM SystemIdInfo where work_spec_id=?";
    }
}
