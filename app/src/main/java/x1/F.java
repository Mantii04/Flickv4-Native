package x1;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.t0;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class F extends androidx.transition.e {

    /* renamed from: M, reason: collision with root package name */
    public int f20779M;

    /* renamed from: K, reason: collision with root package name */
    public ArrayList f20777K = new ArrayList();

    /* renamed from: L, reason: collision with root package name */
    public boolean f20778L = true;

    /* renamed from: N, reason: collision with root package name */
    public boolean f20780N = false;

    /* renamed from: O, reason: collision with root package name */
    public int f20781O = 0;

    public F addTransition(androidx.transition.e eVar) {
        this.f20777K.add(eVar);
        eVar.f8230r = this;
        long j7 = this.f8224f;
        if (j7 >= 0) {
            eVar.setDuration(j7);
        }
        if ((this.f20781O & 1) != 0) {
            eVar.setInterpolator(getInterpolator());
        }
        if ((this.f20781O & 2) != 0) {
            getPropagation();
            eVar.setPropagation(null);
        }
        if ((this.f20781O & 4) != 0) {
            eVar.setPathMotion(getPathMotion());
        }
        if ((this.f20781O & 8) != 0) {
            eVar.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override // androidx.transition.e
    public final void c(I i2) {
        int size = this.f20777K.size();
        for (int i7 = 0; i7 < size; i7++) {
            ((androidx.transition.e) this.f20777K.get(i7)).c(i2);
        }
    }

    @Override // androidx.transition.e
    public void cancel() {
        super.cancel();
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).cancel();
        }
    }

    @Override // androidx.transition.e
    public void captureEndValues(I i2) {
        if (i(i2.f20784b)) {
            Iterator it = this.f20777K.iterator();
            while (it.hasNext()) {
                androidx.transition.e eVar = (androidx.transition.e) it.next();
                if (eVar.i(i2.f20784b)) {
                    eVar.captureEndValues(i2);
                    i2.f20785c.add(eVar);
                }
            }
        }
    }

    @Override // androidx.transition.e
    public void captureStartValues(I i2) {
        if (i(i2.f20784b)) {
            Iterator it = this.f20777K.iterator();
            while (it.hasNext()) {
                androidx.transition.e eVar = (androidx.transition.e) it.next();
                if (eVar.i(i2.f20784b)) {
                    eVar.captureStartValues(i2);
                    i2.f20785c.add(eVar);
                }
            }
        }
    }

    @Override // androidx.transition.e
    public final void f(ViewGroup viewGroup, t0 t0Var, t0 t0Var2, ArrayList arrayList, ArrayList arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            androidx.transition.e eVar = (androidx.transition.e) this.f20777K.get(i2);
            if (startDelay > 0 && (this.f20778L || i2 == 0)) {
                long startDelay2 = eVar.getStartDelay();
                if (startDelay2 > 0) {
                    eVar.setStartDelay(startDelay2 + startDelay);
                } else {
                    eVar.setStartDelay(startDelay);
                }
            }
            eVar.f(viewGroup, t0Var, t0Var2, arrayList, arrayList2);
        }
    }

    public androidx.transition.e getTransitionAt(int i2) {
        if (i2 < 0 || i2 >= this.f20777K.size()) {
            return null;
        }
        return (androidx.transition.e) this.f20777K.get(i2);
    }

    public int getTransitionCount() {
        return this.f20777K.size();
    }

    @Override // androidx.transition.e
    public final String l(String str) {
        String l7 = super.l(str);
        for (int i2 = 0; i2 < this.f20777K.size(); i2++) {
            StringBuilder s6 = A.i.s(l7, StringUtils.LF);
            s6.append(((androidx.transition.e) this.f20777K.get(i2)).l(str + "  "));
            l7 = s6.toString();
        }
        return l7;
    }

    @Override // androidx.transition.e
    public void pause(View view) {
        super.pause(view);
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).pause(view);
        }
    }

    @Override // androidx.transition.e
    public void resume(View view) {
        super.resume(view);
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).resume(view);
        }
    }

    @Override // androidx.transition.e
    public void runAnimators() {
        if (this.f20777K.isEmpty()) {
            start();
            end();
            return;
        }
        E e3 = new E();
        e3.f20776a = this;
        Iterator it = this.f20777K.iterator();
        while (it.hasNext()) {
            ((androidx.transition.e) it.next()).addListener(e3);
        }
        this.f20779M = this.f20777K.size();
        if (this.f20778L) {
            Iterator it2 = this.f20777K.iterator();
            while (it2.hasNext()) {
                ((androidx.transition.e) it2.next()).runAnimators();
            }
            return;
        }
        for (int i2 = 1; i2 < this.f20777K.size(); i2++) {
            ((androidx.transition.e) this.f20777K.get(i2 - 1)).addListener(new D((androidx.transition.e) this.f20777K.get(i2)));
        }
        androidx.transition.e eVar = (androidx.transition.e) this.f20777K.get(0);
        if (eVar != null) {
            eVar.runAnimators();
        }
    }

    @Override // androidx.transition.e
    public void setEpicenterCallback(AbstractC1818u abstractC1818u) {
        super.setEpicenterCallback(abstractC1818u);
        this.f20781O |= 8;
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).setEpicenterCallback(abstractC1818u);
        }
    }

    public F setOrdering(int i2) {
        if (i2 == 0) {
            this.f20778L = true;
            return this;
        }
        if (i2 != 1) {
            throw new AndroidRuntimeException(A.i.f(i2, "Invalid parameter for TransitionSet ordering: "));
        }
        this.f20778L = false;
        return this;
    }

    @Override // androidx.transition.e
    public void setPathMotion(AbstractC1814p abstractC1814p) {
        super.setPathMotion(abstractC1814p);
        this.f20781O |= 4;
        if (this.f20777K != null) {
            for (int i2 = 0; i2 < this.f20777K.size(); i2++) {
                ((androidx.transition.e) this.f20777K.get(i2)).setPathMotion(abstractC1814p);
            }
        }
    }

    @Override // androidx.transition.e
    public void setPropagation(C c7) {
        super.setPropagation(c7);
        this.f20781O |= 2;
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).setPropagation(c7);
        }
    }

    @Override // androidx.transition.e
    public F addListener(InterfaceC1820w interfaceC1820w) {
        return (F) super.addListener(interfaceC1820w);
    }

    @Override // androidx.transition.e
    public F addTarget(View view) {
        for (int i2 = 0; i2 < this.f20777K.size(); i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).addTarget(view);
        }
        return (F) super.addTarget(view);
    }

    @Override // androidx.transition.e
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public androidx.transition.e mo63clone() {
        F f3 = (F) super.mo63clone();
        f3.f20777K = new ArrayList();
        int size = this.f20777K.size();
        for (int i2 = 0; i2 < size; i2++) {
            androidx.transition.e mo63clone = ((androidx.transition.e) this.f20777K.get(i2)).mo63clone();
            f3.f20777K.add(mo63clone);
            mo63clone.f8230r = f3;
        }
        return f3;
    }

    @Override // androidx.transition.e
    public F removeListener(InterfaceC1820w interfaceC1820w) {
        return (F) super.removeListener(interfaceC1820w);
    }

    @Override // androidx.transition.e
    public F removeTarget(View view) {
        for (int i2 = 0; i2 < this.f20777K.size(); i2++) {
            ((androidx.transition.e) this.f20777K.get(i2)).removeTarget(view);
        }
        return (F) super.removeTarget(view);
    }

    @Override // androidx.transition.e
    public F setDuration(long j7) {
        ArrayList arrayList;
        super.setDuration(j7);
        if (this.f8224f >= 0 && (arrayList = this.f20777K) != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((androidx.transition.e) this.f20777K.get(i2)).setDuration(j7);
            }
        }
        return this;
    }

    @Override // androidx.transition.e
    public F setInterpolator(TimeInterpolator timeInterpolator) {
        this.f20781O |= 1;
        ArrayList arrayList = this.f20777K;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((androidx.transition.e) this.f20777K.get(i2)).setInterpolator(timeInterpolator);
            }
        }
        return (F) super.setInterpolator(timeInterpolator);
    }

    @Override // androidx.transition.e
    public F setStartDelay(long j7) {
        return (F) super.setStartDelay(j7);
    }
}
