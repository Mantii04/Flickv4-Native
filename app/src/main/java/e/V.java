package e;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;

/* loaded from: classes.dex */
public abstract class V {

    /* renamed from: a, reason: collision with root package name */
    public Object f13664a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13665b;

    public V(Context context) {
        this.f13664a = context;
    }

    public void a() {
        U u6 = (U) this.f13664a;
        if (u6 != null) {
            try {
                ((a0) this.f13665b).f13735t.unregisterReceiver(u6);
            } catch (IllegalArgumentException unused) {
            }
            this.f13664a = null;
        }
    }

    public abstract IntentFilter b();

    public MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof F.b)) {
            return menuItem;
        }
        F.b bVar = (F.b) menuItem;
        if (((p.q) this.f13665b) == null) {
            this.f13665b = new p.q();
        }
        MenuItem menuItem2 = (MenuItem) ((p.q) this.f13665b).get(bVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        k.y yVar = new k.y((Context) this.f13664a, bVar);
        ((p.q) this.f13665b).put(bVar, yVar);
        return yVar;
    }

    public void d() {
        a();
        IntentFilter b7 = b();
        if (b7.countActions() == 0) {
            return;
        }
        if (((U) this.f13664a) == null) {
            this.f13664a = new U(this);
        }
        ((a0) this.f13665b).f13735t.registerReceiver((U) this.f13664a, b7);
    }

    public abstract int getApplyableNightMode();

    public abstract void onChange();

    public V(a0 a0Var) {
        this.f13665b = a0Var;
    }
}
