package androidx.constraintlayout.core.widgets.analyzer;

import java.util.Iterator;

/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: m, reason: collision with root package name */
    public int f5268m;

    public b(f fVar) {
        super(fVar);
        if (fVar instanceof d) {
            this.f5260e = DependencyNode$Type.f5245e;
        } else {
            this.f5260e = DependencyNode$Type.f5246f;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.a
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
}
