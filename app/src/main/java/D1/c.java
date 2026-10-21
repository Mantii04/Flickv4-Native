package D1;

import B1.C0023c;
import C1.G;
import C1.InterfaceC0067e;
import C1.t;
import C1.v;
import C1.w;
import G1.e;
import I1.p;
import K1.E;
import K1.V;
import L1.r;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.WorkInfo$State;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class c implements t, G1.c, InterfaceC0067e {

    /* renamed from: s, reason: collision with root package name */
    public static final String f858s = B1.t.tagWithPrefix("GreedyScheduler");

    /* renamed from: b, reason: collision with root package name */
    public final Context f859b;

    /* renamed from: e, reason: collision with root package name */
    public final G f860e;

    /* renamed from: f, reason: collision with root package name */
    public final e f861f;

    /* renamed from: m, reason: collision with root package name */
    public final b f863m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f864n;

    /* renamed from: r, reason: collision with root package name */
    public Boolean f867r;

    /* renamed from: j, reason: collision with root package name */
    public final HashSet f862j = new HashSet();

    /* renamed from: q, reason: collision with root package name */
    public final w f866q = new w();

    /* renamed from: p, reason: collision with root package name */
    public final Object f865p = new Object();

    public c(Context context, C0023c c0023c, p pVar, G g7) {
        this.f859b = context;
        this.f860e = g7;
        this.f861f = new e(pVar, this);
        this.f863m = new b(this, c0023c.getRunnableScheduler());
    }

    @Override // C1.t
    public void cancel(String str) {
        Boolean bool = this.f867r;
        G g7 = this.f860e;
        if (bool == null) {
            this.f867r = Boolean.valueOf(r.isDefaultProcess(this.f859b, g7.getConfiguration()));
        }
        boolean booleanValue = this.f867r.booleanValue();
        String str2 = f858s;
        if (!booleanValue) {
            B1.t.get().info(str2, "Ignoring schedule request in non-main process");
            return;
        }
        if (!this.f864n) {
            g7.getProcessor().addExecutionListener(this);
            this.f864n = true;
        }
        B1.t.get().debug(str2, "Cancelling work ID " + str);
        b bVar = this.f863m;
        if (bVar != null) {
            bVar.unschedule(str);
        }
        Iterator<v> it = this.f866q.remove(str).iterator();
        while (it.hasNext()) {
            g7.stopWork(it.next());
        }
    }

    @Override // C1.t
    public boolean hasLimitedSchedulingSlots() {
        return false;
    }

    @Override // G1.c
    public void onAllConstraintsMet(List<E> list) {
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            K1.r generationalId = V.generationalId(it.next());
            w wVar = this.f866q;
            if (!wVar.contains(generationalId)) {
                B1.t.get().debug(f858s, "Constraints met: Scheduling work ID " + generationalId);
                this.f860e.startWork(wVar.tokenFor(generationalId));
            }
        }
    }

    @Override // G1.c
    public void onAllConstraintsNotMet(List<E> list) {
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            K1.r generationalId = V.generationalId(it.next());
            B1.t.get().debug(f858s, "Constraints not met: Cancelling work ID " + generationalId);
            v remove = this.f866q.remove(generationalId);
            if (remove != null) {
                this.f860e.stopWork(remove);
            }
        }
    }

    @Override // C1.InterfaceC0067e
    public void onExecuted(K1.r rVar, boolean z6) {
        this.f866q.remove(rVar);
        synchronized (this.f865p) {
            try {
                Iterator it = this.f862j.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    E e3 = (E) it.next();
                    if (V.generationalId(e3).equals(rVar)) {
                        B1.t.get().debug(f858s, "Stopping tracking for " + rVar);
                        this.f862j.remove(e3);
                        this.f861f.replace(this.f862j);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // C1.t
    public void schedule(E... eArr) {
        if (this.f867r == null) {
            this.f867r = Boolean.valueOf(r.isDefaultProcess(this.f859b, this.f860e.getConfiguration()));
        }
        if (!this.f867r.booleanValue()) {
            B1.t.get().info(f858s, "Ignoring schedule request in a secondary process");
            return;
        }
        if (!this.f864n) {
            this.f860e.getProcessor().addExecutionListener(this);
            this.f864n = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (E e3 : eArr) {
            if (!this.f866q.contains(V.generationalId(e3))) {
                long calculateNextRunTime = e3.calculateNextRunTime();
                long currentTimeMillis = System.currentTimeMillis();
                if (e3.f1595b == WorkInfo$State.f8268b) {
                    if (currentTimeMillis < calculateNextRunTime) {
                        b bVar = this.f863m;
                        if (bVar != null) {
                            bVar.schedule(e3);
                        }
                    } else if (e3.hasConstraints()) {
                        int i2 = Build.VERSION.SDK_INT;
                        if (e3.f1603j.requiresDeviceIdle()) {
                            B1.t.get().debug(f858s, "Ignoring " + e3 + ". Requires device idle.");
                        } else if (i2 < 24 || !e3.f1603j.hasContentUriTriggers()) {
                            hashSet.add(e3);
                            hashSet2.add(e3.f1594a);
                        } else {
                            B1.t.get().debug(f858s, "Ignoring " + e3 + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.f866q.contains(V.generationalId(e3))) {
                        B1.t.get().debug(f858s, "Starting work for " + e3.f1594a);
                        this.f860e.startWork(this.f866q.tokenFor(e3));
                    }
                }
            }
        }
        synchronized (this.f865p) {
            try {
                if (!hashSet.isEmpty()) {
                    B1.t.get().debug(f858s, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    this.f862j.addAll(hashSet);
                    this.f861f.replace(this.f862j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
