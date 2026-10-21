package K1;

import androidx.room.SharedSQLiteStatement;

/* renamed from: K1.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0134z extends SharedSQLiteStatement {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "DELETE from WorkProgress where work_spec_id=?";
    }
}
