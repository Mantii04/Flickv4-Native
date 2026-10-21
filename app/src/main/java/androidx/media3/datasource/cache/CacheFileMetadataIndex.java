package androidx.media3.datasource.cache;

import A.i;
import P3.v;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import t0.AbstractC1646b;
import t0.InterfaceC1645a;

/* loaded from: classes.dex */
final class CacheFileMetadataIndex {
    private static final int COLUMN_INDEX_LAST_TOUCH_TIMESTAMP = 2;
    private static final int COLUMN_INDEX_LENGTH = 1;
    private static final int COLUMN_INDEX_NAME = 0;
    private static final String TABLE_PREFIX = "ExoPlayerCacheFileMetadata";
    private static final String TABLE_SCHEMA = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)";
    private static final int TABLE_VERSION = 1;
    private static final String WHERE_NAME_EQUALS = "name = ?";
    private final InterfaceC1645a databaseProvider;
    private String tableName;
    private static final String COLUMN_NAME = "name";
    private static final String COLUMN_LENGTH = "length";
    private static final String COLUMN_LAST_TOUCH_TIMESTAMP = "last_touch_timestamp";
    private static final String[] COLUMNS = {COLUMN_NAME, COLUMN_LENGTH, COLUMN_LAST_TOUCH_TIMESTAMP};

    public CacheFileMetadataIndex(InterfaceC1645a interfaceC1645a) {
    }

    public static void delete(InterfaceC1645a interfaceC1645a, long j7) throws DatabaseIOException {
        String hexString = Long.toHexString(j7);
        try {
            String tableName = getTableName(hexString);
            SQLiteDatabase writableDatabase = interfaceC1645a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                AbstractC1646b.removeVersion(writableDatabase, 2, hexString);
                dropTable(writableDatabase, tableName);
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e3) {
            throw new DatabaseIOException(e3);
        }
    }

    private static void dropTable(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    private Cursor getCursor() {
        v.checkNotNull(this.tableName);
        throw null;
    }

    private static String getTableName(String str) {
        return i.k(TABLE_PREFIX, str);
    }

    public Map<String, CacheFileMetadata> getAll() throws DatabaseIOException {
        try {
            Cursor cursor = getCursor();
            try {
                HashMap hashMap = new HashMap(cursor.getCount());
                while (cursor.moveToNext()) {
                    hashMap.put((String) v.checkNotNull(cursor.getString(0)), new CacheFileMetadata(cursor.getLong(1), cursor.getLong(2)));
                }
                cursor.close();
                return hashMap;
            } finally {
            }
        } catch (SQLException e3) {
            throw new DatabaseIOException(e3);
        }
    }

    public void initialize(long j7) throws DatabaseIOException {
        try {
            this.tableName = getTableName(Long.toHexString(j7));
            throw null;
        } catch (SQLException e3) {
            throw new DatabaseIOException(e3);
        }
    }

    public void remove(String str) throws DatabaseIOException {
        v.checkNotNull(this.tableName);
        throw null;
    }

    public void removeAll(Set<String> set) throws DatabaseIOException {
        v.checkNotNull(this.tableName);
        throw null;
    }

    public void set(String str, long j7, long j8) throws DatabaseIOException {
        v.checkNotNull(this.tableName);
        throw null;
    }
}
