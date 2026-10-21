package K1;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import p1.AbstractC1489b;

/* loaded from: classes.dex */
public final class b0 implements Y {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1630a;

    /* renamed from: b, reason: collision with root package name */
    public final Z f1631b;

    /* renamed from: c, reason: collision with root package name */
    public final a0 f1632c;

    public b0(RoomDatabase roomDatabase) {
        this.f1630a = roomDatabase;
        this.f1631b = new Z(roomDatabase);
        this.f1632c = new a0(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public void deleteByWorkSpecId(String str) {
        RoomDatabase roomDatabase = this.f1630a;
        roomDatabase.assertNotSuspendingTransaction();
        a0 a0Var = this.f1632c;
        r1.p acquire = a0Var.acquire();
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
            a0Var.release(acquire);
        }
    }

    public List<String> getTagsForWorkSpecId(String str) {
        n1.O acquire = n1.O.acquire("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        RoomDatabase roomDatabase = this.f1630a;
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

    public void insert(W w6) {
        RoomDatabase roomDatabase = this.f1630a;
        roomDatabase.assertNotSuspendingTransaction();
        roomDatabase.beginTransaction();
        try {
            this.f1631b.insert(w6);
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
        }
    }

    public void insertTags(String str, Set<String> set) {
        X.insertTags(this, str, set);
    }
}
