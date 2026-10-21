package G1;

import B1.t;
import H1.g;
import H1.i;
import H1.k;
import I1.p;
import K1.E;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class e implements d, H1.c {

    /* renamed from: a, reason: collision with root package name */
    public final c f1018a;

    /* renamed from: b, reason: collision with root package name */
    public final H1.d[] f1019b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1020c;

    public e(c cVar, H1.d[] constraintControllers) {
        j.checkNotNullParameter(constraintControllers, "constraintControllers");
        this.f1018a = cVar;
        this.f1019b = constraintControllers;
        this.f1020c = new Object();
    }

    public final boolean areAllConstraintsMet(String workSpecId) {
        H1.d dVar;
        boolean z6;
        String str;
        j.checkNotNullParameter(workSpecId, "workSpecId");
        synchronized (this.f1020c) {
            try {
                H1.d[] dVarArr = this.f1019b;
                int length = dVarArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        dVar = null;
                        break;
                    }
                    dVar = dVarArr[i2];
                    if (dVar.isWorkSpecConstrained(workSpecId)) {
                        break;
                    }
                    i2++;
                }
                if (dVar != null) {
                    t tVar = t.get();
                    str = f.f1021a;
                    tVar.debug(str, "Work " + workSpecId + " constrained by " + dVar.getClass().getSimpleName());
                }
                z6 = dVar == null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    public void onConstraintMet(List<E> workSpecs) {
        String str;
        j.checkNotNullParameter(workSpecs, "workSpecs");
        synchronized (this.f1020c) {
            try {
                ArrayList<E> arrayList = new ArrayList();
                for (Object obj : workSpecs) {
                    if (areAllConstraintsMet(((E) obj).f1594a)) {
                        arrayList.add(obj);
                    }
                }
                for (E e3 : arrayList) {
                    t tVar = t.get();
                    str = f.f1021a;
                    tVar.debug(str, "Constraints met for " + e3);
                }
                c cVar = this.f1018a;
                if (cVar != null) {
                    cVar.onAllConstraintsMet(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onConstraintNotMet(List<E> workSpecs) {
        j.checkNotNullParameter(workSpecs, "workSpecs");
        synchronized (this.f1020c) {
            c cVar = this.f1018a;
            if (cVar != null) {
                cVar.onAllConstraintsNotMet(workSpecs);
            }
        }
    }

    @Override // G1.d
    public void replace(Iterable<E> workSpecs) {
        j.checkNotNullParameter(workSpecs, "workSpecs");
        synchronized (this.f1020c) {
            try {
                for (H1.d dVar : this.f1019b) {
                    dVar.setCallback(null);
                }
                for (H1.d dVar2 : this.f1019b) {
                    dVar2.replace(workSpecs);
                }
                for (H1.d dVar3 : this.f1019b) {
                    dVar3.setCallback(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // G1.d
    public void reset() {
        synchronized (this.f1020c) {
            for (H1.d dVar : this.f1019b) {
                dVar.reset();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(p trackers, c cVar) {
        this(cVar, new H1.d[]{new H1.a(trackers.getBatteryChargingTracker()), new H1.b(trackers.getBatteryNotLowTracker()), new k(trackers.getStorageNotLowTracker()), new H1.e(trackers.getNetworkStateTracker()), new H1.j(trackers.getNetworkStateTracker()), new i(trackers.getNetworkStateTracker()), new g(trackers.getNetworkStateTracker())});
        j.checkNotNullParameter(trackers, "trackers");
    }
}
