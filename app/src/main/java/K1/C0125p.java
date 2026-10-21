package K1;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1.AbstractC1488a;
import p1.AbstractC1489b;

/* renamed from: K1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0125p implements InterfaceC0121l {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1642a;

    /* renamed from: b, reason: collision with root package name */
    public final C0122m f1643b;

    /* renamed from: c, reason: collision with root package name */
    public final C0123n f1644c;

    /* renamed from: d, reason: collision with root package name */
    public final C0124o f1645d;

    public C0125p(RoomDatabase roomDatabase) {
        this.f1642a = roomDatabase;
        this.f1643b = new C0122m(roomDatabase);
        this.f1644c = new C0123n(roomDatabase);
        this.f1645d = new C0124o(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public C0119j getSystemIdInfo(String str, int i2) {
        n1.O acquire = n1.O.acquire("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        acquire.bindLong(2, i2);
        RoomDatabase roomDatabase = this.f1642a;
        roomDatabase.assertNotSuspendingTransaction();
        C0119j c0119j = null;
        String string = null;
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            int columnIndexOrThrow = AbstractC1488a.getColumnIndexOrThrow(query, "work_spec_id");
            int columnIndexOrThrow2 = AbstractC1488a.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow3 = AbstractC1488a.getColumnIndexOrThrow(query, "system_id");
            if (query.moveToFirst()) {
                if (!query.isNull(columnIndexOrThrow)) {
                    string = query.getString(columnIndexOrThrow);
                }
                c0119j = new C0119j(string, query.getInt(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3));
            }
            return c0119j;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public List<String> getWorkSpecIds() {
        n1.O acquire = n1.O.acquire("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        RoomDatabase roomDatabase = this.f1642a;
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

    public void insertSystemIdInfo(C0119j c0119j) {
        RoomDatabase roomDatabase = this.f1642a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1643b.insert(c0119j);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }

    public void removeSystemIdInfo(String str, int i2) {
        RoomDatabase roomDatabase = this.f1642a;
        roomDatabase.assertNotSuspendingTransaction();
        C0123n c0123n = this.f1644c;
        r1.p acquire = c0123n.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        acquire.bindLong(2, i2);
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            c0123n.release(acquire);
        }
    }

    public void removeSystemIdInfo(String str) {
        RoomDatabase roomDatabase = this.f1642a;
        roomDatabase.assertNotSuspendingTransaction();
        C0124o c0124o = this.f1645d;
        r1.p acquire = c0124o.acquire();
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            c0124o.release(acquire);
        }
    }

    public C0119j getSystemIdInfo(r rVar) {
        return AbstractC0120k.getSystemIdInfo(this, rVar);
    }

    public void removeSystemIdInfo(r rVar) {
        AbstractC0120k.removeSystemIdInfo(this, rVar);
    }
}
