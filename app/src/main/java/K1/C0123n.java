package K1;

import androidx.room.SharedSQLiteStatement;

/* renamed from: K1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0123n extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
    }
}
