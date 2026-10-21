package n1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.room.RoomDatabase;
import f1.RunnableC0883a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import n.C1352g;
import v5.AbstractC1763A;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: o, reason: collision with root package name */
    public static final C1376o f18845o = new C1376o(null);

    /* renamed from: p, reason: collision with root package name */
    public static final String[] f18846p = {"UPDATE", "DELETE", "INSERT"};

    /* renamed from: a, reason: collision with root package name */
    public final RoomDatabase f18847a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f18848b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f18849c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f18850d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f18851e;

    /* renamed from: f, reason: collision with root package name */
    public C1363b f18852f;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicBoolean f18853g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f18854h;

    /* renamed from: i, reason: collision with root package name */
    public volatile r1.p f18855i;

    /* renamed from: j, reason: collision with root package name */
    public final C1378q f18856j;

    /* renamed from: k, reason: collision with root package name */
    public final C1352g f18857k;

    /* renamed from: l, reason: collision with root package name */
    public final Object f18858l;

    /* renamed from: m, reason: collision with root package name */
    public final Object f18859m;

    /* renamed from: n, reason: collision with root package name */
    public final t f18860n;

    public u(RoomDatabase database, Map<String, String> shadowTablesMap, Map<String, Set<String>> viewTables, String... tableNames) {
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
        kotlin.jvm.internal.j.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        kotlin.jvm.internal.j.checkNotNullParameter(viewTables, "viewTables");
        kotlin.jvm.internal.j.checkNotNullParameter(tableNames, "tableNames");
        this.f18847a = database;
        this.f18848b = shadowTablesMap;
        this.f18849c = viewTables;
        this.f18853g = new AtomicBoolean(false);
        this.f18856j = new C1378q(tableNames.length);
        new C1375n(database);
        this.f18857k = new C1352g();
        this.f18858l = new Object();
        this.f18859m = new Object();
        this.f18850d = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String str2 = tableNames[i2];
            Locale US = Locale.US;
            kotlin.jvm.internal.j.checkNotNullExpressionValue(US, "US");
            String lowerCase = str2.toLowerCase(US);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            this.f18850d.put(lowerCase, Integer.valueOf(i2));
            String str3 = (String) this.f18848b.get(tableNames[i2]);
            if (str3 != null) {
                kotlin.jvm.internal.j.checkNotNullExpressionValue(US, "US");
                str = str3.toLowerCase(US);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
            if (str != null) {
                lowerCase = str;
            }
            strArr[i2] = lowerCase;
        }
        this.f18851e = strArr;
        for (Map.Entry entry : this.f18848b.entrySet()) {
            String str4 = (String) entry.getValue();
            Locale US2 = Locale.US;
            kotlin.jvm.internal.j.checkNotNullExpressionValue(US2, "US");
            String lowerCase2 = str4.toLowerCase(US2);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            if (this.f18850d.containsKey(lowerCase2)) {
                String str5 = (String) entry.getKey();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(US2, "US");
                String lowerCase3 = str5.toLowerCase(US2);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
                LinkedHashMap linkedHashMap = this.f18850d;
                linkedHashMap.put(lowerCase3, kotlin.collections.a.getValue(linkedHashMap, lowerCase2));
            }
        }
        this.f18860n = new t(this);
    }

    public final void a(r1.f fVar, int i2) {
        fVar.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i2 + ", 0)");
        String str = this.f18851e[i2];
        for (String str2 : f18846p) {
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + f18845o.getTriggerName$room_runtime_release(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i2 + " AND invalidated = 0; END";
            kotlin.jvm.internal.j.checkNotNullExpressionValue(str3, "StringBuilder().apply(builderAction).toString()");
            fVar.execSQL(str3);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void addObserver(r observer) {
        s sVar;
        kotlin.jvm.internal.j.checkNotNullParameter(observer, "observer");
        String[] tables$room_runtime_release = observer.getTables$room_runtime_release();
        Set createSetBuilder = AbstractC1763A.createSetBuilder();
        for (String str : tables$room_runtime_release) {
            Locale US = Locale.US;
            kotlin.jvm.internal.j.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            Map map = this.f18849c;
            if (map.containsKey(lowerCase)) {
                kotlin.jvm.internal.j.checkNotNullExpressionValue(US, "US");
                String lowerCase2 = str.toLowerCase(US);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                Object obj = map.get(lowerCase2);
                kotlin.jvm.internal.j.checkNotNull(obj);
                createSetBuilder.addAll((Collection) obj);
            } else {
                createSetBuilder.add(str);
            }
        }
        Object[] array = AbstractC1763A.build(createSetBuilder).toArray(new String[0]);
        kotlin.jvm.internal.j.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str2 : strArr) {
            LinkedHashMap linkedHashMap = this.f18850d;
            Locale US2 = Locale.US;
            kotlin.jvm.internal.j.checkNotNullExpressionValue(US2, "US");
            String lowerCase3 = str2.toLowerCase(US2);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            Integer num = (Integer) linkedHashMap.get(lowerCase3);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name ".concat(str2));
            }
            arrayList.add(num);
        }
        int[] intArray = v5.u.toIntArray(arrayList);
        s sVar2 = new s(observer, intArray, strArr);
        synchronized (this.f18857k) {
            sVar = (s) this.f18857k.putIfAbsent(observer, sVar2);
        }
        if (sVar == null && this.f18856j.onAdded(Arrays.copyOf(intArray, intArray.length))) {
            syncTriggers$room_runtime_release();
        }
    }

    public final void b(r1.f fVar, int i2) {
        String str = this.f18851e[i2];
        for (String str2 : f18846p) {
            String str3 = "DROP TRIGGER IF EXISTS " + f18845o.getTriggerName$room_runtime_release(str, str2);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(str3, "StringBuilder().apply(builderAction).toString()");
            fVar.execSQL(str3);
        }
    }

    public final boolean ensureInitialization$room_runtime_release() {
        if (!this.f18847a.isOpen()) {
            return false;
        }
        if (!this.f18854h) {
            this.f18847a.getOpenHelper().getWritableDatabase();
        }
        if (this.f18854h) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public final r1.p getCleanupStatement$room_runtime_release() {
        return this.f18855i;
    }

    public final RoomDatabase getDatabase$room_runtime_release() {
        return this.f18847a;
    }

    public final C1352g getObserverMap$room_runtime_release() {
        return this.f18857k;
    }

    public final AtomicBoolean getPendingRefresh() {
        return this.f18853g;
    }

    public final Map<String, Integer> getTableIdLookup$room_runtime_release() {
        return this.f18850d;
    }

    public final void internalInit$room_runtime_release(r1.f database) {
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
        synchronized (this.f18859m) {
            if (this.f18854h) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            database.execSQL("PRAGMA temp_store = MEMORY;");
            database.execSQL("PRAGMA recursive_triggers='ON';");
            database.execSQL("CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            syncTriggers$room_runtime_release(database);
            this.f18855i = database.compileStatement("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1");
            this.f18854h = true;
        }
    }

    public final void notifyObserversByTableNames(String... tables) {
        kotlin.jvm.internal.j.checkNotNullParameter(tables, "tables");
        synchronized (this.f18857k) {
            for (Map.Entry entry : this.f18857k) {
                kotlin.jvm.internal.j.checkNotNullExpressionValue(entry, "(observer, wrapper)");
                r rVar = (r) entry.getKey();
                s sVar = (s) entry.getValue();
                if (!rVar.isRemote$room_runtime_release()) {
                    sVar.notifyByTableNames$room_runtime_release(tables);
                }
            }
        }
    }

    public final void onAutoCloseCallback$room_runtime_release() {
        synchronized (this.f18859m) {
            this.f18854h = false;
            this.f18856j.resetTriggerState();
        }
    }

    public void refreshVersionsAsync() {
        if (this.f18853g.compareAndSet(false, true)) {
            C1363b c1363b = this.f18852f;
            if (c1363b != null) {
                c1363b.incrementCountAndEnsureDbIsOpen();
            }
            this.f18847a.getQueryExecutor().execute(this.f18860n);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void removeObserver(r observer) {
        s sVar;
        kotlin.jvm.internal.j.checkNotNullParameter(observer, "observer");
        synchronized (this.f18857k) {
            sVar = (s) this.f18857k.remove(observer);
        }
        if (sVar != null) {
            C1378q c1378q = this.f18856j;
            int[] tableIds$room_runtime_release = sVar.getTableIds$room_runtime_release();
            if (c1378q.onRemoved(Arrays.copyOf(tableIds$room_runtime_release, tableIds$room_runtime_release.length))) {
                syncTriggers$room_runtime_release();
            }
        }
    }

    public final void setAutoCloser$room_runtime_release(C1363b autoCloser) {
        kotlin.jvm.internal.j.checkNotNullParameter(autoCloser, "autoCloser");
        this.f18852f = autoCloser;
        autoCloser.setAutoCloseCallback(new RunnableC0883a(this, 7));
    }

    public final void startMultiInstanceInvalidation$room_runtime_release(Context context, String name, Intent serviceIntent) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        kotlin.jvm.internal.j.checkNotNullParameter(serviceIntent, "serviceIntent");
        new z(context, name, serviceIntent, this, this.f18847a.getQueryExecutor());
    }

    public final void syncTriggers$room_runtime_release(r1.f database) {
        kotlin.jvm.internal.j.checkNotNullParameter(database, "database");
        if (database.inTransaction()) {
            return;
        }
        try {
            Lock closeLock$room_runtime_release = this.f18847a.getCloseLock$room_runtime_release();
            closeLock$room_runtime_release.lock();
            try {
                synchronized (this.f18858l) {
                    int[] tablesToSync = this.f18856j.getTablesToSync();
                    if (tablesToSync != null) {
                        f18845o.beginTransactionInternal$room_runtime_release(database);
                        try {
                            int length = tablesToSync.length;
                            int i2 = 0;
                            int i7 = 0;
                            while (i2 < length) {
                                int i8 = tablesToSync[i2];
                                int i9 = i7 + 1;
                                if (i8 == 1) {
                                    a(database, i7);
                                } else if (i8 == 2) {
                                    b(database, i7);
                                }
                                i2++;
                                i7 = i9;
                            }
                            database.setTransactionSuccessful();
                            database.endTransaction();
                        } catch (Throwable th) {
                            database.endTransaction();
                            throw th;
                        }
                    }
                }
            } finally {
                closeLock$room_runtime_release.unlock();
            }
        } catch (SQLiteException e3) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e3);
        } catch (IllegalStateException e7) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e7);
        }
    }

    public final void syncTriggers$room_runtime_release() {
        RoomDatabase roomDatabase = this.f18847a;
        if (roomDatabase.isOpen()) {
            syncTriggers$room_runtime_release(roomDatabase.getOpenHelper().getWritableDatabase());
        }
    }
}
