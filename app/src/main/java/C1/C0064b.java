package C1;

import android.content.ContentValues;
import o1.InterfaceC1425a;

/* renamed from: C1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0064b implements InterfaceC1425a {
    @Override // o1.InterfaceC1425a
    public void onPostMigrate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        db.execSQL("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("last_enqueue_time", Long.valueOf(System.currentTimeMillis()));
        db.update("WorkSpec", 3, contentValues, "last_enqueue_time = 0 AND interval_duration <> 0 ", new Object[0]);
    }
}
