package v;

/* loaded from: classes.dex */
public final class j extends androidx.constraintlayout.core.widgets.analyzer.f {
    public j(u.e eVar) {
        super(eVar);
        eVar.f20109d.b();
        eVar.f20111e.b();
        this.f5277f = ((u.i) eVar).getOrientation();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void a() {
        u.i iVar = (u.i) this.f5273b;
        int relativeBegin = iVar.getRelativeBegin();
        int relativeEnd = iVar.getRelativeEnd();
        iVar.getRelativePercent();
        int orientation = iVar.getOrientation();
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f5279h;
        if (orientation == 1) {
            if (relativeBegin != -1) {
                aVar.f5267l.add(this.f5273b.f20097U.f20109d.f5279h);
                this.f5273b.f20097U.f20109d.f5279h.f5266k.add(aVar);
                aVar.f5261f = relativeBegin;
            } else if (relativeEnd != -1) {
                aVar.f5267l.add(this.f5273b.f20097U.f20109d.f5280i);
                this.f5273b.f20097U.f20109d.f5280i.f5266k.add(aVar);
                aVar.f5261f = -relativeEnd;
            } else {
                aVar.f5257b = true;
                aVar.f5267l.add(this.f5273b.f20097U.f20109d.f5280i);
                this.f5273b.f20097U.f20109d.f5280i.f5266k.add(aVar);
            }
            d(this.f5273b.f20109d.f5279h);
            d(this.f5273b.f20109d.f5280i);
            return;
        }
        if (relativeBegin != -1) {
            aVar.f5267l.add(this.f5273b.f20097U.f20111e.f5279h);
            this.f5273b.f20097U.f20111e.f5279h.f5266k.add(aVar);
            aVar.f5261f = relativeBegin;
        } else if (relativeEnd != -1) {
            aVar.f5267l.add(this.f5273b.f20097U.f20111e.f5280i);
            this.f5273b.f20097U.f20111e.f5280i.f5266k.add(aVar);
            aVar.f5261f = -relativeEnd;
        } else {
            aVar.f5257b = true;
            aVar.f5267l.add(this.f5273b.f20097U.f20111e.f5280i);
            this.f5273b.f20097U.f20111e.f5280i.f5266k.add(aVar);
        }
        d(this.f5273b.f20111e.f5279h);
        d(this.f5273b.f20111e.f5280i);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public void applyToWidget() {
        int orientation = ((u.i) this.f5273b).getOrientation();
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f5279h;
        if (orientation == 1) {
            this.f5273b.setX(aVar.f5262g);
        } else {
            this.f5273b.setY(aVar.f5262g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void b() {
        this.f5279h.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean c() {
        return false;
    }

    public final void d(androidx.constraintlayout.core.widgets.analyzer.a aVar) {
        androidx.constraintlayout.core.widgets.analyzer.a aVar2 = this.f5279h;
        aVar2.f5266k.add(aVar);
        aVar.f5267l.add(aVar2);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f, v.f
    public void update(f fVar) {
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f5279h;
        if (aVar.f5258c && !aVar.f5265j) {
            androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (androidx.constraintlayout.core.widgets.analyzer.a) aVar.f5267l.get(0);
            aVar.resolve((int) ((((u.i) this.f5273b).getRelativePercent() * aVar2.f5262g) + 0.5f));
        }
    }
}
