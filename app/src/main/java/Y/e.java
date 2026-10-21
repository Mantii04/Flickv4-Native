package Y;

import R5.I;
import androidx.datastore.core.SingleProcessDataStore;
import java.util.List;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final e f4254a = new e();

    public final <T> d create(i serializer, Z.b bVar, List<Object> migrations, I scope, H5.a produceFile) {
        kotlin.jvm.internal.j.checkNotNullParameter(serializer, "serializer");
        kotlin.jvm.internal.j.checkNotNullParameter(migrations, "migrations");
        kotlin.jvm.internal.j.checkNotNullParameter(scope, "scope");
        kotlin.jvm.internal.j.checkNotNullParameter(produceFile, "produceFile");
        a aVar = bVar;
        if (bVar == null) {
            aVar = new Z.a();
        }
        return new SingleProcessDataStore(produceFile, serializer, v5.o.listOf(c.f4253a.getInitializer(migrations)), aVar, scope);
    }
}
