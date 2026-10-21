package androidx.work.impl;

import C1.C;
import C1.D;
import C1.E;
import K1.AbstractC0118i;
import K1.B;
import K1.C0113d;
import K1.C0117h;
import K1.C0125p;
import K1.C0130v;
import K1.F;
import K1.InterfaceC0111b;
import K1.InterfaceC0115f;
import K1.InterfaceC0121l;
import K1.InterfaceC0128t;
import K1.InterfaceC0132x;
import K1.U;
import K1.Y;
import K1.b0;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n1.C1365d;
import n1.M;
import n1.u;
import o1.AbstractC1426b;
import o1.InterfaceC1425a;
import r1.k;
import r1.m;

/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f8283t = 0;

    /* renamed from: m, reason: collision with root package name */
    public volatile U f8284m;

    /* renamed from: n, reason: collision with root package name */
    public volatile C0113d f8285n;

    /* renamed from: o, reason: collision with root package name */
    public volatile b0 f8286o;

    /* renamed from: p, reason: collision with root package name */
    public volatile C0125p f8287p;

    /* renamed from: q, reason: collision with root package name */
    public volatile C0130v f8288q;

    /* renamed from: r, reason: collision with root package name */
    public volatile B f8289r;

    /* renamed from: s, reason: collision with root package name */
    public volatile C0117h f8290s;

    @Override // androidx.room.RoomDatabase
    public u createInvalidationTracker() {
        return new u(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public m createOpenHelper(C1365d c1365d) {
        return c1365d.f18819c.create(k.builder(c1365d.f18817a).name(c1365d.f18818b).callback(new M(c1365d, new E(this), "5181942b9ebc31ce68dacb56c16fd79f", "ae2044fb577e65ee8bb576ca48a2f06e")).build());
    }

    @Override // androidx.work.impl.WorkDatabase
    public InterfaceC0111b dependencyDao() {
        C0113d c0113d;
        if (this.f8285n != null) {
            return this.f8285n;
        }
        synchronized (this) {
            try {
                if (this.f8285n == null) {
                    this.f8285n = new C0113d(this);
                }
                c0113d = this.f8285n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0113d;
    }

    @Override // androidx.room.RoomDatabase
    public List<AbstractC1426b> getAutoMigrations(Map<Class<? extends InterfaceC1425a>, InterfaceC1425a> map) {
        return Arrays.asList(new C(), new D());
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends InterfaceC1425a>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(F.class, U.getRequiredConverters());
        hashMap.put(InterfaceC0111b.class, C0113d.getRequiredConverters());
        hashMap.put(Y.class, b0.getRequiredConverters());
        hashMap.put(InterfaceC0121l.class, C0125p.getRequiredConverters());
        hashMap.put(InterfaceC0128t.class, C0130v.getRequiredConverters());
        hashMap.put(InterfaceC0132x.class, B.getRequiredConverters());
        hashMap.put(InterfaceC0115f.class, C0117h.getRequiredConverters());
        hashMap.put(AbstractC0118i.class, AbstractC0118i.getRequiredConverters());
        return hashMap;
    }

    @Override // androidx.work.impl.WorkDatabase
    public InterfaceC0115f preferenceDao() {
        C0117h c0117h;
        if (this.f8290s != null) {
            return this.f8290s;
        }
        synchronized (this) {
            try {
                if (this.f8290s == null) {
                    this.f8290s = new C0117h(this);
                }
                c0117h = this.f8290s;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0117h;
    }

    @Override // androidx.work.impl.WorkDatabase
    public InterfaceC0121l systemIdInfoDao() {
        C0125p c0125p;
        if (this.f8287p != null) {
            return this.f8287p;
        }
        synchronized (this) {
            try {
                if (this.f8287p == null) {
                    this.f8287p = new C0125p(this);
                }
                c0125p = this.f8287p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0125p;
    }

    @Override // androidx.work.impl.WorkDatabase
    public InterfaceC0128t workNameDao() {
        C0130v c0130v;
        if (this.f8288q != null) {
            return this.f8288q;
        }
        synchronized (this) {
            try {
                if (this.f8288q == null) {
                    this.f8288q = new C0130v(this);
                }
                c0130v = this.f8288q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0130v;
    }

    @Override // androidx.work.impl.WorkDatabase
    public InterfaceC0132x workProgressDao() {
        B b7;
        if (this.f8289r != null) {
            return this.f8289r;
        }
        synchronized (this) {
            try {
                if (this.f8289r == null) {
                    this.f8289r = new B(this);
                }
                b7 = this.f8289r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return b7;
    }

    @Override // androidx.work.impl.WorkDatabase
    public F workSpecDao() {
        U u6;
        if (this.f8284m != null) {
            return this.f8284m;
        }
        synchronized (this) {
            try {
                if (this.f8284m == null) {
                    this.f8284m = new U(this);
                }
                u6 = this.f8284m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return u6;
    }

    @Override // androidx.work.impl.WorkDatabase
    public Y workTagDao() {
        b0 b0Var;
        if (this.f8286o != null) {
            return this.f8286o;
        }
        synchronized (this) {
            try {
                if (this.f8286o == null) {
                    this.f8286o = new b0(this);
                }
                b0Var = this.f8286o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return b0Var;
    }
}
