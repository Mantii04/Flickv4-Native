package androidx.transition;

import M.AbstractC0181p0;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.fragment.app.t0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p.n;
import x1.AbstractC1814p;
import x1.AbstractC1818u;
import x1.C;
import x1.C1815q;
import x1.C1816s;
import x1.C1817t;
import x1.F;
import x1.I;
import x1.InterfaceC1820w;
import x1.InterfaceC1821x;
import x1.r;

/* loaded from: classes.dex */
public abstract class e implements Cloneable {

    /* renamed from: G, reason: collision with root package name */
    public static final Animator[] f8212G = new Animator[0];

    /* renamed from: H, reason: collision with root package name */
    public static final int[] f8213H = {2, 1, 3, 4};

    /* renamed from: I, reason: collision with root package name */
    public static final C1815q f8214I = new C1815q();

    /* renamed from: J, reason: collision with root package name */
    public static final ThreadLocal f8215J = new ThreadLocal();

    /* renamed from: E, reason: collision with root package name */
    public AbstractC1818u f8220E;

    /* renamed from: t, reason: collision with root package name */
    public ArrayList f8232t;

    /* renamed from: u, reason: collision with root package name */
    public ArrayList f8233u;

    /* renamed from: v, reason: collision with root package name */
    public InterfaceC1820w[] f8234v;

    /* renamed from: b, reason: collision with root package name */
    public final String f8222b = getClass().getName();

    /* renamed from: e, reason: collision with root package name */
    public long f8223e = -1;

    /* renamed from: f, reason: collision with root package name */
    public long f8224f = -1;

    /* renamed from: j, reason: collision with root package name */
    public TimeInterpolator f8225j = null;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f8226m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f8227n = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public t0 f8228p = new t0(1);

    /* renamed from: q, reason: collision with root package name */
    public t0 f8229q = new t0(1);

    /* renamed from: r, reason: collision with root package name */
    public F f8230r = null;

    /* renamed from: s, reason: collision with root package name */
    public final int[] f8231s = f8213H;

    /* renamed from: w, reason: collision with root package name */
    public final ArrayList f8235w = new ArrayList();

    /* renamed from: x, reason: collision with root package name */
    public Animator[] f8236x = f8212G;

    /* renamed from: y, reason: collision with root package name */
    public int f8237y = 0;

    /* renamed from: z, reason: collision with root package name */
    public boolean f8238z = false;

    /* renamed from: A, reason: collision with root package name */
    public boolean f8216A = false;

    /* renamed from: B, reason: collision with root package name */
    public e f8217B = null;

    /* renamed from: C, reason: collision with root package name */
    public ArrayList f8218C = null;

    /* renamed from: D, reason: collision with root package name */
    public ArrayList f8219D = new ArrayList();

    /* renamed from: F, reason: collision with root package name */
    public AbstractC1814p f8221F = f8214I;

    public static void a(t0 t0Var, View view, I i2) {
        ((p.g) t0Var.f6318a).put(view, i2);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = (SparseArray) t0Var.f6319b;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        String transitionName = AbstractC0181p0.getTransitionName(view);
        if (transitionName != null) {
            p.g gVar = (p.g) t0Var.f6321d;
            if (gVar.containsKey(transitionName)) {
                gVar.put(transitionName, null);
            } else {
                gVar.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                n nVar = (n) t0Var.f6320c;
                if (nVar.indexOfKey(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    nVar.put(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) nVar.get(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    nVar.put(itemIdAtPosition, null);
                }
            }
        }
    }

    public static p.g h() {
        ThreadLocal threadLocal = f8215J;
        p.g gVar = (p.g) threadLocal.get();
        if (gVar != null) {
            return gVar;
        }
        p.g gVar2 = new p.g();
        threadLocal.set(gVar2);
        return gVar2;
    }

    public static boolean j(I i2, I i7, String str) {
        Object obj = i2.f20783a.get(str);
        Object obj2 = i7.f20783a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public e addListener(InterfaceC1820w interfaceC1820w) {
        if (this.f8218C == null) {
            this.f8218C = new ArrayList();
        }
        this.f8218C.add(interfaceC1820w);
        return this;
    }

    public e addTarget(View view) {
        this.f8227n.add(view);
        return this;
    }

    public void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(animator.getStartDelay() + getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new C1816s(this));
        animator.start();
    }

    public final void b(View view, boolean z6) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            I i2 = new I(view);
            if (z6) {
                captureStartValues(i2);
            } else {
                captureEndValues(i2);
            }
            i2.f20785c.add(this);
            c(i2);
            if (z6) {
                a(this.f8228p, view, i2);
            } else {
                a(this.f8229q, view, i2);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i7 = 0; i7 < viewGroup.getChildCount(); i7++) {
                b(viewGroup.getChildAt(i7), z6);
            }
        }
    }

    public void cancel() {
        ArrayList arrayList = this.f8235w;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f8236x);
        this.f8236x = f8212G;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animator = animatorArr[i2];
            animatorArr[i2] = null;
            animator.cancel();
        }
        this.f8236x = animatorArr;
        k(this, InterfaceC1821x.f20837k);
    }

    public abstract void captureEndValues(I i2);

    public abstract void captureStartValues(I i2);

    public Animator createAnimator(ViewGroup viewGroup, I i2, I i7) {
        return null;
    }

    public final void d(ViewGroup viewGroup, boolean z6) {
        e(z6);
        ArrayList arrayList = this.f8226m;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f8227n;
        if (size <= 0 && arrayList2.size() <= 0) {
            b(viewGroup, z6);
            return;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            View findViewById = viewGroup.findViewById(((Integer) arrayList.get(i2)).intValue());
            if (findViewById != null) {
                I i7 = new I(findViewById);
                if (z6) {
                    captureStartValues(i7);
                } else {
                    captureEndValues(i7);
                }
                i7.f20785c.add(this);
                c(i7);
                if (z6) {
                    a(this.f8228p, findViewById, i7);
                } else {
                    a(this.f8229q, findViewById, i7);
                }
            }
        }
        for (int i8 = 0; i8 < arrayList2.size(); i8++) {
            View view = (View) arrayList2.get(i8);
            I i9 = new I(view);
            if (z6) {
                captureStartValues(i9);
            } else {
                captureEndValues(i9);
            }
            i9.f20785c.add(this);
            c(i9);
            if (z6) {
                a(this.f8228p, view, i9);
            } else {
                a(this.f8229q, view, i9);
            }
        }
    }

    public final void e(boolean z6) {
        if (z6) {
            ((p.g) this.f8228p.f6318a).clear();
            ((SparseArray) this.f8228p.f6319b).clear();
            ((n) this.f8228p.f6320c).clear();
        } else {
            ((p.g) this.f8229q.f6318a).clear();
            ((SparseArray) this.f8229q.f6319b).clear();
            ((n) this.f8229q.f6320c).clear();
        }
    }

    public void end() {
        int i2 = this.f8237y - 1;
        this.f8237y = i2;
        if (i2 == 0) {
            k(this, InterfaceC1821x.f20836i);
            for (int i7 = 0; i7 < ((n) this.f8228p.f6320c).size(); i7++) {
                View view = (View) ((n) this.f8228p.f6320c).valueAt(i7);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i8 = 0; i8 < ((n) this.f8229q.f6320c).size(); i8++) {
                View view2 = (View) ((n) this.f8229q.f6320c).valueAt(i8);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.f8216A = true;
        }
    }

    public void f(ViewGroup viewGroup, t0 t0Var, t0 t0Var2, ArrayList arrayList, ArrayList arrayList2) {
        int i2;
        View view;
        I i7;
        Animator animator;
        I i8;
        p.g h7 = h();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        getRootTransition().getClass();
        int i9 = 0;
        while (i9 < size) {
            I i10 = (I) arrayList.get(i9);
            I i11 = (I) arrayList2.get(i9);
            if (i10 != null && !i10.f20785c.contains(this)) {
                i10 = null;
            }
            if (i11 != null && !i11.f20785c.contains(this)) {
                i11 = null;
            }
            if ((i10 != null || i11 != null) && (i10 == null || i11 == null || isTransitionRequired(i10, i11))) {
                Animator createAnimator = createAnimator(viewGroup, i10, i11);
                if (createAnimator != null) {
                    if (i11 != null) {
                        String[] transitionProperties = getTransitionProperties();
                        view = i11.f20784b;
                        if (transitionProperties != null && transitionProperties.length > 0) {
                            i8 = new I(view);
                            I i12 = (I) ((p.g) t0Var2.f6318a).get(view);
                            if (i12 != null) {
                                int i13 = 0;
                                while (i13 < transitionProperties.length) {
                                    HashMap hashMap = i8.f20783a;
                                    int i14 = size;
                                    String str = transitionProperties[i13];
                                    hashMap.put(str, i12.f20783a.get(str));
                                    i13++;
                                    size = i14;
                                }
                            }
                            i2 = size;
                            int size2 = h7.size();
                            int i15 = 0;
                            while (true) {
                                if (i15 >= size2) {
                                    animator = createAnimator;
                                    break;
                                }
                                C1817t c1817t = (C1817t) h7.get((Animator) h7.keyAt(i15));
                                if (c1817t.f20831c != null && c1817t.f20829a == view && c1817t.f20830b.equals(getName()) && c1817t.f20831c.equals(i8)) {
                                    animator = null;
                                    break;
                                }
                                i15++;
                            }
                        } else {
                            i2 = size;
                            animator = createAnimator;
                            i8 = null;
                        }
                        createAnimator = animator;
                        i7 = i8;
                    } else {
                        i2 = size;
                        view = i10.f20784b;
                        i7 = null;
                    }
                    if (createAnimator != null) {
                        String name = getName();
                        WindowId windowId = viewGroup.getWindowId();
                        C1817t c1817t2 = new C1817t();
                        c1817t2.f20829a = view;
                        c1817t2.f20830b = name;
                        c1817t2.f20831c = i7;
                        c1817t2.f20832d = windowId;
                        c1817t2.f20833e = this;
                        c1817t2.f20834f = createAnimator;
                        h7.put(createAnimator, c1817t2);
                        this.f8219D.add(createAnimator);
                    }
                    i9++;
                    size = i2;
                }
            }
            i2 = size;
            i9++;
            size = i2;
        }
        if (sparseIntArray.size() != 0) {
            for (int i16 = 0; i16 < sparseIntArray.size(); i16++) {
                C1817t c1817t3 = (C1817t) h7.get((Animator) this.f8219D.get(sparseIntArray.keyAt(i16)));
                c1817t3.f20834f.setStartDelay(c1817t3.f20834f.getStartDelay() + (sparseIntArray.valueAt(i16) - Long.MAX_VALUE));
            }
        }
    }

    public final I g(View view, boolean z6) {
        F f3 = this.f8230r;
        if (f3 != null) {
            return f3.g(view, z6);
        }
        ArrayList arrayList = z6 ? this.f8232t : this.f8233u;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            }
            I i7 = (I) arrayList.get(i2);
            if (i7 == null) {
                return null;
            }
            if (i7.f20784b == view) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return (I) (z6 ? this.f8233u : this.f8232t).get(i2);
        }
        return null;
    }

    public long getDuration() {
        return this.f8224f;
    }

    public AbstractC1818u getEpicenterCallback() {
        return this.f8220E;
    }

    public TimeInterpolator getInterpolator() {
        return this.f8225j;
    }

    public String getName() {
        return this.f8222b;
    }

    public AbstractC1814p getPathMotion() {
        return this.f8221F;
    }

    public C getPropagation() {
        return null;
    }

    public final e getRootTransition() {
        F f3 = this.f8230r;
        return f3 != null ? f3.getRootTransition() : this;
    }

    public long getStartDelay() {
        return this.f8223e;
    }

    public List<Integer> getTargetIds() {
        return this.f8226m;
    }

    public List<String> getTargetNames() {
        return null;
    }

    public List<Class<?>> getTargetTypes() {
        return null;
    }

    public List<View> getTargets() {
        return this.f8227n;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public I getTransitionValues(View view, boolean z6) {
        F f3 = this.f8230r;
        if (f3 != null) {
            return f3.getTransitionValues(view, z6);
        }
        return (I) ((p.g) (z6 ? this.f8228p : this.f8229q).f6318a).get(view);
    }

    public final boolean i(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f8226m;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f8227n;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    public boolean isTransitionRequired(I i2, I i7) {
        if (i2 != null && i7 != null) {
            String[] transitionProperties = getTransitionProperties();
            if (transitionProperties != null) {
                for (String str : transitionProperties) {
                    if (j(i2, i7, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = i2.f20783a.keySet().iterator();
                while (it.hasNext()) {
                    if (j(i2, i7, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void k(e eVar, InterfaceC1821x interfaceC1821x) {
        e eVar2 = this.f8217B;
        if (eVar2 != null) {
            eVar2.k(eVar, interfaceC1821x);
        }
        ArrayList arrayList = this.f8218C;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.f8218C.size();
        InterfaceC1820w[] interfaceC1820wArr = this.f8234v;
        if (interfaceC1820wArr == null) {
            interfaceC1820wArr = new InterfaceC1820w[size];
        }
        this.f8234v = null;
        InterfaceC1820w[] interfaceC1820wArr2 = (InterfaceC1820w[]) this.f8218C.toArray(interfaceC1820wArr);
        for (int i2 = 0; i2 < size; i2++) {
            interfaceC1821x.notifyListener(interfaceC1820wArr2[i2], eVar, false);
            interfaceC1820wArr2[i2] = null;
        }
        this.f8234v = interfaceC1820wArr2;
    }

    public String l(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.f8224f != -1) {
            sb.append("dur(");
            sb.append(this.f8224f);
            sb.append(") ");
        }
        if (this.f8223e != -1) {
            sb.append("dly(");
            sb.append(this.f8223e);
            sb.append(") ");
        }
        if (this.f8225j != null) {
            sb.append("interp(");
            sb.append(this.f8225j);
            sb.append(") ");
        }
        ArrayList arrayList = this.f8226m;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f8227n;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i2));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i7 = 0; i7 < arrayList2.size(); i7++) {
                    if (i7 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i7));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void pause(View view) {
        if (this.f8216A) {
            return;
        }
        ArrayList arrayList = this.f8235w;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f8236x);
        this.f8236x = f8212G;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animator = animatorArr[i2];
            animatorArr[i2] = null;
            animator.pause();
        }
        this.f8236x = animatorArr;
        k(this, InterfaceC1821x.f20838l);
        this.f8238z = true;
    }

    public e removeListener(InterfaceC1820w interfaceC1820w) {
        e eVar;
        ArrayList arrayList = this.f8218C;
        if (arrayList != null) {
            if (!arrayList.remove(interfaceC1820w) && (eVar = this.f8217B) != null) {
                eVar.removeListener(interfaceC1820w);
            }
            if (this.f8218C.size() == 0) {
                this.f8218C = null;
            }
        }
        return this;
    }

    public e removeTarget(View view) {
        this.f8227n.remove(view);
        return this;
    }

    public void resume(View view) {
        if (this.f8238z) {
            if (!this.f8216A) {
                ArrayList arrayList = this.f8235w;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f8236x);
                this.f8236x = f8212G;
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    Animator animator = animatorArr[i2];
                    animatorArr[i2] = null;
                    animator.resume();
                }
                this.f8236x = animatorArr;
                k(this, InterfaceC1821x.f20839o);
            }
            this.f8238z = false;
        }
    }

    public void runAnimators() {
        start();
        p.g h7 = h();
        Iterator it = this.f8219D.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (h7.containsKey(animator)) {
                start();
                if (animator != null) {
                    animator.addListener(new r(this, h7));
                    animate(animator);
                }
            }
        }
        this.f8219D.clear();
        end();
    }

    public e setDuration(long j7) {
        this.f8224f = j7;
        return this;
    }

    public void setEpicenterCallback(AbstractC1818u abstractC1818u) {
        this.f8220E = abstractC1818u;
    }

    public e setInterpolator(TimeInterpolator timeInterpolator) {
        this.f8225j = timeInterpolator;
        return this;
    }

    public void setPathMotion(AbstractC1814p abstractC1814p) {
        if (abstractC1814p == null) {
            this.f8221F = f8214I;
        } else {
            this.f8221F = abstractC1814p;
        }
    }

    public e setStartDelay(long j7) {
        this.f8223e = j7;
        return this;
    }

    public void start() {
        if (this.f8237y == 0) {
            k(this, InterfaceC1821x.f20835h);
            this.f8216A = false;
        }
        this.f8237y++;
    }

    public String toString() {
        return l("");
    }

    @Override // 
    /* renamed from: clone */
    public e mo63clone() {
        try {
            e eVar = (e) super.clone();
            eVar.f8219D = new ArrayList();
            eVar.f8228p = new t0(1);
            eVar.f8229q = new t0(1);
            eVar.f8232t = null;
            eVar.f8233u = null;
            eVar.f8217B = this;
            eVar.f8218C = null;
            return eVar;
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }

    public void c(I i2) {
    }

    public void setPropagation(C c7) {
    }
}
