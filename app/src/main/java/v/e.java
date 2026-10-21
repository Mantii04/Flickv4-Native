package v;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class e extends androidx.constraintlayout.core.widgets.analyzer.f {

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f20343k;

    /* renamed from: l, reason: collision with root package name */
    public int f20344l;

    public e(u.e eVar, int i2) {
        super(eVar);
        u.e eVar2;
        this.f20343k = new ArrayList();
        this.f5277f = i2;
        u.e eVar3 = this.f5273b;
        u.e previousChainMember = eVar3.getPreviousChainMember(i2);
        while (true) {
            u.e eVar4 = previousChainMember;
            eVar2 = eVar3;
            eVar3 = eVar4;
            if (eVar3 == null) {
                break;
            } else {
                previousChainMember = eVar3.getPreviousChainMember(this.f5277f);
            }
        }
        this.f5273b = eVar2;
        androidx.constraintlayout.core.widgets.analyzer.f run = eVar2.getRun(this.f5277f);
        ArrayList arrayList = this.f20343k;
        arrayList.add(run);
        u.e nextChainMember = eVar2.getNextChainMember(this.f5277f);
        while (nextChainMember != null) {
            arrayList.add(nextChainMember.getRun(this.f5277f));
            nextChainMember = nextChainMember.getNextChainMember(this.f5277f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar = (androidx.constraintlayout.core.widgets.analyzer.f) it.next();
            int i7 = this.f5277f;
            if (i7 == 0) {
                fVar.f5273b.f20105b = this;
            } else if (i7 == 1) {
                fVar.f5273b.f20107c = this;
            }
        }
        if (this.f5277f == 0 && ((u.f) this.f5273b.getParent()).isRtl() && arrayList.size() > 1) {
            this.f5273b = ((androidx.constraintlayout.core.widgets.analyzer.f) b.c.h(1, arrayList)).f5273b;
        }
        this.f20344l = this.f5277f == 0 ? this.f5273b.getHorizontalChainStyle() : this.f5273b.getVerticalChainStyle();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void a() {
        ArrayList arrayList = this.f20343k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((androidx.constraintlayout.core.widgets.analyzer.f) it.next()).a();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        u.e eVar = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(0)).f5273b;
        u.e eVar2 = ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(size - 1)).f5273b;
        int i2 = this.f5277f;
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f5280i;
        androidx.constraintlayout.core.widgets.analyzer.a aVar2 = this.f5279h;
        if (i2 == 0) {
            u.d dVar = eVar.f20085I;
            u.d dVar2 = eVar2.f20087K;
            androidx.constraintlayout.core.widgets.analyzer.a target = getTarget(dVar, 0);
            int margin = dVar.getMargin();
            u.e d7 = d();
            if (d7 != null) {
                margin = d7.f20085I.getMargin();
            }
            if (target != null) {
                addTarget(aVar2, target, margin);
            }
            androidx.constraintlayout.core.widgets.analyzer.a target2 = getTarget(dVar2, 0);
            int margin2 = dVar2.getMargin();
            u.e e3 = e();
            if (e3 != null) {
                margin2 = e3.f20087K.getMargin();
            }
            if (target2 != null) {
                addTarget(aVar, target2, -margin2);
            }
        } else {
            u.d dVar3 = eVar.f20086J;
            u.d dVar4 = eVar2.f20088L;
            androidx.constraintlayout.core.widgets.analyzer.a target3 = getTarget(dVar3, 1);
            int margin3 = dVar3.getMargin();
            u.e d8 = d();
            if (d8 != null) {
                margin3 = d8.f20086J.getMargin();
            }
            if (target3 != null) {
                addTarget(aVar2, target3, margin3);
            }
            androidx.constraintlayout.core.widgets.analyzer.a target4 = getTarget(dVar4, 1);
            int margin4 = dVar4.getMargin();
            u.e e7 = e();
            if (e7 != null) {
                margin4 = e7.f20088L.getMargin();
            }
            if (target4 != null) {
                addTarget(aVar, target4, -margin4);
            }
        }
        aVar2.f5256a = this;
        aVar.f5256a = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public void applyToWidget() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f20343k;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i2)).applyToWidget();
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void b() {
        this.f5274c = null;
        Iterator it = this.f20343k.iterator();
        while (it.hasNext()) {
            ((androidx.constraintlayout.core.widgets.analyzer.f) it.next()).b();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean c() {
        ArrayList arrayList = this.f20343k;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i2)).c()) {
                return false;
            }
        }
        return true;
    }

    public final u.e d() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f20343k;
            if (i2 >= arrayList.size()) {
                return null;
            }
            androidx.constraintlayout.core.widgets.analyzer.f fVar = (androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i2);
            if (fVar.f5273b.getVisibility() != 8) {
                return fVar.f5273b;
            }
            i2++;
        }
    }

    public final u.e e() {
        ArrayList arrayList = this.f20343k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar = (androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(size);
            if (fVar.f5273b.getVisibility() != 8) {
                return fVar.f5273b;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public long getWrapDimension() {
        ArrayList arrayList = this.f20343k;
        int size = arrayList.size();
        long j7 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j7 = r5.f5280i.f5261f + ((androidx.constraintlayout.core.widgets.analyzer.f) arrayList.get(i2)).getWrapDimension() + j7 + r5.f5279h.f5261f;
        }
        return j7;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f5277f == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.f20343k.iterator();
        while (it.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar = (androidx.constraintlayout.core.widgets.analyzer.f) it.next();
            sb.append("<");
            sb.append(fVar);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:290:0x03c4, code lost:
    
        r2 = r2 - r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0116, code lost:
    
        r3 = r18;
        r5 = r19;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f0  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.f, v.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(v.f r29) {
        /*
            Method dump skipped, instructions count: 995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v.e.update(v.f):void");
    }
}
