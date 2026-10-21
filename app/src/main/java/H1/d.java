package H1;

import K1.E;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class d implements G1.a {

    /* renamed from: a, reason: collision with root package name */
    public final I1.h f1187a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1188b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1189c;

    /* renamed from: d, reason: collision with root package name */
    public Object f1190d;

    /* renamed from: e, reason: collision with root package name */
    public c f1191e;

    public d(I1.h tracker) {
        kotlin.jvm.internal.j.checkNotNullParameter(tracker, "tracker");
        this.f1187a = tracker;
        this.f1188b = new ArrayList();
        this.f1189c = new ArrayList();
    }

    public final void a(c cVar, Object obj) {
        ArrayList arrayList = this.f1188b;
        if (arrayList.isEmpty() || cVar == null) {
            return;
        }
        if (obj == null || isConstrained(obj)) {
            ((G1.e) cVar).onConstraintNotMet(arrayList);
        } else {
            ((G1.e) cVar).onConstraintMet(arrayList);
        }
    }

    public abstract boolean hasConstraint(E e3);

    public abstract boolean isConstrained(Object obj);

    public final boolean isWorkSpecConstrained(String workSpecId) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpecId, "workSpecId");
        Object obj = this.f1190d;
        return obj != null && isConstrained(obj) && this.f1189c.contains(workSpecId);
    }

    public void onConstraintChanged(Object obj) {
        this.f1190d = obj;
        a(this.f1191e, obj);
    }

    public final void replace(Iterable<E> workSpecs) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpecs, "workSpecs");
        ArrayList arrayList = this.f1188b;
        arrayList.clear();
        ArrayList arrayList2 = this.f1189c;
        arrayList2.clear();
        for (E e3 : workSpecs) {
            if (hasConstraint(e3)) {
                arrayList.add(e3);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((E) it.next()).f1594a);
        }
        boolean isEmpty = arrayList.isEmpty();
        I1.h hVar = this.f1187a;
        if (isEmpty) {
            hVar.removeListener(this);
        } else {
            hVar.addListener(this);
        }
        a(this.f1191e, this.f1190d);
    }

    public final void reset() {
        ArrayList arrayList = this.f1188b;
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList.clear();
        this.f1187a.removeListener(this);
    }

    public final void setCallback(c cVar) {
        if (this.f1191e != cVar) {
            this.f1191e = cVar;
            a(cVar, this.f1190d);
        }
    }
}
