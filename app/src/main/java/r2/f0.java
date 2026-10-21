package r2;

import com.bumptech.glide.Registry$NoModelLoaderAvailableException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: e, reason: collision with root package name */
    public static final e0 f19779e = new e0();

    /* renamed from: f, reason: collision with root package name */
    public static final c0 f19780f = new c0();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f19781a;

    /* renamed from: b, reason: collision with root package name */
    public final e0 f19782b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f19783c;

    /* renamed from: d, reason: collision with root package name */
    public final L.e f19784d;

    public f0(L.e eVar) {
        e0 e0Var = f19779e;
        this.f19781a = new ArrayList();
        this.f19783c = new HashSet();
        this.f19784d = eVar;
        this.f19782b = e0Var;
    }

    public final synchronized void a(Class cls, Class cls2, InterfaceC1563W interfaceC1563W) {
        d0 d0Var = new d0(cls, cls2, interfaceC1563W);
        ArrayList arrayList = this.f19781a;
        arrayList.add(arrayList.size(), d0Var);
    }

    public final synchronized ArrayList b(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.f19781a.iterator();
            while (it.hasNext()) {
                d0 d0Var = (d0) it.next();
                if (!this.f19783c.contains(d0Var) && d0Var.handles(cls)) {
                    this.f19783c.add(d0Var);
                    arrayList.add((InterfaceC1562V) G2.r.checkNotNull(d0Var.f19778c.build(this)));
                    this.f19783c.remove(d0Var);
                }
            }
        } finally {
        }
        return arrayList;
    }

    public synchronized <Model, Data> InterfaceC1562V build(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f19781a.iterator();
            boolean z6 = false;
            while (it.hasNext()) {
                d0 d0Var = (d0) it.next();
                if (this.f19783c.contains(d0Var)) {
                    z6 = true;
                } else if (d0Var.handles(cls, cls2)) {
                    this.f19783c.add(d0Var);
                    arrayList.add((InterfaceC1562V) G2.r.checkNotNull(d0Var.f19778c.build(this)));
                    this.f19783c.remove(d0Var);
                }
            }
            if (arrayList.size() > 1) {
                return this.f19782b.build(arrayList, this.f19784d);
            }
            if (arrayList.size() == 1) {
                return (InterfaceC1562V) arrayList.get(0);
            }
            if (!z6) {
                throw new Registry$NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
            }
            return f19780f;
        } catch (Throwable th) {
            this.f19783c.clear();
            throw th;
        }
    }

    public final synchronized ArrayList c(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f19781a.iterator();
        while (it.hasNext()) {
            d0 d0Var = (d0) it.next();
            if (!arrayList.contains(d0Var.f19777b) && d0Var.handles(cls)) {
                arrayList.add(d0Var.f19777b);
            }
        }
        return arrayList;
    }
}
