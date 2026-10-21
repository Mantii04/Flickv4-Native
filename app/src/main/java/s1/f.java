package s1;

import android.database.sqlite.SQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class f {
    public f(kotlin.jvm.internal.g gVar) {
    }

    public final FrameworkSQLiteDatabase getWrappedDb(d refHolder, SQLiteDatabase sqLiteDatabase) {
        j.checkNotNullParameter(refHolder, "refHolder");
        j.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
        FrameworkSQLiteDatabase db = refHolder.getDb();
        if (db != null && db.isDelegate(sqLiteDatabase)) {
            return db;
        }
        FrameworkSQLiteDatabase frameworkSQLiteDatabase = new FrameworkSQLiteDatabase(sqLiteDatabase);
        refHolder.setDb(frameworkSQLiteDatabase);
        return frameworkSQLiteDatabase;
    }
}
