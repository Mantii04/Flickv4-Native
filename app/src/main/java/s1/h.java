package s1;

import android.database.sqlite.SQLiteProgram;
import kotlin.jvm.internal.j;
import r1.n;

/* loaded from: classes.dex */
public class h implements n {

    /* renamed from: b, reason: collision with root package name */
    public final SQLiteProgram f20001b;

    public h(SQLiteProgram delegate) {
        j.checkNotNullParameter(delegate, "delegate");
        this.f20001b = delegate;
    }

    @Override // r1.n
    public void bindBlob(int i2, byte[] value) {
        j.checkNotNullParameter(value, "value");
        this.f20001b.bindBlob(i2, value);
    }

    @Override // r1.n
    public void bindDouble(int i2, double d7) {
        this.f20001b.bindDouble(i2, d7);
    }

    @Override // r1.n
    public void bindLong(int i2, long j7) {
        this.f20001b.bindLong(i2, j7);
    }

    @Override // r1.n
    public void bindNull(int i2) {
        this.f20001b.bindNull(i2);
    }

    @Override // r1.n
    public void bindString(int i2, String value) {
        j.checkNotNullParameter(value, "value");
        this.f20001b.bindString(i2, value);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f20001b.close();
    }
}
