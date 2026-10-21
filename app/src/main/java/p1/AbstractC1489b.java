package p1;

import P5.p;
import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.os.CancellationSignal;
import androidx.room.RoomDatabase;
import java.util.List;
import v5.o;

/* renamed from: p1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1489b {
    public static final void dropFtsSyncTriggers(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        List createListBuilder = o.createListBuilder();
        Cursor query = db.query("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (query.moveToNext()) {
            try {
                createListBuilder.add(query.getString(0));
            } finally {
            }
        }
        F5.a.closeFinally(query, null);
        for (String triggerName : o.build(createListBuilder)) {
            kotlin.jvm.internal.j.checkNotNullExpressionValue(triggerName, "triggerName");
            if (p.startsWith$default(triggerName, "room_fts_content_sync_", false, 2, null)) {
                db.execSQL("DROP TRIGGER IF EXISTS " + triggerName);
            }
        }
    }

    public static final Cursor query(RoomDatabase db, r1.o sqLiteQuery, boolean z6, CancellationSignal cancellationSignal) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        kotlin.jvm.internal.j.checkNotNullParameter(sqLiteQuery, "sqLiteQuery");
        Cursor query = db.query(sqLiteQuery, cancellationSignal);
        if (!z6 || !(query instanceof AbstractWindowedCursor)) {
            return query;
        }
        AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) query;
        int count = abstractWindowedCursor.getCount();
        return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? AbstractC1488a.copyAndClose(query) : query;
    }
}
