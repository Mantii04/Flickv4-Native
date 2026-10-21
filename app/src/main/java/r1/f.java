package r1;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.util.List;

/* loaded from: classes.dex */
public interface f extends Closeable {
    void beginTransaction();

    void beginTransactionNonExclusive();

    p compileStatement(String str);

    void endTransaction();

    void execSQL(String str) throws SQLException;

    void execSQL(String str, Object[] objArr) throws SQLException;

    List<Pair<String, String>> getAttachedDbs();

    String getPath();

    boolean inTransaction();

    boolean isOpen();

    boolean isWriteAheadLoggingEnabled();

    Cursor query(String str);

    Cursor query(o oVar);

    Cursor query(o oVar, CancellationSignal cancellationSignal);

    void setTransactionSuccessful();

    int update(String str, int i2, ContentValues contentValues, String str2, Object[] objArr);
}
