package M;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class B {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f1922a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f1923b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1924c = new HashMap();

    public B(Runnable runnable) {
        this.f1922a = runnable;
    }

    public void addMenuProvider(E e3) {
        this.f1923b.add(e3);
        this.f1922a.run();
    }

    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Iterator it = this.f1923b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.W) ((E) it.next())).onCreateMenu(menu, menuInflater);
        }
    }

    public void onMenuClosed(Menu menu) {
        Iterator it = this.f1923b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.W) ((E) it.next())).onMenuClosed(menu);
        }
    }

    public boolean onMenuItemSelected(MenuItem menuItem) {
        Iterator it = this.f1923b.iterator();
        while (it.hasNext()) {
            if (((androidx.fragment.app.W) ((E) it.next())).onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void onPrepareMenu(Menu menu) {
        Iterator it = this.f1923b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.W) ((E) it.next())).onPrepareMenu(menu);
        }
    }

    public void removeMenuProvider(E e3) {
        this.f1923b.remove(e3);
        A a7 = (A) this.f1924c.remove(e3);
        if (a7 != null) {
            a7.f1917a.removeObserver(a7.f1918b);
            a7.f1918b = null;
        }
        this.f1922a.run();
    }

    public void addMenuProvider(final E e3, InterfaceC0561t interfaceC0561t) {
        addMenuProvider(e3);
        AbstractC0557o lifecycle = interfaceC0561t.getLifecycle();
        HashMap hashMap = this.f1924c;
        A a7 = (A) hashMap.remove(e3);
        if (a7 != null) {
            a7.f1917a.removeObserver(a7.f1918b);
            a7.f1918b = null;
        }
        hashMap.put(e3, new A(lifecycle, new androidx.lifecycle.r() { // from class: M.z
            @Override // androidx.lifecycle.r
            public final void onStateChanged(InterfaceC0561t interfaceC0561t2, Lifecycle$Event lifecycle$Event) {
                B b7 = B.this;
                b7.getClass();
                if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    b7.removeMenuProvider(e3);
                }
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(final E e3, InterfaceC0561t interfaceC0561t, final Lifecycle$State lifecycle$State) {
        AbstractC0557o lifecycle = interfaceC0561t.getLifecycle();
        HashMap hashMap = this.f1924c;
        A a7 = (A) hashMap.remove(e3);
        if (a7 != null) {
            a7.f1917a.removeObserver(a7.f1918b);
            a7.f1918b = null;
        }
        hashMap.put(e3, new A(lifecycle, new androidx.lifecycle.r() { // from class: M.y
            @Override // androidx.lifecycle.r
            public final void onStateChanged(InterfaceC0561t interfaceC0561t2, Lifecycle$Event lifecycle$Event) {
                B b7 = B.this;
                b7.getClass();
                Lifecycle$State lifecycle$State2 = lifecycle$State;
                Lifecycle$Event upTo = Lifecycle$Event.upTo(lifecycle$State2);
                E e7 = e3;
                if (lifecycle$Event == upTo) {
                    b7.addMenuProvider(e7);
                    return;
                }
                if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    b7.removeMenuProvider(e7);
                } else if (lifecycle$Event == Lifecycle$Event.downFrom(lifecycle$State2)) {
                    b7.f1923b.remove(e7);
                    b7.f1922a.run();
                }
            }
        }));
    }
}
