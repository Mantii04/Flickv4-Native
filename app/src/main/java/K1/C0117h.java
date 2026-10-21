package K1;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;
import p1.AbstractC1489b;

/* renamed from: K1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0117h implements InterfaceC0115f {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1637a;

    /* renamed from: b, reason: collision with root package name */
    public final C0116g f1638b;

    public C0117h(RoomDatabase roomDatabase) {
        this.f1637a = roomDatabase;
        this.f1638b = new C0116g(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public Long getLongValue(String str) {
        n1.O acquire = n1.O.acquire("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1637a;
        roomDatabase.assertNotSuspendingTransaction();
        Long l7 = null;
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            if (query.moveToFirst() && !query.isNull(0)) {
                l7 = Long.valueOf(query.getLong(0));
            }
            return l7;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public void insertPreference(C0114e c0114e) {
        RoomDatabase roomDatabase = this.f1637a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1638b.insert(c0114e);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }
}
