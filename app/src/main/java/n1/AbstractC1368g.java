package n1;

import androidx.room.RoomDatabase;
import androidx.room.SharedSQLiteStatement;

/* renamed from: n1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1368g extends SharedSQLiteStatement {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC1368g(RoomDatabase database) {
        super(database);
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
    }

    public abstract void bind(r1.p pVar, Object obj);

    public final void insert(Object obj) {
        r1.p acquire = acquire();
        try {
            bind(acquire, obj);
            acquire.executeInsert();
        } finally {
            release(acquire);
        }
    }
}
