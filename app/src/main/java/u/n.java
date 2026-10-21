package u;

import java.util.ArrayList;
import r.C1531d;

/* loaded from: classes.dex */
public abstract class n extends e {

    /* renamed from: q0, reason: collision with root package name */
    public ArrayList f20229q0 = new ArrayList();

    public void add(e eVar) {
        this.f20229q0.add(eVar);
        if (eVar.getParent() != null) {
            ((n) eVar.getParent()).remove(eVar);
        }
        eVar.setParent(this);
    }

    public ArrayList<e> getChildren() {
        return this.f20229q0;
    }

    public abstract void layout();

    public void remove(e eVar) {
        this.f20229q0.remove(eVar);
        eVar.reset();
    }

    public void removeAllChildren() {
        this.f20229q0.clear();
    }

    @Override // u.e
    public void reset() {
        this.f20229q0.clear();
        super.reset();
    }

    @Override // u.e
    public void resetSolverVariables(C1531d c1531d) {
        super.resetSolverVariables(c1531d);
        int size = this.f20229q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((e) this.f20229q0.get(i2)).resetSolverVariables(c1531d);
        }
    }
}
