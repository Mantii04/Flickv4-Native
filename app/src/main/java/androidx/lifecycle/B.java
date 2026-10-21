package androidx.lifecycle;

/* loaded from: classes.dex */
public abstract class B {

    /* renamed from: b, reason: collision with root package name */
    public final F f6935b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6936e;

    /* renamed from: f, reason: collision with root package name */
    public int f6937f = -1;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C f6938j;

    public B(C c7, F f3) {
        this.f6938j = c7;
        this.f6935b = f3;
    }

    public final void a(boolean z6) {
        if (z6 == this.f6936e) {
            return;
        }
        this.f6936e = z6;
        int i2 = z6 ? 1 : -1;
        C c7 = this.f6938j;
        int i7 = c7.f6942c;
        c7.f6942c = i2 + i7;
        if (!c7.f6943d) {
            c7.f6943d = true;
            while (true) {
                try {
                    int i8 = c7.f6942c;
                    if (i7 == i8) {
                        break;
                    }
                    boolean z7 = i7 == 0 && i8 > 0;
                    boolean z8 = i7 > 0 && i8 == 0;
                    if (z7) {
                        c7.onActive();
                    } else if (z8) {
                        c7.onInactive();
                    }
                    i7 = i8;
                } catch (Throwable th) {
                    c7.f6943d = false;
                    throw th;
                }
            }
            c7.f6943d = false;
        }
        if (this.f6936e) {
            c7.c(this);
        }
    }

    public void b() {
    }

    public abstract boolean c();
}
