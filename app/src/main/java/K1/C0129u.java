package K1;

import n1.AbstractC1368g;

/* renamed from: K1.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0129u extends AbstractC1368g {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
    }

    @Override // n1.AbstractC1368g
    public void bind(r1.p pVar, C0127s c0127s) {
        if (c0127s.getName() == null) {
            pVar.bindNull(1);
        } else {
            pVar.bindString(1, c0127s.getName());
        }
        if (c0127s.getWorkSpecId() == null) {
            pVar.bindNull(2);
        } else {
            pVar.bindString(2, c0127s.getWorkSpecId());
        }
    }
}
