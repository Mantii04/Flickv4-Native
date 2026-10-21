package n1;

import android.content.Context;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import m.C1256a;
import o1.AbstractC1426b;

/* renamed from: n1.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1360D {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18774a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f18775b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18776c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f18777d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f18778e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f18779f;

    /* renamed from: g, reason: collision with root package name */
    public Executor f18780g;

    /* renamed from: h, reason: collision with root package name */
    public Executor f18781h;

    /* renamed from: i, reason: collision with root package name */
    public r1.l f18782i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18783j;

    /* renamed from: k, reason: collision with root package name */
    public final RoomDatabase.JournalMode f18784k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18785l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f18786m;

    /* renamed from: n, reason: collision with root package name */
    public final long f18787n;

    /* renamed from: o, reason: collision with root package name */
    public final G f18788o;

    /* renamed from: p, reason: collision with root package name */
    public final LinkedHashSet f18789p;

    /* renamed from: q, reason: collision with root package name */
    public HashSet f18790q;

    public C1360D(Context context, Class<RoomDatabase> klass, String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(klass, "klass");
        this.f18774a = context;
        this.f18775b = klass;
        this.f18776c = str;
        this.f18777d = new ArrayList();
        this.f18778e = new ArrayList();
        this.f18779f = new ArrayList();
        this.f18784k = RoomDatabase.JournalMode.f8122b;
        this.f18785l = true;
        this.f18787n = -1L;
        this.f18788o = new G();
        this.f18789p = new LinkedHashSet();
    }

    public C1360D addCallback(AbstractC1361E callback) {
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        this.f18777d.add(callback);
        return this;
    }

    public C1360D addMigrations(AbstractC1426b... migrations) {
        kotlin.jvm.internal.j.checkNotNullParameter(migrations, "migrations");
        if (this.f18790q == null) {
            this.f18790q = new HashSet();
        }
        for (AbstractC1426b abstractC1426b : migrations) {
            HashSet hashSet = this.f18790q;
            kotlin.jvm.internal.j.checkNotNull(hashSet);
            hashSet.add(Integer.valueOf(abstractC1426b.f19042a));
            HashSet hashSet2 = this.f18790q;
            kotlin.jvm.internal.j.checkNotNull(hashSet2);
            hashSet2.add(Integer.valueOf(abstractC1426b.f19043b));
        }
        this.f18788o.addMigrations((AbstractC1426b[]) Arrays.copyOf(migrations, migrations.length));
        return this;
    }

    public C1360D allowMainThreadQueries() {
        this.f18783j = true;
        return this;
    }

    public RoomDatabase build() {
        Executor executor = this.f18780g;
        if (executor == null && this.f18781h == null) {
            Executor iOThreadExecutor = C1256a.getIOThreadExecutor();
            this.f18781h = iOThreadExecutor;
            this.f18780g = iOThreadExecutor;
        } else if (executor != null && this.f18781h == null) {
            this.f18781h = executor;
        } else if (executor == null) {
            this.f18780g = this.f18781h;
        }
        HashSet hashSet = this.f18790q;
        LinkedHashSet linkedHashSet = this.f18789p;
        if (hashSet != null) {
            kotlin.jvm.internal.j.checkNotNull(hashSet);
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                int intValue = ((Number) it.next()).intValue();
                if (linkedHashSet.contains(Integer.valueOf(intValue))) {
                    throw new IllegalArgumentException(A.i.f(intValue, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: ").toString());
                }
            }
        }
        r1.l lVar = this.f18782i;
        if (lVar == null) {
            lVar = new s1.g();
        }
        r1.l lVar2 = lVar;
        if (this.f18787n > 0) {
            if (this.f18776c != null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
        }
        ArrayList arrayList = this.f18777d;
        boolean z6 = this.f18783j;
        RoomDatabase.JournalMode journalMode = this.f18784k;
        Context context = this.f18774a;
        RoomDatabase.JournalMode resolve$room_runtime_release = journalMode.resolve$room_runtime_release(context);
        Executor executor2 = this.f18780g;
        if (executor2 == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        Executor executor3 = this.f18781h;
        if (executor3 == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        C1365d c1365d = new C1365d(context, this.f18776c, lVar2, this.f18788o, arrayList, z6, resolve$room_runtime_release, executor2, executor3, null, this.f18785l, this.f18786m, linkedHashSet, null, null, null, null, this.f18778e, this.f18779f);
        RoomDatabase roomDatabase = (RoomDatabase) AbstractC1359C.getGeneratedImplementation(this.f18775b, "_Impl");
        roomDatabase.init(c1365d);
        return roomDatabase;
    }

    public C1360D fallbackToDestructiveMigration() {
        this.f18785l = false;
        this.f18786m = true;
        return this;
    }

    public C1360D openHelperFactory(r1.l lVar) {
        this.f18782i = lVar;
        return this;
    }

    public C1360D setQueryExecutor(Executor executor) {
        kotlin.jvm.internal.j.checkNotNullParameter(executor, "executor");
        this.f18780g = executor;
        return this;
    }
}
