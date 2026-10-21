package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class a implements v.f {

    /* renamed from: d, reason: collision with root package name */
    public final f f5259d;

    /* renamed from: f, reason: collision with root package name */
    public int f5261f;

    /* renamed from: g, reason: collision with root package name */
    public int f5262g;

    /* renamed from: a, reason: collision with root package name */
    public f f5256a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5257b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5258c = false;

    /* renamed from: e, reason: collision with root package name */
    public DependencyNode$Type f5260e = DependencyNode$Type.f5244b;

    /* renamed from: h, reason: collision with root package name */
    public int f5263h = 1;

    /* renamed from: i, reason: collision with root package name */
    public b f5264i = null;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5265j = false;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f5266k = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f5267l = new ArrayList();

    public a(f fVar) {
        this.f5259d = fVar;
    }

    public void addDependency(v.f fVar) {
        this.f5266k.add(fVar);
        if (this.f5265j) {
            fVar.update(fVar);
        }
    }

    public void clear() {
        this.f5267l.clear();
        this.f5266k.clear();
        this.f5265j = false;
        this.f5262g = 0;
        this.f5258c = false;
        this.f5257b = false;
    }

    public void resolve(int i2) {
        if (this.f5265j) {
            return;
        }
        this.f5265j = true;
        this.f5262g = i2;
        Iterator it = this.f5266k.iterator();
        while (it.hasNext()) {
            v.f fVar = (v.f) it.next();
            fVar.update(fVar);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5259d.f5273b.getDebugName());
        sb.append(":");
        sb.append(this.f5260e);
        sb.append("(");
        sb.append(this.f5265j ? Integer.valueOf(this.f5262g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f5267l.size());
        sb.append(":d=");
        sb.append(this.f5266k.size());
        sb.append(">");
        return sb.toString();
    }

    @Override // v.f
    public void update(v.f fVar) {
        ArrayList arrayList = this.f5267l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((a) it.next()).f5265j) {
                return;
            }
        }
        this.f5258c = true;
        f fVar2 = this.f5256a;
        if (fVar2 != null) {
            fVar2.update(this);
        }
        if (this.f5257b) {
            this.f5259d.update(this);
            return;
        }
        Iterator it2 = arrayList.iterator();
        a aVar = null;
        int i2 = 0;
        while (it2.hasNext()) {
            a aVar2 = (a) it2.next();
            if (!(aVar2 instanceof b)) {
                i2++;
                aVar = aVar2;
            }
        }
        if (aVar != null && i2 == 1 && aVar.f5265j) {
            b bVar = this.f5264i;
            if (bVar != null) {
                if (!bVar.f5265j) {
                    return;
                } else {
                    this.f5261f = this.f5263h * bVar.f5262g;
                }
            }
            resolve(aVar.f5262g + this.f5261f);
        }
        f fVar3 = this.f5256a;
        if (fVar3 != null) {
            fVar3.update(this);
        }
    }
}
