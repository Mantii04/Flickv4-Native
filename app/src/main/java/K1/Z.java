package K1;

import n1.AbstractC1368g;

/* loaded from: classes.dex */
public final class Z extends AbstractC1368g {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
    }

    @Override // n1.AbstractC1368g
    public void bind(r1.p pVar, W w6) {
        if (w6.getTag() == null) {
            pVar.bindNull(1);
        } else {
            pVar.bindString(1, w6.getTag());
        }
        if (w6.getWorkSpecId() == null) {
            pVar.bindNull(2);
        } else {
            pVar.bindString(2, w6.getWorkSpecId());
        }
    }
}
