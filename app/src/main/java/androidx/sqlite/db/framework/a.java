package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.io.File;
import java.util.UUID;
import kotlin.jvm.internal.j;
import r1.h;
import s1.d;
import s1.f;
import t1.C1648b;

/* loaded from: classes.dex */
public final class a extends SQLiteOpenHelper {

    /* renamed from: q, reason: collision with root package name */
    public static final f f8154q = new f(null);

    /* renamed from: b, reason: collision with root package name */
    public final Context f8155b;

    /* renamed from: e, reason: collision with root package name */
    public final d f8156e;

    /* renamed from: f, reason: collision with root package name */
    public final h f8157f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8158j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f8159m;

    /* renamed from: n, reason: collision with root package name */
    public final C1648b f8160n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8161p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, String str, final d dbRef, final h callback, boolean z6) {
        super(context, str, null, callback.f19714a, new DatabaseErrorHandler() { // from class: s1.e
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase dbObj) {
                r1.h callback2 = r1.h.this;
                j.checkNotNullParameter(callback2, "$callback");
                d dbRef2 = dbRef;
                j.checkNotNullParameter(dbRef2, "$dbRef");
                j.checkNotNullExpressionValue(dbObj, "dbObj");
                callback2.onCorruption(androidx.sqlite.db.framework.a.f8154q.getWrappedDb(dbRef2, dbObj));
            }
        });
        String str2;
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(dbRef, "dbRef");
        j.checkNotNullParameter(callback, "callback");
        this.f8155b = context;
        this.f8156e = dbRef;
        this.f8157f = callback;
        this.f8158j = z6;
        if (str == null) {
            str2 = UUID.randomUUID().toString();
            j.checkNotNullExpressionValue(str2, "randomUUID().toString()");
        } else {
            str2 = str;
        }
        File cacheDir = context.getCacheDir();
        j.checkNotNullExpressionValue(cacheDir, "context.cacheDir");
        this.f8160n = new C1648b(str2, cacheDir, false);
    }

    public final SQLiteDatabase a(boolean z6) {
        if (z6) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            j.checkNotNullExpressionValue(writableDatabase, "{\n                super.…eDatabase()\n            }");
            return writableDatabase;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        j.checkNotNullExpressionValue(readableDatabase, "{\n                super.…eDatabase()\n            }");
        return readableDatabase;
    }

    public final SQLiteDatabase b(boolean z6) {
        File parentFile;
        String databaseName = getDatabaseName();
        Context context = this.f8155b;
        if (databaseName != null && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
            }
        }
        try {
            return a(z6);
        } catch (Throwable unused) {
            super.close();
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                return a(z6);
            } catch (Throwable th) {
                super.close();
                if (th instanceof FrameworkSQLiteOpenHelper$OpenHelper$CallbackException) {
                    FrameworkSQLiteOpenHelper$OpenHelper$CallbackException frameworkSQLiteOpenHelper$OpenHelper$CallbackException = th;
                    Throwable cause = frameworkSQLiteOpenHelper$OpenHelper$CallbackException.getCause();
                    int ordinal = frameworkSQLiteOpenHelper$OpenHelper$CallbackException.getCallbackName().ordinal();
                    if (ordinal == 0) {
                        throw cause;
                    }
                    if (ordinal == 1) {
                        throw cause;
                    }
                    if (ordinal == 2) {
                        throw cause;
                    }
                    if (ordinal == 3) {
                        throw cause;
                    }
                    if (!(cause instanceof SQLiteException)) {
                        throw cause;
                    }
                } else {
                    if (!(th instanceof SQLiteException)) {
                        throw th;
                    }
                    if (databaseName == null || !this.f8158j) {
                        throw th;
                    }
                }
                context.deleteDatabase(databaseName);
                try {
                    return a(z6);
                } catch (FrameworkSQLiteOpenHelper$OpenHelper$CallbackException e3) {
                    throw e3.getCause();
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        C1648b c1648b = this.f8160n;
        try {
            C1648b.lock$default(c1648b, false, 1, null);
            super.close();
            this.f8156e.setDb(null);
            this.f8161p = false;
        } finally {
            c1648b.unlock();
        }
    }

    public final r1.f getSupportDatabase(boolean z6) {
        C1648b c1648b = this.f8160n;
        try {
            c1648b.lock((this.f8161p || getDatabaseName() == null) ? false : true);
            this.f8159m = false;
            SQLiteDatabase b7 = b(z6);
            if (!this.f8159m) {
                FrameworkSQLiteDatabase wrappedDb = getWrappedDb(b7);
                c1648b.unlock();
                return wrappedDb;
            }
            close();
            r1.f supportDatabase = getSupportDatabase(z6);
            c1648b.unlock();
            return supportDatabase;
        } catch (Throwable th) {
            c1648b.unlock();
            throw th;
        }
    }

    public final FrameworkSQLiteDatabase getWrappedDb(SQLiteDatabase sqLiteDatabase) {
        j.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        return f8154q.getWrappedDb(this.f8156e, sqLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase db) {
        j.checkNotNullParameter(db, "db");
        try {
            this.f8157f.onConfigure(getWrappedDb(db));
        } catch (Throwable th) {
            throw new FrameworkSQLiteOpenHelper$OpenHelper$CallbackException(FrameworkSQLiteOpenHelper$OpenHelper$CallbackName.f8147b, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        j.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        try {
            this.f8157f.onCreate(getWrappedDb(sqLiteDatabase));
        } catch (Throwable th) {
            throw new FrameworkSQLiteOpenHelper$OpenHelper$CallbackException(FrameworkSQLiteOpenHelper$OpenHelper$CallbackName.f8148e, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase db, int i2, int i7) {
        j.checkNotNullParameter(db, "db");
        this.f8159m = true;
        try {
            this.f8157f.onDowngrade(getWrappedDb(db), i2, i7);
        } catch (Throwable th) {
            throw new FrameworkSQLiteOpenHelper$OpenHelper$CallbackException(FrameworkSQLiteOpenHelper$OpenHelper$CallbackName.f8150j, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase db) {
        j.checkNotNullParameter(db, "db");
        if (!this.f8159m) {
            try {
                this.f8157f.onOpen(getWrappedDb(db));
            } catch (Throwable th) {
                throw new FrameworkSQLiteOpenHelper$OpenHelper$CallbackException(FrameworkSQLiteOpenHelper$OpenHelper$CallbackName.f8151m, th);
            }
        }
        this.f8161p = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i2, int i7) {
        j.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        this.f8159m = true;
        try {
            this.f8157f.onUpgrade(getWrappedDb(sqLiteDatabase), i2, i7);
        } catch (Throwable th) {
            throw new FrameworkSQLiteOpenHelper$OpenHelper$CallbackException(FrameworkSQLiteOpenHelper$OpenHelper$CallbackName.f8149f, th);
        }
    }
}
