package androidx.room;

import H5.l;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.collections.a;
import kotlin.jvm.internal.j;
import n1.C1363b;
import n1.C1365d;
import n1.F;
import n1.G;
import n1.InterfaceC1366e;
import n1.Q;
import n1.u;
import o1.AbstractC1426b;
import o1.InterfaceC1425a;
import r1.d;
import r1.f;
import r1.m;
import r1.o;
import r1.p;
import v5.AbstractC1764B;

/* loaded from: classes.dex */
public abstract class RoomDatabase {

    /* renamed from: a, reason: collision with root package name */
    public volatile f f8111a;

    /* renamed from: b, reason: collision with root package name */
    public Executor f8112b;

    /* renamed from: c, reason: collision with root package name */
    public m f8113c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8115e;

    /* renamed from: f, reason: collision with root package name */
    public List f8116f;

    /* renamed from: i, reason: collision with root package name */
    public C1363b f8119i;

    /* renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f8121k;

    /* renamed from: d, reason: collision with root package name */
    public final u f8114d = createInvalidationTracker();

    /* renamed from: g, reason: collision with root package name */
    public final LinkedHashMap f8117g = new LinkedHashMap();

    /* renamed from: h, reason: collision with root package name */
    public final ReentrantReadWriteLock f8118h = new ReentrantReadWriteLock();

    /* renamed from: j, reason: collision with root package name */
    public final ThreadLocal f8120j = new ThreadLocal();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public final class JournalMode {

        /* renamed from: b, reason: collision with root package name */
        public static final JournalMode f8122b;

        /* renamed from: e, reason: collision with root package name */
        public static final JournalMode f8123e;

        /* renamed from: f, reason: collision with root package name */
        public static final JournalMode f8124f;

        /* renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ JournalMode[] f8125j;

        static {
            JournalMode journalMode = new JournalMode("AUTOMATIC", 0);
            f8122b = journalMode;
            JournalMode journalMode2 = new JournalMode("TRUNCATE", 1);
            f8123e = journalMode2;
            JournalMode journalMode3 = new JournalMode("WRITE_AHEAD_LOGGING", 2);
            f8124f = journalMode3;
            f8125j = new JournalMode[]{journalMode, journalMode2, journalMode3};
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) f8125j.clone();
        }

        public final JournalMode resolve$room_runtime_release(Context context) {
            j.checkNotNullParameter(context, "context");
            if (this != f8122b) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            j.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            return !d.isLowRamDevice((ActivityManager) systemService) ? f8124f : f8123e;
        }
    }

    static {
        new F(null);
    }

    public RoomDatabase() {
        j.checkNotNullExpressionValue(Collections.synchronizedMap(new LinkedHashMap()), "synchronizedMap(mutableMapOf())");
        this.f8121k = new LinkedHashMap();
    }

    public static Object a(Class cls, m mVar) {
        if (cls.isInstance(mVar)) {
            return mVar;
        }
        if (mVar instanceof InterfaceC1366e) {
            return a(cls, ((InterfaceC1366e) mVar).a());
        }
        return null;
    }

    public static final void access$internalBeginTransaction(RoomDatabase roomDatabase) {
        roomDatabase.assertNotMainThread();
        f writableDatabase = roomDatabase.getOpenHelper().getWritableDatabase();
        roomDatabase.getInvalidationTracker().syncTriggers$room_runtime_release(writableDatabase);
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    public static final void access$internalEndTransaction(RoomDatabase roomDatabase) {
        roomDatabase.getOpenHelper().getWritableDatabase().endTransaction();
        if (roomDatabase.inTransaction()) {
            return;
        }
        roomDatabase.getInvalidationTracker().refreshVersionsAsync();
    }

    public static /* synthetic */ Cursor query$default(RoomDatabase roomDatabase, o oVar, CancellationSignal cancellationSignal, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i2 & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.query(oVar, cancellationSignal);
    }

    public void assertNotMainThread() {
        if (!this.f8115e && isMainThread$room_runtime_release()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (!inTransaction() && this.f8120j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public void beginTransaction() {
        assertNotMainThread();
        C1363b c1363b = this.f8119i;
        if (c1363b != null) {
            c1363b.executeRefCountingFunction(new l() { // from class: androidx.room.RoomDatabase$beginTransaction$1
                {
                    super(1);
                }

                @Override // H5.l
                public final Object invoke(f it) {
                    j.checkNotNullParameter(it, "it");
                    RoomDatabase.access$internalBeginTransaction(RoomDatabase.this);
                    return null;
                }
            });
            return;
        }
        assertNotMainThread();
        f writableDatabase = getOpenHelper().getWritableDatabase();
        getInvalidationTracker().syncTriggers$room_runtime_release(writableDatabase);
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    public p compileStatement(String sql) {
        j.checkNotNullParameter(sql, "sql");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().compileStatement(sql);
    }

    public abstract u createInvalidationTracker();

    public abstract m createOpenHelper(C1365d c1365d);

    public void endTransaction() {
        C1363b c1363b = this.f8119i;
        if (c1363b != null) {
            c1363b.executeRefCountingFunction(new l() { // from class: androidx.room.RoomDatabase$endTransaction$1
                {
                    super(1);
                }

                @Override // H5.l
                public final Object invoke(f it) {
                    j.checkNotNullParameter(it, "it");
                    RoomDatabase.access$internalEndTransaction(RoomDatabase.this);
                    return null;
                }
            });
            return;
        }
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        getInvalidationTracker().refreshVersionsAsync();
    }

    public List<AbstractC1426b> getAutoMigrations(Map<Class<? extends InterfaceC1425a>, InterfaceC1425a> autoMigrationSpecs) {
        j.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        return v5.p.emptyList();
    }

    public final Lock getCloseLock$room_runtime_release() {
        ReentrantReadWriteLock.ReadLock readLock = this.f8118h.readLock();
        j.checkNotNullExpressionValue(readLock, "readWriteLock.readLock()");
        return readLock;
    }

    public u getInvalidationTracker() {
        return this.f8114d;
    }

    public m getOpenHelper() {
        m mVar = this.f8113c;
        if (mVar != null) {
            return mVar;
        }
        j.throwUninitializedPropertyAccessException("internalOpenHelper");
        return null;
    }

    public Executor getQueryExecutor() {
        Executor executor = this.f8112b;
        if (executor != null) {
            return executor;
        }
        j.throwUninitializedPropertyAccessException("internalQueryExecutor");
        return null;
    }

    public Set<Class<? extends InterfaceC1425a>> getRequiredAutoMigrationSpecs() {
        return AbstractC1764B.emptySet();
    }

    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return a.emptyMap();
    }

    public boolean inTransaction() {
        return getOpenHelper().getWritableDatabase().inTransaction();
    }

    public void init(C1365d configuration) {
        j.checkNotNullParameter(configuration, "configuration");
        this.f8113c = createOpenHelper(configuration);
        Set<Class<? extends InterfaceC1425a>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        BitSet bitSet = new BitSet();
        Iterator<Class<? extends InterfaceC1425a>> it = requiredAutoMigrationSpecs.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            LinkedHashMap linkedHashMap = this.f8117g;
            if (hasNext) {
                Class<? extends InterfaceC1425a> next = it.next();
                int size = configuration.f18832p.size() - 1;
                List list = configuration.f18832p;
                if (size >= 0) {
                    while (true) {
                        int i2 = size - 1;
                        if (next.isAssignableFrom(list.get(size).getClass())) {
                            bitSet.set(size);
                            break;
                        } else if (i2 < 0) {
                            break;
                        } else {
                            size = i2;
                        }
                    }
                }
                size = -1;
                if (size < 0) {
                    throw new IllegalArgumentException(("A required auto migration spec (" + next.getCanonicalName() + ") is missing in the database configuration.").toString());
                }
                linkedHashMap.put(next, list.get(size));
            } else {
                int size2 = configuration.f18832p.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i7 = size2 - 1;
                        if (!bitSet.get(size2)) {
                            throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                        }
                        if (i7 < 0) {
                            break;
                        } else {
                            size2 = i7;
                        }
                    }
                }
                for (AbstractC1426b abstractC1426b : getAutoMigrations(linkedHashMap)) {
                    int i8 = abstractC1426b.f19042a;
                    G g7 = configuration.f18820d;
                    if (!g7.contains(i8, abstractC1426b.f19043b)) {
                        g7.addMigrations(abstractC1426b);
                    }
                }
                getOpenHelper().setWriteAheadLoggingEnabled(configuration.f18823g == JournalMode.f8124f);
                this.f8116f = configuration.f18821e;
                this.f8112b = configuration.f18824h;
                new Q(configuration.f18825i);
                this.f8115e = configuration.f18822f;
                Intent intent = configuration.f18826j;
                if (intent != null) {
                    String str = configuration.f18818b;
                    if (str == null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    getInvalidationTracker().startMultiInstanceInvalidation$room_runtime_release(configuration.f18817a, str, intent);
                }
                Map<Class<?>, List<Class<?>>> requiredTypeConverters = getRequiredTypeConverters();
                BitSet bitSet2 = new BitSet();
                Iterator<Map.Entry<Class<?>, List<Class<?>>>> it2 = requiredTypeConverters.entrySet().iterator();
                while (true) {
                    boolean hasNext2 = it2.hasNext();
                    List list2 = configuration.f18831o;
                    if (hasNext2) {
                        Map.Entry<Class<?>, List<Class<?>>> next2 = it2.next();
                        Class<?> key = next2.getKey();
                        for (Class<?> cls : next2.getValue()) {
                            int size3 = list2.size() - 1;
                            if (size3 >= 0) {
                                while (true) {
                                    int i9 = size3 - 1;
                                    if (cls.isAssignableFrom(list2.get(size3).getClass())) {
                                        bitSet2.set(size3);
                                        break;
                                    } else if (i9 < 0) {
                                        break;
                                    } else {
                                        size3 = i9;
                                    }
                                }
                            }
                            size3 = -1;
                            if (size3 < 0) {
                                throw new IllegalArgumentException(("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.").toString());
                            }
                            this.f8121k.put(cls, list2.get(size3));
                        }
                    } else {
                        int size4 = list2.size() - 1;
                        if (size4 < 0) {
                            return;
                        }
                        while (true) {
                            int i10 = size4 - 1;
                            if (!bitSet2.get(size4)) {
                                throw new IllegalArgumentException("Unexpected type converter " + list2.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                            }
                            if (i10 < 0) {
                                return;
                            } else {
                                size4 = i10;
                            }
                        }
                    }
                }
            }
        }
    }

    public void internalInitInvalidationTracker(f db) {
        j.checkNotNullParameter(db, "db");
        getInvalidationTracker().internalInit$room_runtime_release(db);
    }

    public final boolean isMainThread$room_runtime_release() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public boolean isOpen() {
        Boolean bool;
        boolean isOpen;
        C1363b c1363b = this.f8119i;
        if (c1363b != null) {
            isOpen = c1363b.isActive();
        } else {
            f fVar = this.f8111a;
            if (fVar == null) {
                bool = null;
                return j.areEqual(bool, Boolean.TRUE);
            }
            isOpen = fVar.isOpen();
        }
        bool = Boolean.valueOf(isOpen);
        return j.areEqual(bool, Boolean.TRUE);
    }

    public Cursor query(o query, CancellationSignal cancellationSignal) {
        j.checkNotNullParameter(query, "query");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return cancellationSignal != null ? getOpenHelper().getWritableDatabase().query(query, cancellationSignal) : getOpenHelper().getWritableDatabase().query(query);
    }

    public void runInTransaction(Runnable body) {
        j.checkNotNullParameter(body, "body");
        beginTransaction();
        try {
            body.run();
            setTransactionSuccessful();
        } finally {
            endTransaction();
        }
    }

    public void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public <V> V runInTransaction(Callable<V> body) {
        j.checkNotNullParameter(body, "body");
        beginTransaction();
        try {
            V call = body.call();
            setTransactionSuccessful();
            return call;
        } finally {
            endTransaction();
        }
    }
}
