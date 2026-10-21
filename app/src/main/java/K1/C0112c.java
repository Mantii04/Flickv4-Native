package K1;

import n1.AbstractC1368g;

/* renamed from: K1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0112c extends AbstractC1368g {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
    }

    @Override // n1.AbstractC1368g
    public void bind(r1.p pVar, C0110a c0110a) {
        if (c0110a.getWorkSpecId() == null) {
            pVar.bindNull(1);
        } else {
            pVar.bindString(1, c0110a.getWorkSpecId());
        }
        if (c0110a.getPrerequisiteId() == null) {
            pVar.bindNull(2);
        } else {
            pVar.bindString(2, c0110a.getPrerequisiteId());
        }
    }
}
