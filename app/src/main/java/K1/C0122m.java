package K1;

import n1.AbstractC1368g;

/* renamed from: K1.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0122m extends AbstractC1368g {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
    }

    @Override // n1.AbstractC1368g
    public void bind(r1.p pVar, C0119j c0119j) {
        String str = c0119j.f1639a;
        if (str == null) {
            pVar.bindNull(1);
        } else {
            pVar.bindString(1, str);
        }
        pVar.bindLong(2, c0119j.getGeneration());
        pVar.bindLong(3, c0119j.f1641c);
    }
}
