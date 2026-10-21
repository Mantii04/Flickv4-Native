package K1;

import n1.AbstractC1368g;

/* renamed from: K1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0116g extends AbstractC1368g {
    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
    }

    @Override // n1.AbstractC1368g
    public void bind(r1.p pVar, C0114e c0114e) {
        if (c0114e.getKey() == null) {
            pVar.bindNull(1);
        } else {
            pVar.bindString(1, c0114e.getKey());
        }
        if (c0114e.getValue() == null) {
            pVar.bindNull(2);
        } else {
            pVar.bindLong(2, c0114e.getValue().longValue());
        }
    }
}
