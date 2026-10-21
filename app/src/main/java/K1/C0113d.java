package K1;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1.AbstractC1489b;

/* renamed from: K1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0113d implements InterfaceC0111b {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1633a;

    /* renamed from: b, reason: collision with root package name */
    public final C0112c f1634b;

    public C0113d(RoomDatabase roomDatabase) {
        this.f1633a = roomDatabase;
        this.f1634b = new C0112c(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public List<String> getDependentWorkIds(String str) {
        n1.O acquire = n1.O.acquire("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1633a;
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

    public boolean hasCompletedAllPrerequisites(String str) {
        n1.O acquire = n1.O.acquire("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1633a;
        roomDatabase.assertNotSuspendingTransaction();
        boolean z6 = false;
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                z6 = query.getInt(0) != 0;
            }
            return z6;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public boolean hasDependents(String str) {
        n1.O acquire = n1.O.acquire("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1633a;
        roomDatabase.assertNotSuspendingTransaction();
        boolean z6 = false;
        Cursor query = AbstractC1489b.query(roomDatabase, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                z6 = query.getInt(0) != 0;
            }
            return z6;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public void insertDependency(C0110a c0110a) {
        RoomDatabase roomDatabase = this.f1633a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1634b.insert(c0110a);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }
}
