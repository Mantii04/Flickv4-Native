package C1;

import L1.RunnableC0147e;
import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class x extends B1.H {

    /* renamed from: j, reason: collision with root package name */
    public static final String f462j = B1.t.tagWithPrefix("WorkContinuationImpl");

    /* renamed from: a, reason: collision with root package name */
    public final G f463a;

    /* renamed from: b, reason: collision with root package name */
    public final String f464b;

    /* renamed from: c, reason: collision with root package name */
    public final ExistingWorkPolicy f465c;

    /* renamed from: d, reason: collision with root package name */
    public final List f466d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f467e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f468f;

    /* renamed from: g, reason: collision with root package name */
    public final List f469g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f470h;

    /* renamed from: i, reason: collision with root package name */
    public B1.B f471i;

    public x(G g7, List<? extends B1.L> list) {
        this(g7, null, ExistingWorkPolicy.f8254e, list, null);
    }

    public static boolean a(x xVar, HashSet hashSet) {
        hashSet.addAll(xVar.getIds());
        Set<String> prerequisitesFor = prerequisitesFor(xVar);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (prerequisitesFor.contains((String) it.next())) {
                return true;
            }
        }
        List<x> parents = xVar.getParents();
        if (parents != null && !parents.isEmpty()) {
            Iterator<x> it2 = parents.iterator();
            while (it2.hasNext()) {
                if (a(it2.next(), hashSet)) {
                    return true;
                }
            }
        }
        hashSet.removeAll(xVar.getIds());
        return false;
    }

    public static Set<String> prerequisitesFor(x xVar) {
        HashSet hashSet = new HashSet();
        List<x> parents = xVar.getParents();
        if (parents != null && !parents.isEmpty()) {
            Iterator<x> it = parents.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().getIds());
            }
        }
        return hashSet;
    }

    public B1.B enqueue() {
        if (this.f470h) {
            B1.t.get().warning(f462j, "Already enqueued work ids (" + TextUtils.join(", ", this.f467e) + ")");
        } else {
            RunnableC0147e runnableC0147e = new RunnableC0147e(this);
            N1.e eVar = (N1.e) this.f463a.getWorkTaskExecutor();
            eVar.getClass();
            N1.b.a(eVar, runnableC0147e);
            this.f471i = runnableC0147e.getOperation();
        }
        return this.f471i;
    }

    public ExistingWorkPolicy getExistingWorkPolicy() {
        return this.f465c;
    }

    public List<String> getIds() {
        return this.f467e;
    }

    public String getName() {
        return this.f464b;
    }

    public List<x> getParents() {
        return this.f469g;
    }

    public List<? extends B1.L> getWork() {
        return this.f466d;
    }

    public G getWorkManagerImpl() {
        return this.f463a;
    }

    public boolean hasCycles() {
        return a(this, new HashSet());
    }

    public boolean isEnqueued() {
        return this.f470h;
    }

    public void markEnqueued() {
        this.f470h = true;
    }

    public x(G g7, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends B1.L> list) {
        this(g7, str, existingWorkPolicy, list, null);
    }

    public x(G g7, String str, ExistingWorkPolicy existingWorkPolicy, List<? extends B1.L> list, List<x> list2) {
        this.f463a = g7;
        this.f464b = str;
        this.f465c = existingWorkPolicy;
        this.f466d = list;
        this.f469g = list2;
        this.f467e = new ArrayList(list.size());
        this.f468f = new ArrayList();
        if (list2 != null) {
            Iterator<x> it = list2.iterator();
            while (it.hasNext()) {
                this.f468f.addAll(it.next().f468f);
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            String stringId = list.get(i2).getStringId();
            this.f467e.add(stringId);
            this.f468f.add(stringId);
        }
    }
}
