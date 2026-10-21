package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.a;
import kotlin.jvm.internal.j;
import r1.p;
import u5.InterfaceC1707f;

/* loaded from: classes.dex */
public abstract class SharedSQLiteStatement {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f8128a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f8129b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1707f f8130c;

    public SharedSQLiteStatement(RoomDatabase database) {
        j.checkNotNullParameter(database, "database");
        this.f8128a = database;
        this.f8129b = new AtomicBoolean(false);
        this.f8130c = a.lazy(new H5.a() { // from class: androidx.room.SharedSQLiteStatement$stmt$2
            {
                super(0);
            }

            @Override // H5.a
            public final p invoke() {
                p compileStatement;
                compileStatement = r0.f8128a.compileStatement(SharedSQLiteStatement.this.createQuery());
                return compileStatement;
            }
        });
    }

    public p acquire() {
        assertNotMainThread();
        if (this.f8129b.compareAndSet(false, true)) {
            return (p) this.f8130c.getValue();
        }
        return this.f8128a.compileStatement(createQuery());
    }

    public void assertNotMainThread() {
        this.f8128a.assertNotMainThread();
    }

    public abstract String createQuery();

    public void release(p statement) {
        j.checkNotNullParameter(statement, "statement");
        if (statement == ((p) this.f8130c.getValue())) {
            this.f8129b.set(false);
        }
    }
}
