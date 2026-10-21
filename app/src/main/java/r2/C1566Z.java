package r2;

import com.bumptech.glide.Registry$NoModelLoaderAvailableException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: r2.Z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1566Z {

    /* renamed from: a, reason: collision with root package name */
    public final f0 f19761a;

    /* renamed from: b, reason: collision with root package name */
    public final C1565Y f19762b;

    public C1566Z(L.e eVar) {
        f0 f0Var = new f0(eVar);
        this.f19762b = new C1565Y();
        this.f19761a = f0Var;
    }

    public synchronized <Model, Data> void append(Class<Model> cls, Class<Data> cls2, InterfaceC1563W interfaceC1563W) {
        this.f19761a.a(cls, cls2, interfaceC1563W);
        this.f19762b.clear();
    }

    public synchronized List<Class<?>> getDataClasses(Class<?> cls) {
        return this.f19761a.c(cls);
    }

    public <A> List<InterfaceC1562V> getModelLoaders(A a7) {
        List<InterfaceC1562V> list;
        Class<?> cls = a7.getClass();
        synchronized (this) {
            list = this.f19762b.get(cls);
            if (list == null) {
                list = Collections.unmodifiableList(this.f19761a.b(cls));
                this.f19762b.put(cls, list);
            }
        }
        if (list.isEmpty()) {
            throw new Registry$NoModelLoaderAvailableException(a7);
        }
        int size = list.size();
        List<InterfaceC1562V> list2 = Collections.EMPTY_LIST;
        boolean z6 = true;
        for (int i2 = 0; i2 < size; i2++) {
            InterfaceC1562V interfaceC1562V = list.get(i2);
            if (interfaceC1562V.handles(a7)) {
                if (z6) {
                    list2 = new ArrayList<>(size - i2);
                    z6 = false;
                }
                list2.add(interfaceC1562V);
            }
        }
        if (list2.isEmpty()) {
            throw new Registry$NoModelLoaderAvailableException(a7, list);
        }
        return list2;
    }
}
