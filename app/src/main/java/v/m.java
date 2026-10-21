package v;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import r.C1533f;
import u.AbstractC1659b;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: f, reason: collision with root package name */
    public static int f20356f;

    /* renamed from: b, reason: collision with root package name */
    public final int f20358b;

    /* renamed from: c, reason: collision with root package name */
    public int f20359c;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f20357a = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f20360d = null;

    /* renamed from: e, reason: collision with root package name */
    public int f20361e = -1;

    public m(int i2) {
        int i7 = f20356f;
        f20356f = i7 + 1;
        this.f20358b = i7;
        this.f20359c = i2;
    }

    public boolean add(u.e eVar) {
        ArrayList arrayList = this.f20357a;
        if (arrayList.contains(eVar)) {
            return false;
        }
        arrayList.add(eVar);
        return true;
    }

    public void cleanup(ArrayList<m> arrayList) {
        int size = this.f20357a.size();
        if (this.f20361e != -1 && size > 0) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                m mVar = arrayList.get(i2);
                if (this.f20361e == mVar.f20358b) {
                    moveTo(this.f20359c, mVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int getId() {
        return this.f20358b;
    }

    public int getOrientation() {
        return this.f20359c;
    }

    public int measureWrap(C1533f c1533f, int i2) {
        int objectVariableValue;
        int objectVariableValue2;
        ArrayList arrayList = this.f20357a;
        if (arrayList.size() == 0) {
            return 0;
        }
        u.f fVar = (u.f) ((u.e) arrayList.get(0)).getParent();
        c1533f.reset();
        fVar.addToSolver(c1533f, false);
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            ((u.e) arrayList.get(i7)).addToSolver(c1533f, false);
        }
        if (i2 == 0 && fVar.f20165z0 > 0) {
            AbstractC1659b.applyChainConstraints(fVar, c1533f, arrayList, 0);
        }
        if (i2 == 1 && fVar.f20145A0 > 0) {
            AbstractC1659b.applyChainConstraints(fVar, c1533f, arrayList, 1);
        }
        try {
            c1533f.minimize();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f20360d = new ArrayList();
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            this.f20360d.add(new l(this, (u.e) arrayList.get(i8), c1533f, i2));
        }
        if (i2 == 0) {
            objectVariableValue = c1533f.getObjectVariableValue(fVar.f20085I);
            objectVariableValue2 = c1533f.getObjectVariableValue(fVar.f20087K);
            c1533f.reset();
        } else {
            objectVariableValue = c1533f.getObjectVariableValue(fVar.f20086J);
            objectVariableValue2 = c1533f.getObjectVariableValue(fVar.f20088L);
            c1533f.reset();
        }
        return objectVariableValue2 - objectVariableValue;
    }

    public void moveTo(int i2, m mVar) {
        Iterator it = this.f20357a.iterator();
        while (it.hasNext()) {
            u.e eVar = (u.e) it.next();
            mVar.add(eVar);
            if (i2 == 0) {
                eVar.f20132o0 = mVar.getId();
            } else {
                eVar.f20134p0 = mVar.getId();
            }
        }
        this.f20361e = mVar.f20358b;
    }

    public void setOrientation(int i2) {
        this.f20359c = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.f20359c;
        sb.append(i2 == 0 ? "Horizontal" : i2 == 1 ? "Vertical" : i2 == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String m7 = A.i.m(sb, this.f20358b, "] <");
        Iterator it = this.f20357a.iterator();
        while (it.hasNext()) {
            u.e eVar = (u.e) it.next();
            StringBuilder s6 = A.i.s(m7, StringUtils.SPACE);
            s6.append(eVar.getDebugName());
            m7 = s6.toString();
        }
        return A.i.B(m7, " >");
    }

    public void setAuthoritative(boolean z6) {
    }
}
