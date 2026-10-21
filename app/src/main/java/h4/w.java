package h4;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class w extends b {

    /* renamed from: B, reason: collision with root package name */
    public static final ThreadLocal f16587B = new ThreadLocal();

    /* renamed from: C, reason: collision with root package name */
    public static final p f16588C = new p();

    /* renamed from: D, reason: collision with root package name */
    public static final q f16589D = new q();

    /* renamed from: E, reason: collision with root package name */
    public static final r f16590E = new r();

    /* renamed from: F, reason: collision with root package name */
    public static final s f16591F = new s();

    /* renamed from: G, reason: collision with root package name */
    public static final t f16592G = new t();

    /* renamed from: H, reason: collision with root package name */
    public static final AccelerateDecelerateInterpolator f16593H = new AccelerateDecelerateInterpolator();

    /* renamed from: I, reason: collision with root package name */
    public static final long f16594I;

    /* renamed from: A, reason: collision with root package name */
    public HashMap f16595A;

    /* renamed from: e, reason: collision with root package name */
    public long f16596e;

    /* renamed from: q, reason: collision with root package name */
    public long f16602q;

    /* renamed from: z, reason: collision with root package name */
    public n[] f16611z;

    /* renamed from: f, reason: collision with root package name */
    public long f16597f = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16598j = false;

    /* renamed from: m, reason: collision with root package name */
    public int f16599m = 0;

    /* renamed from: n, reason: collision with root package name */
    public float f16600n = 0.0f;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16601p = false;

    /* renamed from: r, reason: collision with root package name */
    public int f16603r = 0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16604s = false;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16605t = false;

    /* renamed from: u, reason: collision with root package name */
    public long f16606u = 300;

    /* renamed from: v, reason: collision with root package name */
    public final long f16607v = 0;

    /* renamed from: w, reason: collision with root package name */
    public final int f16608w = 1;

    /* renamed from: x, reason: collision with root package name */
    public final Interpolator f16609x = f16593H;

    /* renamed from: y, reason: collision with root package name */
    public ArrayList f16610y = null;

    static {
        new f();
        new d();
        f16594I = 10L;
    }

    public static void a(w wVar) {
        ArrayList arrayList;
        wVar.d();
        ((ArrayList) f16588C.get()).add(wVar);
        if (wVar.f16607v <= 0 || (arrayList = wVar.f16559b) == null) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((InterfaceC0986a) arrayList2.get(i2)).onAnimationStart(wVar);
        }
    }

    public static w ofFloat(float... fArr) {
        w wVar = new w();
        wVar.setFloatValues(fArr);
        return wVar;
    }

    public static w ofInt(int... iArr) {
        w wVar = new w();
        wVar.setIntValues(iArr);
        return wVar;
    }

    public void addUpdateListener(v vVar) {
        if (this.f16610y == null) {
            this.f16610y = new ArrayList();
        }
        this.f16610y.add(vVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085 A[LOOP:0: B:24:0x0083->B:25:0x0085, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(long r11) {
        /*
            r10 = this;
            int r0 = r10.f16603r
            r1 = 0
            r3 = 1
            if (r0 != 0) goto L1a
            r10.f16603r = r3
            long r4 = r10.f16597f
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 >= 0) goto L12
            r10.f16596e = r11
            goto L1a
        L12:
            long r4 = r11 - r4
            r10.f16596e = r4
            r4 = -1
            r10.f16597f = r4
        L1a:
            int r0 = r10.f16603r
            r4 = 2
            r5 = 0
            if (r0 == r3) goto L23
            if (r0 == r4) goto L23
            return r5
        L23:
            long r6 = r10.f16606u
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            r1 = 1065353216(0x3f800000, float:1.0)
            if (r0 <= 0) goto L32
            long r8 = r10.f16596e
            long r11 = r11 - r8
            float r11 = (float) r11
            float r12 = (float) r6
            float r11 = r11 / r12
            goto L33
        L32:
            r11 = r1
        L33:
            int r12 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r12 < 0) goto L70
            int r12 = r10.f16599m
            if (r12 < 0) goto L40
            float r11 = java.lang.Math.min(r11, r1)
            goto L71
        L40:
            java.util.ArrayList r12 = r10.f16559b
            if (r12 == 0) goto L59
            int r12 = r12.size()
            r0 = r5
        L49:
            if (r0 >= r12) goto L59
            java.util.ArrayList r2 = r10.f16559b
            java.lang.Object r2 = r2.get(r0)
            h4.a r2 = (h4.InterfaceC0986a) r2
            r2.onAnimationRepeat(r10)
            int r0 = r0 + 1
            goto L49
        L59:
            int r12 = r10.f16608w
            if (r12 != r4) goto L62
            boolean r12 = r10.f16598j
            r12 = r12 ^ r3
            r10.f16598j = r12
        L62:
            int r12 = r10.f16599m
            int r0 = (int) r11
            int r12 = r12 + r0
            r10.f16599m = r12
            float r11 = r11 % r1
            long r2 = r10.f16596e
            long r6 = r10.f16606u
            long r2 = r2 + r6
            r10.f16596e = r2
        L70:
            r3 = r5
        L71:
            boolean r12 = r10.f16598j
            if (r12 == 0) goto L77
            float r11 = r1 - r11
        L77:
            android.view.animation.Interpolator r12 = r10.f16609x
            float r11 = r12.getInterpolation(r11)
            r10.f16600n = r11
            h4.n[] r12 = r10.f16611z
            int r12 = r12.length
            r0 = r5
        L83:
            if (r0 >= r12) goto L8f
            h4.n[] r1 = r10.f16611z
            r1 = r1[r0]
            r1.a(r11)
            int r0 = r0 + 1
            goto L83
        L8f:
            java.util.ArrayList r11 = r10.f16610y
            if (r11 == 0) goto La7
            int r11 = r11.size()
        L97:
            if (r5 >= r11) goto La7
            java.util.ArrayList r12 = r10.f16610y
            java.lang.Object r12 = r12.get(r5)
            h4.v r12 = (h4.v) r12
            r12.onAnimationUpdate(r10)
            int r5 = r5 + 1
            goto L97
        La7:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: h4.w.b(long):boolean");
    }

    public final void c() {
        ArrayList arrayList;
        ((ArrayList) f16588C.get()).remove(this);
        ((ArrayList) f16589D.get()).remove(this);
        ((ArrayList) f16590E.get()).remove(this);
        this.f16603r = 0;
        if (this.f16604s && (arrayList = this.f16559b) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((InterfaceC0986a) arrayList2.get(i2)).onAnimationEnd(this);
            }
        }
        this.f16604s = false;
    }

    @Override // h4.b
    public void cancel() {
        ArrayList arrayList;
        if (this.f16603r != 0 || ((ArrayList) f16589D.get()).contains(this) || ((ArrayList) f16590E.get()).contains(this)) {
            if (this.f16604s && (arrayList = this.f16559b) != null) {
                Iterator it = ((ArrayList) arrayList.clone()).iterator();
                while (it.hasNext()) {
                    ((InterfaceC0986a) it.next()).onAnimationCancel(this);
                }
            }
            c();
        }
    }

    public final void d() {
        if (this.f16605t) {
            return;
        }
        int length = this.f16611z.length;
        for (int i2 = 0; i2 < length; i2++) {
            n nVar = this.f16611z[i2];
            if (nVar.f16586m == null) {
                Class cls = nVar.f16583e;
                nVar.f16586m = cls == Integer.class ? n.f16580n : cls == Float.class ? n.f16581p : null;
            }
            o oVar = nVar.f16586m;
            if (oVar != null) {
                nVar.f16584f.setEvaluator(oVar);
            }
        }
        this.f16605t = true;
    }

    public float getAnimatedFraction() {
        return this.f16600n;
    }

    public Object getAnimatedValue() {
        n[] nVarArr = this.f16611z;
        if (nVarArr == null || nVarArr.length <= 0) {
            return null;
        }
        return nVarArr[0].b();
    }

    public long getCurrentPlayTime() {
        if (!this.f16605t || this.f16603r == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f16596e;
    }

    public void setCurrentPlayTime(long j7) {
        d();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f16603r != 1) {
            this.f16597f = j7;
            this.f16603r = 2;
        }
        this.f16596e = currentAnimationTimeMillis - j7;
        b(currentAnimationTimeMillis);
    }

    public w setDuration(long j7) {
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("Animators cannot have negative duration: ", j7));
        }
        this.f16606u = j7;
        return this;
    }

    public void setFloatValues(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f16611z;
        if (nVarArr == null || nVarArr.length == 0) {
            setValues(n.ofFloat("", fArr));
        } else {
            nVarArr[0].setFloatValues(fArr);
        }
        this.f16605t = false;
    }

    public void setIntValues(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f16611z;
        if (nVarArr == null || nVarArr.length == 0) {
            setValues(n.ofInt("", iArr));
        } else {
            nVarArr[0].setIntValues(iArr);
        }
        this.f16605t = false;
    }

    public void setValues(n... nVarArr) {
        int length = nVarArr.length;
        this.f16611z = nVarArr;
        this.f16595A = new HashMap(length);
        for (n nVar : nVarArr) {
            this.f16595A.put(nVar.getPropertyName(), nVar);
        }
        this.f16605t = false;
    }

    public void start() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.f16598j = false;
        this.f16599m = 0;
        this.f16603r = 0;
        this.f16601p = false;
        ((ArrayList) f16589D.get()).add(this);
        if (this.f16607v == 0) {
            setCurrentPlayTime(getCurrentPlayTime());
            this.f16603r = 0;
            this.f16604s = true;
            ArrayList arrayList = this.f16559b;
            if (arrayList != null) {
                ArrayList arrayList2 = (ArrayList) arrayList.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((InterfaceC0986a) arrayList2.get(i2)).onAnimationStart(this);
                }
            }
        }
        ThreadLocal threadLocal = f16587B;
        u uVar = (u) threadLocal.get();
        if (uVar == null) {
            uVar = new u();
            threadLocal.set(uVar);
        }
        uVar.sendEmptyMessage(0);
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.f16611z != null) {
            for (int i2 = 0; i2 < this.f16611z.length; i2++) {
                StringBuilder s6 = A.i.s(str, "\n    ");
                s6.append(this.f16611z[i2].toString());
                str = s6.toString();
            }
        }
        return str;
    }

    @Override // h4.b
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public w m98clone() {
        w wVar = (w) super.m98clone();
        ArrayList arrayList = this.f16610y;
        if (arrayList != null) {
            wVar.f16610y = new ArrayList();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                wVar.f16610y.add(arrayList.get(i2));
            }
        }
        wVar.f16597f = -1L;
        wVar.f16598j = false;
        wVar.f16599m = 0;
        wVar.f16605t = false;
        wVar.f16603r = 0;
        wVar.f16601p = false;
        n[] nVarArr = this.f16611z;
        if (nVarArr != null) {
            int length = nVarArr.length;
            wVar.f16611z = new n[length];
            wVar.f16595A = new HashMap(length);
            for (int i7 = 0; i7 < length; i7++) {
                n clone = nVarArr[i7].clone();
                wVar.f16611z[i7] = clone;
                wVar.f16595A.put(clone.getPropertyName(), clone);
            }
        }
        return wVar;
    }
}
