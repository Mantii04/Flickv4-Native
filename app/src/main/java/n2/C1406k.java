package n2;

import com.bumptech.glide.Priority;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r2.C1561U;
import r2.InterfaceC1562V;
import t2.C1653e;

/* renamed from: n2.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1406k {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f18962a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18963b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.h f18964c;

    /* renamed from: d, reason: collision with root package name */
    public Object f18965d;

    /* renamed from: e, reason: collision with root package name */
    public int f18966e;

    /* renamed from: f, reason: collision with root package name */
    public int f18967f;

    /* renamed from: g, reason: collision with root package name */
    public Class f18968g;

    /* renamed from: h, reason: collision with root package name */
    public z f18969h;

    /* renamed from: i, reason: collision with root package name */
    public l2.q f18970i;

    /* renamed from: j, reason: collision with root package name */
    public Map f18971j;

    /* renamed from: k, reason: collision with root package name */
    public Class f18972k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18973l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f18974m;

    /* renamed from: n, reason: collision with root package name */
    public l2.m f18975n;

    /* renamed from: o, reason: collision with root package name */
    public Priority f18976o;

    /* renamed from: p, reason: collision with root package name */
    public u f18977p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18978q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f18979r;

    public final ArrayList a() {
        boolean z6 = this.f18974m;
        ArrayList arrayList = this.f18963b;
        if (!z6) {
            this.f18974m = true;
            arrayList.clear();
            ArrayList b7 = b();
            int size = b7.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1561U c1561u = (C1561U) b7.get(i2);
                if (!arrayList.contains(c1561u.f19756a)) {
                    arrayList.add(c1561u.f19756a);
                }
                int i7 = 0;
                while (true) {
                    List list = c1561u.f19757b;
                    if (i7 < list.size()) {
                        if (!arrayList.contains(list.get(i7))) {
                            arrayList.add(list.get(i7));
                        }
                        i7++;
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z6 = this.f18973l;
        ArrayList arrayList = this.f18962a;
        if (!z6) {
            this.f18973l = true;
            arrayList.clear();
            List<InterfaceC1562V> modelLoaders = this.f18964c.getRegistry().getModelLoaders(this.f18965d);
            int size = modelLoaders.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1561U buildLoadData = modelLoaders.get(i2).buildLoadData(this.f18965d, this.f18966e, this.f18967f, this.f18970i);
                if (buildLoadData != null) {
                    arrayList.add(buildLoadData);
                }
            }
        }
        return arrayList;
    }

    public final l2.t c(Class cls) {
        l2.t tVar = (l2.t) this.f18971j.get(cls);
        if (tVar == null) {
            Iterator it = this.f18971j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    tVar = (l2.t) entry.getValue();
                    break;
                }
            }
        }
        if (tVar != null) {
            return tVar;
        }
        if (!this.f18971j.isEmpty() || !this.f18978q) {
            return C1653e.get();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }
}
