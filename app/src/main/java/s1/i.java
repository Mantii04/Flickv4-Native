package s1;

import android.database.sqlite.SQLiteStatement;
import kotlin.jvm.internal.j;
import r1.p;

/* loaded from: classes.dex */
public final class i extends h implements p {

    /* renamed from: e, reason: collision with root package name */
    public final SQLiteStatement f20002e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(SQLiteStatement delegate) {
        super(delegate);
        j.checkNotNullParameter(delegate, "delegate");
        this.f20002e = delegate;
    }

    @Override // r1.p
    public long executeInsert() {
        return this.f20002e.executeInsert();
    }

    @Override // r1.p
    public int executeUpdateDelete() {
        return this.f20002e.executeUpdateDelete();
    }
}
