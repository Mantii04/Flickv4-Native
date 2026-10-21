package C1;

import B1.C0023c;
import B1.C0029i;
import B1.Q;
import K1.U;
import K1.b0;
import android.content.Context;
import android.os.PowerManager;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class r implements InterfaceC0067e, J1.a {

    /* renamed from: v, reason: collision with root package name */
    public static final String f444v = B1.t.tagWithPrefix("Processor");

    /* renamed from: e, reason: collision with root package name */
    public final Context f446e;

    /* renamed from: f, reason: collision with root package name */
    public final C0023c f447f;

    /* renamed from: j, reason: collision with root package name */
    public final N1.c f448j;

    /* renamed from: m, reason: collision with root package name */
    public final WorkDatabase f449m;

    /* renamed from: r, reason: collision with root package name */
    public final List f453r;

    /* renamed from: p, reason: collision with root package name */
    public final HashMap f451p = new HashMap();

    /* renamed from: n, reason: collision with root package name */
    public final HashMap f450n = new HashMap();

    /* renamed from: s, reason: collision with root package name */
    public final HashSet f454s = new HashSet();

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f455t = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public PowerManager.WakeLock f445b = null;

    /* renamed from: u, reason: collision with root package name */
    public final Object f456u = new Object();

    /* renamed from: q, reason: collision with root package name */
    public final HashMap f452q = new HashMap();

    public r(Context context, C0023c c0023c, N1.c cVar, WorkDatabase workDatabase, List<t> list) {
        this.f446e = context;
        this.f447f = c0023c;
        this.f448j = cVar;
        this.f449m = workDatabase;
        this.f453r = list;
    }

    public static boolean a(N n7, String str) {
        String str2 = f444v;
        if (n7 == null) {
            B1.t.get().debug(str2, "WorkerWrapper could not be found for " + str);
            return false;
        }
        n7.interrupt();
        B1.t.get().debug(str2, "WorkerWrapper interrupted for " + str);
        return true;
    }

    public void addExecutionListener(InterfaceC0067e interfaceC0067e) {
        synchronized (this.f456u) {
            this.f455t.add(interfaceC0067e);
        }
    }

    public final void b() {
        synchronized (this.f456u) {
            try {
                if (this.f450n.isEmpty()) {
                    try {
                        this.f446e.startService(J1.d.createStopForegroundIntent(this.f446e));
                    } catch (Throwable th) {
                        B1.t.get().error(f444v, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.f445b;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.f445b = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public K1.E getRunningWorkSpec(String str) {
        synchronized (this.f456u) {
            try {
                N n7 = (N) this.f450n.get(str);
                if (n7 == null) {
                    n7 = (N) this.f451p.get(str);
                }
                if (n7 == null) {
                    return null;
                }
                return n7.getWorkSpec();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isCancelled(String str) {
        boolean contains;
        synchronized (this.f456u) {
            contains = this.f454s.contains(str);
        }
        return contains;
    }

    public boolean isEnqueued(String str) {
        boolean z6;
        synchronized (this.f456u) {
            try {
                z6 = this.f451p.containsKey(str) || this.f450n.containsKey(str);
            } finally {
            }
        }
        return z6;
    }

    public boolean isEnqueuedInForeground(String str) {
        boolean containsKey;
        synchronized (this.f456u) {
            containsKey = this.f450n.containsKey(str);
        }
        return containsKey;
    }

    @Override // C1.InterfaceC0067e
    public void onExecuted(K1.r rVar, boolean z6) {
        synchronized (this.f456u) {
            try {
                N n7 = (N) this.f451p.get(rVar.getWorkSpecId());
                if (n7 != null && rVar.equals(n7.getWorkGenerationalId())) {
                    this.f451p.remove(rVar.getWorkSpecId());
                }
                B1.t.get().debug(f444v, r.class.getSimpleName() + StringUtils.SPACE + rVar.getWorkSpecId() + " executed; reschedule = " + z6);
                Iterator it = this.f455t.iterator();
                while (it.hasNext()) {
                    ((InterfaceC0067e) it.next()).onExecuted(rVar, z6);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeExecutionListener(InterfaceC0067e interfaceC0067e) {
        synchronized (this.f456u) {
            this.f455t.remove(interfaceC0067e);
        }
    }

    public void startForeground(String str, C0029i c0029i) {
        synchronized (this.f456u) {
            try {
                B1.t.get().info(f444v, "Moving WorkSpec (" + str + ") to the foreground");
                N n7 = (N) this.f451p.remove(str);
                if (n7 != null) {
                    if (this.f445b == null) {
                        PowerManager.WakeLock newWakeLock = L1.x.newWakeLock(this.f446e, "ProcessorForegroundLck");
                        this.f445b = newWakeLock;
                        newWakeLock.acquire();
                    }
                    this.f450n.put(str, n7);
                    A.h.startForegroundService(this.f446e, J1.d.createStartForegroundIntent(this.f446e, n7.getWorkGenerationalId(), c0029i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean startWork(v vVar) {
        return startWork(vVar, null);
    }

    public boolean stopAndCancelWork(String str) {
        N n7;
        boolean z6;
        synchronized (this.f456u) {
            try {
                B1.t.get().debug(f444v, "Processor cancelling " + str);
                this.f454s.add(str);
                n7 = (N) this.f450n.remove(str);
                z6 = n7 != null;
                if (n7 == null) {
                    n7 = (N) this.f451p.remove(str);
                }
                if (n7 != null) {
                    this.f452q.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean a7 = a(n7, str);
        if (z6) {
            b();
        }
        return a7;
    }

    public void stopForeground(String str) {
        synchronized (this.f456u) {
            this.f450n.remove(str);
            b();
        }
    }

    public boolean stopForegroundWork(v vVar) {
        N n7;
        String workSpecId = vVar.getId().getWorkSpecId();
        synchronized (this.f456u) {
            try {
                B1.t.get().debug(f444v, "Processor stopping foreground work " + workSpecId);
                n7 = (N) this.f450n.remove(workSpecId);
                if (n7 != null) {
                    this.f452q.remove(workSpecId);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return a(n7, workSpecId);
    }

    public boolean stopWork(v vVar) {
        String workSpecId = vVar.getId().getWorkSpecId();
        synchronized (this.f456u) {
            try {
                N n7 = (N) this.f451p.remove(workSpecId);
                if (n7 == null) {
                    B1.t.get().debug(f444v, "WorkerWrapper could not be found for " + workSpecId);
                    return false;
                }
                Set set = (Set) this.f452q.get(workSpecId);
                if (set != null && set.contains(vVar)) {
                    B1.t.get().debug(f444v, "Processor stopping background work " + workSpecId);
                    this.f452q.remove(workSpecId);
                    return a(n7, workSpecId);
                }
                return false;
            } finally {
            }
        }
    }

    public boolean startWork(v vVar, Q q6) {
        Throwable th;
        K1.r id = vVar.getId();
        final String workSpecId = id.getWorkSpecId();
        final ArrayList arrayList = new ArrayList();
        K1.E e3 = (K1.E) this.f449m.runInTransaction(new Callable() { // from class: C1.p
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkDatabase workDatabase = r.this.f449m;
                b0 b0Var = (b0) workDatabase.workTagDao();
                String str = workSpecId;
                arrayList.addAll(b0Var.getTagsForWorkSpecId(str));
                return ((U) workDatabase.workSpecDao()).getWorkSpec(str);
            }
        });
        if (e3 == null) {
            B1.t.get().warning(f444v, "Didn't find WorkSpec for id " + id);
            ((N1.e) this.f448j).getMainThreadExecutor().execute(new A4.n(7, this, id));
            return false;
        }
        synchronized (this.f456u) {
            try {
                try {
                    try {
                        if (isEnqueued(workSpecId)) {
                            Set set = (Set) this.f452q.get(workSpecId);
                            if (((v) set.iterator().next()).getId().getGeneration() == id.getGeneration()) {
                                set.add(vVar);
                                B1.t.get().debug(f444v, "Work " + id + " is already enqueued for processing");
                            } else {
                                ((N1.e) this.f448j).getMainThreadExecutor().execute(new A4.n(7, this, id));
                            }
                            return false;
                        }
                        if (e3.getGeneration() != id.getGeneration()) {
                            ((N1.e) this.f448j).getMainThreadExecutor().execute(new A4.n(7, this, id));
                            return false;
                        }
                        N build = new M(this.f446e, this.f447f, this.f448j, this, this.f449m, e3, arrayList).withSchedulers(this.f453r).withRuntimeExtras(q6).build();
                        V3.F future = build.getFuture();
                        future.addListener(new q(this, vVar.getId(), future), ((N1.e) this.f448j).getMainThreadExecutor());
                        this.f451p.put(workSpecId, build);
                        HashSet hashSet = new HashSet();
                        hashSet.add(vVar);
                        this.f452q.put(workSpecId, hashSet);
                        ((L1.t) ((N1.e) this.f448j).m1getSerialTaskExecutor()).execute(build);
                        B1.t.get().debug(f444v, r.class.getSimpleName() + ": processing " + id);
                        return true;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }
}
