package n1;

import androidx.room.RoomDatabase;
import androidx.room.SharedSQLiteStatement;

/* renamed from: n1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1367f extends SharedSQLiteStatement {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC1367f(RoomDatabase database) {
        super(database);
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
    }

    public abstract void bind(r1.p pVar, Object obj);

    public final int handle(Object obj) {
        r1.p acquire = acquire();
        try {
            bind(acquire, obj);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }
}
