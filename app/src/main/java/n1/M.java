package n1;

import android.database.Cursor;
import java.util.Iterator;
import java.util.List;
import o1.AbstractC1426b;
import r1.C1541b;

/* loaded from: classes.dex */
public final class M extends r1.h {

    /* renamed from: f, reason: collision with root package name */
    public static final J f18795f = new J(null);

    /* renamed from: b, reason: collision with root package name */
    public C1365d f18796b;

    /* renamed from: c, reason: collision with root package name */
    public final K f18797c;

    /* renamed from: d, reason: collision with root package name */
    public final String f18798d;

    /* renamed from: e, reason: collision with root package name */
    public final String f18799e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(C1365d configuration, K delegate, String identityHash, String legacyHash) {
        super(delegate.f18792a);
        kotlin.jvm.internal.j.checkNotNullParameter(configuration, "configuration");
        kotlin.jvm.internal.j.checkNotNullParameter(delegate, "delegate");
        kotlin.jvm.internal.j.checkNotNullParameter(identityHash, "identityHash");
        kotlin.jvm.internal.j.checkNotNullParameter(legacyHash, "legacyHash");
        this.f18796b = configuration;
        this.f18797c = delegate;
        this.f18798d = identityHash;
        this.f18799e = legacyHash;
    }

    @Override // r1.h
    public void onConfigure(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        super.onConfigure(db);
    }

    @Override // r1.h
    public void onCreate(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        boolean hasEmptySchema$room_runtime_release = f18795f.hasEmptySchema$room_runtime_release(db);
        K k7 = this.f18797c;
        k7.createAllTables(db);
        if (!hasEmptySchema$room_runtime_release) {
            L onValidateSchema = k7.onValidateSchema(db);
            if (!onValidateSchema.f18793a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.f18794b);
            }
        }
        db.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        db.execSQL(I.createInsertQuery(this.f18798d));
        k7.onCreate(db);
    }

    @Override // r1.h
    public void onDowngrade(r1.f db, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        onUpgrade(db, i2, i7);
    }

    @Override // r1.h
    public void onOpen(r1.f db) {
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        super.onOpen(db);
        boolean hasRoomMasterTable$room_runtime_release = f18795f.hasRoomMasterTable$room_runtime_release(db);
        String str = this.f18798d;
        K k7 = this.f18797c;
        if (hasRoomMasterTable$room_runtime_release) {
            Cursor query = db.query(new C1541b("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                String string = query.moveToFirst() ? query.getString(0) : null;
                F5.a.closeFinally(query, null);
                if (!kotlin.jvm.internal.j.areEqual(str, string) && !kotlin.jvm.internal.j.areEqual(this.f18799e, string)) {
                    throw new IllegalStateException(b.c.l("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: ", str, ", found: ", string));
                }
            } finally {
            }
        } else {
            L onValidateSchema = k7.onValidateSchema(db);
            if (!onValidateSchema.f18793a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.f18794b);
            }
            k7.onPostMigrate(db);
            db.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            db.execSQL(I.createInsertQuery(str));
        }
        k7.onOpen(db);
        this.f18796b = null;
    }

    @Override // r1.h
    public void onUpgrade(r1.f db, int i2, int i7) {
        List<AbstractC1426b> findMigrationPath;
        kotlin.jvm.internal.j.checkNotNullParameter(db, "db");
        C1365d c1365d = this.f18796b;
        K k7 = this.f18797c;
        if (c1365d == null || (findMigrationPath = c1365d.f18820d.findMigrationPath(i2, i7)) == null) {
            C1365d c1365d2 = this.f18796b;
            if (c1365d2 != null && !c1365d2.isMigrationRequired(i2, i7)) {
                k7.dropAllTables(db);
                k7.createAllTables(db);
                return;
            }
            throw new IllegalStateException("A migration from " + i2 + " to " + i7 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        k7.onPreMigrate(db);
        Iterator<T> it = findMigrationPath.iterator();
        while (it.hasNext()) {
            ((AbstractC1426b) it.next()).migrate(db);
        }
        L onValidateSchema = k7.onValidateSchema(db);
        if (!onValidateSchema.f18793a) {
            throw new IllegalStateException("Migration didn't properly handle: " + onValidateSchema.f18794b);
        }
        k7.onPostMigrate(db);
        db.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        db.execSQL(I.createInsertQuery(this.f18798d));
    }
}
