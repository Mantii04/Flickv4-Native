package y;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p.q;

/* renamed from: y.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1867k {

    /* renamed from: a, reason: collision with root package name */
    public final L.f f20955a = new L.f(10);

    /* renamed from: b, reason: collision with root package name */
    public final q f20956b = new q();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f20957c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f20958d = new HashSet();

    public final void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) this.f20956b.get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                a(arrayList2.get(i2), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public void addEdge(Object obj, Object obj2) {
        q qVar = this.f20956b;
        if (!qVar.containsKey(obj) || !qVar.containsKey(obj2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayList = (ArrayList) qVar.get(obj);
        if (arrayList == null) {
            arrayList = (ArrayList) this.f20955a.acquire();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            qVar.put(obj, arrayList);
        }
        arrayList.add(obj2);
    }

    public void addNode(Object obj) {
        q qVar = this.f20956b;
        if (qVar.containsKey(obj)) {
            return;
        }
        qVar.put(obj, null);
    }

    public void clear() {
        q qVar = this.f20956b;
        int size = qVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList arrayList = (ArrayList) qVar.valueAt(i2);
            if (arrayList != null) {
                arrayList.clear();
                this.f20955a.release(arrayList);
            }
        }
        qVar.clear();
    }

    public boolean contains(Object obj) {
        return this.f20956b.containsKey(obj);
    }

    public List getIncomingEdges(Object obj) {
        return (List) this.f20956b.get(obj);
    }

    public List<Object> getOutgoingEdges(Object obj) {
        q qVar = this.f20956b;
        int size = qVar.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList arrayList2 = (ArrayList) qVar.valueAt(i2);
            if (arrayList2 != null && arrayList2.contains(obj)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(qVar.keyAt(i2));
            }
        }
        return arrayList;
    }

    public ArrayList<Object> getSortedList() {
        ArrayList<Object> arrayList = this.f20957c;
        arrayList.clear();
        HashSet hashSet = this.f20958d;
        hashSet.clear();
        q qVar = this.f20956b;
        int size = qVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(qVar.keyAt(i2), arrayList, hashSet);
        }
        return arrayList;
    }

    public boolean hasOutgoingEdges(Object obj) {
        q qVar = this.f20956b;
        int size = qVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList arrayList = (ArrayList) qVar.valueAt(i2);
            if (arrayList != null && arrayList.contains(obj)) {
                return true;
            }
        }
        return false;
    }
}
