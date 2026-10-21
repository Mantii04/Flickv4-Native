package androidx.sqlite.db.framework;

import H5.r;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.os.CancellationSignal;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.j;
import r1.C1541b;
import r1.c;
import r1.f;
import r1.o;
import r1.p;
import s1.C1626a;
import s1.b;
import s1.h;
import s1.i;

/* loaded from: classes.dex */
public final class FrameworkSQLiteDatabase implements f {

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f8133f;

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f8134j;

    /* renamed from: b, reason: collision with root package name */
    public final SQLiteDatabase f8135b;

    /* renamed from: e, reason: collision with root package name */
    public final List f8136e;

    static {
        new b(null);
        f8133f = new String[]{"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
        f8134j = new String[0];
    }

    public FrameworkSQLiteDatabase(SQLiteDatabase delegate) {
        j.checkNotNullParameter(delegate, "delegate");
        this.f8135b = delegate;
        this.f8136e = delegate.getAttachedDbs();
    }

    @Override // r1.f
    public void beginTransaction() {
        this.f8135b.beginTransaction();
    }

    @Override // r1.f
    public void beginTransactionNonExclusive() {
        this.f8135b.beginTransactionNonExclusive();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f8135b.close();
    }

    @Override // r1.f
    public p compileStatement(String sql) {
        j.checkNotNullParameter(sql, "sql");
        SQLiteStatement compileStatement = this.f8135b.compileStatement(sql);
        j.checkNotNullExpressionValue(compileStatement, "delegate.compileStatement(sql)");
        return new i(compileStatement);
    }

    @Override // r1.f
    public void endTransaction() {
        this.f8135b.endTransaction();
    }

    @Override // r1.f
    public void execSQL(String sql) throws SQLException {
        j.checkNotNullParameter(sql, "sql");
        this.f8135b.execSQL(sql);
    }

    @Override // r1.f
    public List<Pair<String, String>> getAttachedDbs() {
        return this.f8136e;
    }

    @Override // r1.f
    public String getPath() {
        return this.f8135b.getPath();
    }

    @Override // r1.f
    public boolean inTransaction() {
        return this.f8135b.inTransaction();
    }

    public final boolean isDelegate(SQLiteDatabase sqLiteDatabase) {
        j.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        return j.areEqual(this.f8135b, sqLiteDatabase);
    }

    @Override // r1.f
    public boolean isOpen() {
        return this.f8135b.isOpen();
    }

    @Override // r1.f
    public boolean isWriteAheadLoggingEnabled() {
        return c.isWriteAheadLoggingEnabled(this.f8135b);
    }

    @Override // r1.f
    public Cursor query(String query) {
        j.checkNotNullParameter(query, "query");
        return query(new C1541b(query));
    }

    @Override // r1.f
    public void setTransactionSuccessful() {
        this.f8135b.setTransactionSuccessful();
    }

    @Override // r1.f
    public int update(String table, int i2, ContentValues values, String str, Object[] objArr) {
        j.checkNotNullParameter(table, "table");
        j.checkNotNullParameter(values, "values");
        if (values.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        int size = values.size();
        int length = objArr == null ? size : objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(f8133f[i2]);
        sb.append(table);
        sb.append(" SET ");
        int i7 = 0;
        for (String str2 : values.keySet()) {
            sb.append(i7 > 0 ? "," : "");
            sb.append(str2);
            objArr2[i7] = values.get(str2);
            sb.append("=?");
            i7++;
        }
        if (objArr != null) {
            for (int i8 = size; i8 < length; i8++) {
                objArr2[i8] = objArr[i8 - size];
            }
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(" WHERE ");
            sb.append(str);
        }
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        p compileStatement = compileStatement(sb2);
        C1541b.f19711f.bind(compileStatement, objArr2);
        return compileStatement.executeUpdateDelete();
    }

    @Override // r1.f
    public void execSQL(String sql, Object[] bindArgs) throws SQLException {
        j.checkNotNullParameter(sql, "sql");
        j.checkNotNullParameter(bindArgs, "bindArgs");
        this.f8135b.execSQL(sql, bindArgs);
    }

    @Override // r1.f
    public Cursor query(final o query) {
        j.checkNotNullParameter(query, "query");
        Cursor rawQueryWithFactory = this.f8135b.rawQueryWithFactory(new C1626a(new r() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$query$cursorFactory$1
            {
                super(4);
            }

            @Override // H5.r
            public final SQLiteCursor invoke(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                j.checkNotNull(sQLiteQuery);
                o.this.bindTo(new h(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, 1), query.getSql(), f8134j, null);
        j.checkNotNullExpressionValue(rawQueryWithFactory, "delegate.rawQueryWithFac…EMPTY_STRING_ARRAY, null)");
        return rawQueryWithFactory;
    }

    @Override // r1.f
    public Cursor query(o query, CancellationSignal cancellationSignal) {
        j.checkNotNullParameter(query, "query");
        String sql = query.getSql();
        j.checkNotNull(cancellationSignal);
        C1626a c1626a = new C1626a(query, 0);
        return c.rawQueryWithFactory(this.f8135b, sql, f8134j, null, cancellationSignal, c1626a);
    }
}
