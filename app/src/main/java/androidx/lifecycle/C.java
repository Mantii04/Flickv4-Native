package androidx.lifecycle;

import androidx.fragment.app.C0484w;
import java.util.Map;
import m.C1256a;
import n.C1349d;
import n.C1352g;

/* loaded from: classes.dex */
public abstract class C {

    /* renamed from: k, reason: collision with root package name */
    public static final Object f6939k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f6940a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final C1352g f6941b = new C1352g();

    /* renamed from: c, reason: collision with root package name */
    public int f6942c = 0;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6943d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f6944e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f6945f;

    /* renamed from: g, reason: collision with root package name */
    public int f6946g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6947h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6948i;

    /* renamed from: j, reason: collision with root package name */
    public final RunnableC0567z f6949j;

    public C() {
        Object obj = f6939k;
        this.f6945f = obj;
        this.f6949j = new RunnableC0567z(this);
        this.f6944e = obj;
        this.f6946g = -1;
    }

    public static void a(String str) {
        if (!C1256a.getInstance().isMainThread()) {
            throw new IllegalStateException(A.i.l("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(B b7) {
        if (b7.f6936e) {
            if (!b7.c()) {
                b7.a(false);
                return;
            }
            int i2 = b7.f6937f;
            int i7 = this.f6946g;
            if (i2 >= i7) {
                return;
            }
            b7.f6937f = i7;
            ((C0484w) b7.f6935b).onChanged(this.f6944e);
        }
    }

    public final void c(B b7) {
        if (this.f6947h) {
            this.f6948i = true;
            return;
        }
        this.f6947h = true;
        do {
            this.f6948i = false;
            if (b7 != null) {
                b(b7);
                b7 = null;
            } else {
                C1349d iteratorWithAdditions = this.f6941b.iteratorWithAdditions();
                while (iteratorWithAdditions.hasNext()) {
                    b((B) ((Map.Entry) iteratorWithAdditions.next()).getValue());
                    if (this.f6948i) {
                        break;
                    }
                }
            }
        } while (this.f6948i);
        this.f6947h = false;
    }

    public void observeForever(F f3) {
        a("observeForever");
        A a7 = new A(this, f3);
        B b7 = (B) this.f6941b.putIfAbsent(f3, a7);
        if (b7 instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (b7 != null) {
            return;
        }
        a7.a(true);
    }

    public void onActive() {
    }

    public void onInactive() {
    }

    public void postValue(Object obj) {
        boolean z6;
        synchronized (this.f6940a) {
            z6 = this.f6945f == f6939k;
            this.f6945f = obj;
        }
        if (z6) {
            C1256a.getInstance().postToMainThread(this.f6949j);
        }
    }

    public void removeObserver(F f3) {
        a("removeObserver");
        B b7 = (B) this.f6941b.remove(f3);
        if (b7 == null) {
            return;
        }
        b7.b();
        b7.a(false);
    }

    public void setValue(Object obj) {
        a("setValue");
        this.f6946g++;
        this.f6944e = obj;
        c(null);
    }
}
