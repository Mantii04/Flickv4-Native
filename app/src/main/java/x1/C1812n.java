package x1;

import C4.C0082f;
import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.E0;
import java.util.ArrayList;
import java.util.List;

/* renamed from: x1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1812n extends E0 {
    public static boolean a(androidx.transition.e eVar) {
        return (E0.isNullOrEmpty(eVar.getTargetIds()) && E0.isNullOrEmpty(eVar.getTargetNames()) && E0.isNullOrEmpty(eVar.getTargetTypes())) ? false : true;
    }

    @Override // androidx.fragment.app.E0
    public void addTarget(Object obj, View view) {
        if (obj != null) {
            ((androidx.transition.e) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.E0
    public void addTargets(Object obj, ArrayList<View> arrayList) {
        androidx.transition.e eVar = (androidx.transition.e) obj;
        if (eVar == null) {
            return;
        }
        int i2 = 0;
        if (eVar instanceof F) {
            F f3 = (F) eVar;
            int transitionCount = f3.getTransitionCount();
            while (i2 < transitionCount) {
                addTargets(f3.getTransitionAt(i2), arrayList);
                i2++;
            }
            return;
        }
        if (a(eVar) || !E0.isNullOrEmpty(eVar.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i2 < size) {
            eVar.addTarget(arrayList.get(i2));
            i2++;
        }
    }

    @Override // androidx.fragment.app.E0
    public void beginDelayedTransition(ViewGroup viewGroup, Object obj) {
        AbstractC1798B.beginDelayedTransition(viewGroup, (androidx.transition.e) obj);
    }

    @Override // androidx.fragment.app.E0
    public boolean canHandle(Object obj) {
        return obj instanceof androidx.transition.e;
    }

    @Override // androidx.fragment.app.E0
    public Object cloneTransition(Object obj) {
        if (obj != null) {
            return ((androidx.transition.e) obj).mo63clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.E0
    public Object mergeTransitionsInSequence(Object obj, Object obj2, Object obj3) {
        androidx.transition.e eVar = (androidx.transition.e) obj;
        androidx.transition.e eVar2 = (androidx.transition.e) obj2;
        androidx.transition.e eVar3 = (androidx.transition.e) obj3;
        if (eVar != null && eVar2 != null) {
            eVar = new F().addTransition(eVar).addTransition(eVar2).setOrdering(1);
        } else if (eVar == null) {
            eVar = eVar2 != null ? eVar2 : null;
        }
        if (eVar3 == null) {
            return eVar;
        }
        F f3 = new F();
        if (eVar != null) {
            f3.addTransition(eVar);
        }
        f3.addTransition(eVar3);
        return f3;
    }

    @Override // androidx.fragment.app.E0
    public Object mergeTransitionsTogether(Object obj, Object obj2, Object obj3) {
        F f3 = new F();
        if (obj != null) {
            f3.addTransition((androidx.transition.e) obj);
        }
        if (obj2 != null) {
            f3.addTransition((androidx.transition.e) obj2);
        }
        if (obj3 != null) {
            f3.addTransition((androidx.transition.e) obj3);
        }
        return f3;
    }

    public void replaceTargets(Object obj, @SuppressLint({"UnknownNullness"}) ArrayList<View> arrayList, @SuppressLint({"UnknownNullness"}) ArrayList<View> arrayList2) {
        androidx.transition.e eVar = (androidx.transition.e) obj;
        int i2 = 0;
        if (eVar instanceof F) {
            F f3 = (F) eVar;
            int transitionCount = f3.getTransitionCount();
            while (i2 < transitionCount) {
                replaceTargets(f3.getTransitionAt(i2), arrayList, arrayList2);
                i2++;
            }
            return;
        }
        if (a(eVar)) {
            return;
        }
        List<View> targets = eVar.getTargets();
        if (targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i2 < size) {
                eVar.addTarget(arrayList2.get(i2));
                i2++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                eVar.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.E0
    public void scheduleHideFragmentView(Object obj, View view, ArrayList<View> arrayList) {
        ((androidx.transition.e) obj).addListener(new C1809k(view, arrayList));
    }

    @Override // androidx.fragment.app.E0
    public void scheduleRemoveTargets(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((androidx.transition.e) obj).addListener(new C1810l(this, obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.E0
    public void setEpicenter(Object obj, View view) {
        if (view != null) {
            getBoundsOnScreen(view, new Rect());
            ((androidx.transition.e) obj).setEpicenterCallback(new C1808j());
        }
    }

    @Override // androidx.fragment.app.E0
    public void setListenerForTransitionEnd(androidx.fragment.app.C c7, Object obj, I.f fVar, Runnable runnable) {
        setListenerForTransitionEnd(c7, obj, fVar, null, runnable);
    }

    @Override // androidx.fragment.app.E0
    public void setSharedElementTargets(Object obj, View view, ArrayList<View> arrayList) {
        F f3 = (F) obj;
        List<View> targets = f3.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            E0.bfsAddViewChildren(targets, arrayList.get(i2));
        }
        targets.add(view);
        arrayList.add(view);
        addTargets(f3, arrayList);
    }

    @Override // androidx.fragment.app.E0
    public void swapSharedElementTargets(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        F f3 = (F) obj;
        if (f3 != null) {
            f3.getTargets().clear();
            f3.getTargets().addAll(arrayList2);
            replaceTargets(f3, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.E0
    public Object wrapTransitionInSet(Object obj) {
        if (obj == null) {
            return null;
        }
        F f3 = new F();
        f3.addTransition((androidx.transition.e) obj);
        return f3;
    }

    public void setListenerForTransitionEnd(androidx.fragment.app.C c7, Object obj, I.f fVar, Runnable runnable, Runnable runnable2) {
        androidx.transition.e eVar = (androidx.transition.e) obj;
        fVar.setOnCancelListener(new C0082f(runnable, eVar, runnable2, 13));
        eVar.addListener(new C1811m(runnable2));
    }

    @Override // androidx.fragment.app.E0
    public void setEpicenter(Object obj, Rect rect) {
        if (obj != null) {
            ((androidx.transition.e) obj).setEpicenterCallback(new C1808j());
        }
    }
}
