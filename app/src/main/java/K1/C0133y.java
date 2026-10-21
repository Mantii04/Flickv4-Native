package K1;

import n1.AbstractC1368g;

/* renamed from: K1.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0133y extends AbstractC1368g {
    @Override // n1.AbstractC1368g
    public /* synthetic */ void bind(r1.p pVar, Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
        bind(pVar, (AbstractC0131w) null);
    }

    @Override // androidx.room.SharedSQLiteStatement
    public String createQuery() {
        return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
    }

    public void bind(r1.p pVar, AbstractC0131w abstractC0131w) {
        throw null;
    }
}
