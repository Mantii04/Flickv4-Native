package C1;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Executor;
import n1.AbstractC1359C;

/* loaded from: classes.dex */
public final class y {
    public y(kotlin.jvm.internal.g gVar) {
    }

    public final WorkDatabase create(Context context, Executor queryExecutor, boolean z6) {
        int i2 = 5;
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(queryExecutor, "queryExecutor");
        return (WorkDatabase) (z6 ? AbstractC1359C.inMemoryDatabaseBuilder(context, WorkDatabase.class).allowMainThreadQueries() : AbstractC1359C.databaseBuilder(context, WorkDatabase.class, "androidx.work.workdb").openHelperFactory(new A0.a(context, i2))).setQueryExecutor(queryExecutor).addCallback(C0065c.f425a).addMigrations(C0071i.f430c).addMigrations(new s(context, 2, 3)).addMigrations(C0072j.f431c).addMigrations(C0073k.f432c).addMigrations(new s(context, 5, 6)).addMigrations(C0074l.f433c).addMigrations(C0075m.f434c).addMigrations(C0076n.f435c).addMigrations(new H(context)).addMigrations(new s(context, 10, 11)).addMigrations(C0068f.f427c).addMigrations(C0069g.f428c).addMigrations(C0070h.f429c).fallbackToDestructiveMigration().build();
    }
}
