package r1;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.CancellationSignal;
import java.io.File;

/* loaded from: classes.dex */
public abstract class c {
    public static final boolean deleteDatabase(File file) {
        kotlin.jvm.internal.j.checkNotNullParameter(file, "file");
        return SQLiteDatabase.deleteDatabase(file);
    }

    public static final boolean isWriteAheadLoggingEnabled(SQLiteDatabase sQLiteDatabase) {
        kotlin.jvm.internal.j.checkNotNullParameter(sQLiteDatabase, "sQLiteDatabase");
        return sQLiteDatabase.isWriteAheadLoggingEnabled();
    }

    public static final Cursor rawQueryWithFactory(SQLiteDatabase sQLiteDatabase, String sql, String[] selectionArgs, String str, CancellationSignal cancellationSignal, SQLiteDatabase.CursorFactory cursorFactory) {
        kotlin.jvm.internal.j.checkNotNullParameter(sQLiteDatabase, "sQLiteDatabase");
        kotlin.jvm.internal.j.checkNotNullParameter(sql, "sql");
        kotlin.jvm.internal.j.checkNotNullParameter(selectionArgs, "selectionArgs");
        kotlin.jvm.internal.j.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        kotlin.jvm.internal.j.checkNotNullParameter(cursorFactory, "cursorFactory");
        Cursor rawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, sql, selectionArgs, str, cancellationSignal);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(rawQueryWithFactory, "sQLiteDatabase.rawQueryW…ationSignal\n            )");
        return rawQueryWithFactory;
    }

    public static final void setWriteAheadLoggingEnabled(SQLiteOpenHelper sQLiteOpenHelper, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(sQLiteOpenHelper, "sQLiteOpenHelper");
        sQLiteOpenHelper.setWriteAheadLoggingEnabled(z6);
    }
}
