package androidx.lifecycle;

import java.io.Closeable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f7040a = new LinkedHashMap();

    public final void clear() {
        for (X x6 : this.f7040a.values()) {
            x6.f7019c = true;
            HashMap hashMap = x6.f7017a;
            if (hashMap != null) {
                synchronized (hashMap) {
                    try {
                        Iterator it = x6.f7017a.values().iterator();
                        while (it.hasNext()) {
                            X.a(it.next());
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = x6.f7018b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        Iterator it2 = x6.f7018b.iterator();
                        while (it2.hasNext()) {
                            X.a((Closeable) it2.next());
                        }
                    } finally {
                    }
                }
            }
            x6.onCleared();
        }
        this.f7040a.clear();
    }

    public final X get(String key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        return (X) this.f7040a.get(key);
    }

    public final Set<String> keys() {
        return new HashSet(this.f7040a.keySet());
    }

    public final void put(String key, X viewModel) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        kotlin.jvm.internal.j.checkNotNullParameter(viewModel, "viewModel");
        X x6 = (X) this.f7040a.put(key, viewModel);
        if (x6 != null) {
            x6.onCleared();
        }
    }
}
