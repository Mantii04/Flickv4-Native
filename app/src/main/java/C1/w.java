package C1;

import K1.V;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final Object f460a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f461b = new LinkedHashMap();

    public final boolean contains(K1.r id) {
        boolean containsKey;
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        synchronized (this.f460a) {
            containsKey = this.f461b.containsKey(id);
        }
        return containsKey;
    }

    public final v remove(K1.r id) {
        v vVar;
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        synchronized (this.f460a) {
            vVar = (v) this.f461b.remove(id);
        }
        return vVar;
    }

    public final v tokenFor(K1.r id) {
        v vVar;
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        synchronized (this.f460a) {
            try {
                LinkedHashMap linkedHashMap = this.f461b;
                Object obj = linkedHashMap.get(id);
                if (obj == null) {
                    obj = new v(id);
                    linkedHashMap.put(id, obj);
                }
                vVar = (v) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return vVar;
    }

    public final List<v> remove(String workSpecId) {
        List<v> list;
        kotlin.jvm.internal.j.checkNotNullParameter(workSpecId, "workSpecId");
        synchronized (this.f460a) {
            try {
                LinkedHashMap linkedHashMap = this.f461b;
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (kotlin.jvm.internal.j.areEqual(((K1.r) entry.getKey()).getWorkSpecId(), workSpecId)) {
                        linkedHashMap2.put(entry.getKey(), entry.getValue());
                    }
                }
                Iterator it = linkedHashMap2.keySet().iterator();
                while (it.hasNext()) {
                    this.f461b.remove((K1.r) it.next());
                }
                list = v5.u.toList(linkedHashMap2.values());
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    public final v tokenFor(K1.E spec) {
        kotlin.jvm.internal.j.checkNotNullParameter(spec, "spec");
        return tokenFor(V.generationalId(spec));
    }
}
