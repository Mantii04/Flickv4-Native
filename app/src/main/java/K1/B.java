package K1;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class B implements InterfaceC0132x {

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f1588a;

    /* renamed from: b, reason: collision with root package name */
    public final C0134z f1589b;

    /* renamed from: c, reason: collision with root package name */
    public final A f1590c;

    public B(RoomDatabase roomDatabase) {
        this.f1588a = roomDatabase;
        new C0133y(roomDatabase);
        this.f1589b = new C0134z(roomDatabase);
        this.f1590c = new A(roomDatabase);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.EMPTY_LIST;
    }

    public void delete(String str) {
        RoomDatabase roomDatabase = this.f1588a;
        roomDatabase.assertNotSuspendingTransaction();
        C0134z c0134z = this.f1589b;
        r1.p acquire = c0134z.acquire();
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
            c0134z.release(acquire);
        }
    }

    public void deleteAll() {
        RoomDatabase roomDatabase = this.f1588a;
        roomDatabase.assertNotSuspendingTransaction();
        A a7 = this.f1590c;
        r1.p acquire = a7.acquire();
        roomDatabase.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            roomDatabase.setTransactionSuccessful();
        } finally {
            roomDatabase.endTransaction();
            a7.release(acquire);
        }
    }
}
