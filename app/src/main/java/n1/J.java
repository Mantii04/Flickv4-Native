package n1;

import android.database.Cursor;

/* loaded from: classes.dex */
public final class J {
    public J(kotlin.jvm.internal.g gVar) {
    }

    public final boolean hasEmptySchema$room_runtime_release(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        Cursor query = db.query("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z6 = false;
            if (query.moveToFirst()) {
                if (query.getInt(0) == 0) {
                    z6 = true;
                }
            }
            F5.a.closeFinally(query, null);
            return z6;
        } finally {
        }
    }

    public final boolean hasRoomMasterTable$room_runtime_release(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        Cursor query = db.query("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z6 = false;
            if (query.moveToFirst()) {
                if (query.getInt(0) != 0) {
                    z6 = true;
                }
            }
            F5.a.closeFinally(query, null);
            return z6;
        } finally {
        }
    }
}
