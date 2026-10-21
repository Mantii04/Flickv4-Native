package u;

import androidx.constraintlayout.core.SolverVariable$Type;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import r.C1531d;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public int f20069b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20070c;

    /* renamed from: d, reason: collision with root package name */
    public final e f20071d;

    /* renamed from: e, reason: collision with root package name */
    public final ConstraintAnchor$Type f20072e;

    /* renamed from: f, reason: collision with root package name */
    public d f20073f;

    /* renamed from: i, reason: collision with root package name */
    public r.m f20076i;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f20068a = null;

    /* renamed from: g, reason: collision with root package name */
    public int f20074g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f20075h = Integer.MIN_VALUE;

    public d(e eVar, ConstraintAnchor$Type constraintAnchor$Type) {
        this.f20071d = eVar;
        this.f20072e = constraintAnchor$Type;
    }

    public boolean connect(d dVar, int i2, int i7, boolean z6) {
        if (dVar == null) {
            reset();
            return true;
        }
        if (!z6 && !isValidConnection(dVar)) {
            return false;
        }
        this.f20073f = dVar;
        if (dVar.f20068a == null) {
            dVar.f20068a = new HashSet();
        }
        HashSet hashSet = this.f20073f.f20068a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f20074g = i2;
        this.f20075h = i7;
        return true;
    }

    public void findDependents(int i2, ArrayList<v.m> arrayList, v.m mVar) {
        HashSet hashSet = this.f20068a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                v.i.findDependents(((d) it.next()).f20071d, i2, arrayList, mVar);
            }
        }
    }

    public HashSet<d> getDependents() {
        return this.f20068a;
    }

    public int getFinalValue() {
        if (this.f20070c) {
            return this.f20069b;
        }
        return 0;
    }

    public int getMargin() {
        d dVar;
        if (this.f20071d.getVisibility() == 8) {
            return 0;
        }
        return (this.f20075h == Integer.MIN_VALUE || (dVar = this.f20073f) == null || dVar.f20071d.getVisibility() != 8) ? this.f20074g : this.f20075h;
    }

    public final d getOpposite() {
        ConstraintAnchor$Type constraintAnchor$Type = this.f20072e;
        int ordinal = constraintAnchor$Type.ordinal();
        e eVar = this.f20071d;
        switch (ordinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return eVar.f20087K;
            case 2:
                return eVar.f20088L;
            case 3:
                return eVar.f20085I;
            case 4:
                return eVar.f20086J;
            default:
                throw new AssertionError(constraintAnchor$Type.name());
        }
    }

    public e getOwner() {
        return this.f20071d;
    }

    public r.m getSolverVariable() {
        return this.f20076i;
    }

    public d getTarget() {
        return this.f20073f;
    }

    public ConstraintAnchor$Type getType() {
        return this.f20072e;
    }

    public boolean hasCenteredDependents() {
        HashSet hashSet = this.f20068a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((d) it.next()).getOpposite().isConnected()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDependents() {
        HashSet hashSet = this.f20068a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean hasFinalValue() {
        return this.f20070c;
    }

    public boolean isConnected() {
        return this.f20073f != null;
    }

    public boolean isValidConnection(d dVar) {
        if (dVar == null) {
            return false;
        }
        ConstraintAnchor$Type type = dVar.getType();
        ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.f5234m;
        ConstraintAnchor$Type constraintAnchor$Type2 = this.f20072e;
        if (type == constraintAnchor$Type2) {
            return constraintAnchor$Type2 != constraintAnchor$Type || (dVar.getOwner().hasBaseline() && getOwner().hasBaseline());
        }
        int ordinal = constraintAnchor$Type2.ordinal();
        ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.f5236p;
        ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.f5237q;
        ConstraintAnchor$Type constraintAnchor$Type5 = ConstraintAnchor$Type.f5232f;
        ConstraintAnchor$Type constraintAnchor$Type6 = ConstraintAnchor$Type.f5230b;
        switch (ordinal) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z6 = type == constraintAnchor$Type6 || type == constraintAnchor$Type5;
                return dVar.getOwner() instanceof i ? z6 || type == constraintAnchor$Type3 : z6;
            case 2:
            case 4:
                boolean z7 = type == ConstraintAnchor$Type.f5231e || type == ConstraintAnchor$Type.f5233j;
                return dVar.getOwner() instanceof i ? z7 || type == constraintAnchor$Type4 : z7;
            case 5:
                return (type == constraintAnchor$Type6 || type == constraintAnchor$Type5) ? false : true;
            case 6:
                return (type == constraintAnchor$Type || type == constraintAnchor$Type3 || type == constraintAnchor$Type4) ? false : true;
            default:
                throw new AssertionError(constraintAnchor$Type2.name());
        }
    }

    public void reset() {
        HashSet hashSet;
        d dVar = this.f20073f;
        if (dVar != null && (hashSet = dVar.f20068a) != null) {
            hashSet.remove(this);
            if (this.f20073f.f20068a.size() == 0) {
                this.f20073f.f20068a = null;
            }
        }
        this.f20068a = null;
        this.f20073f = null;
        this.f20074g = 0;
        this.f20075h = Integer.MIN_VALUE;
        this.f20070c = false;
        this.f20069b = 0;
    }

    public void resetFinalResolution() {
        this.f20070c = false;
        this.f20069b = 0;
    }

    public void resetSolverVariable(C1531d c1531d) {
        r.m mVar = this.f20076i;
        if (mVar == null) {
            this.f20076i = new r.m(SolverVariable$Type.f5225b, null);
        } else {
            mVar.reset();
        }
    }

    public void setFinalValue(int i2) {
        this.f20069b = i2;
        this.f20070c = true;
    }

    public void setGoneMargin(int i2) {
        if (isConnected()) {
            this.f20075h = i2;
        }
    }

    public String toString() {
        return this.f20071d.getDebugName() + ":" + this.f20072e.toString();
    }

    public boolean connect(d dVar, int i2) {
        return connect(dVar, i2, Integer.MIN_VALUE, false);
    }
}
