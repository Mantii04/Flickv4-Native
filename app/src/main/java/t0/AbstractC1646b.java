package t0;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Util;
import androidx.media3.database.DatabaseIOException;
import cz.msebera.android.httpclient.cookie.ClientCookie;

/* renamed from: t0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1646b {
    static {
        MediaLibraryInfo.registerModule("media3.database");
    }

    public static void removeVersion(SQLiteDatabase sQLiteDatabase, int i2, String str) throws DatabaseIOException {
        try {
            if (Util.tableExists(sQLiteDatabase, "ExoPlayerVersions")) {
                sQLiteDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(i2), str});
            }
        } catch (SQLException e3) {
            throw new DatabaseIOException(e3);
        }
    }

    public static void setVersion(SQLiteDatabase sQLiteDatabase, int i2, String str, int i7) throws DatabaseIOException {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i2));
            contentValues.put("instance_uid", str);
            contentValues.put(ClientCookie.VERSION_ATTR, Integer.valueOf(i7));
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e3) {
            throw new DatabaseIOException(e3);
        }
    }
}
