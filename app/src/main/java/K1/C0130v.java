package K1;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1.AbstractC1489b;

/* renamed from: K1.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0130v implements InterfaceC0128t {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1650a;

    /* renamed from: b, reason: collision with root package name */
    public final C0129u f1651b;

    public C0130v(RoomDatabase roomDatabase) {
        this.f1650a = roomDatabase;
        this.f1651b = new C0129u(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public List<String> getNamesForWorkSpecId(String str) {
        n1.O acquire = n1.O.acquire("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1650a;
        roomDatabase.assertNotSuspendingTransaction();
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public void insert(C0127s c0127s) {
        RoomDatabase roomDatabase = this.f1650a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1651b.insert(c0127s);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }
}
