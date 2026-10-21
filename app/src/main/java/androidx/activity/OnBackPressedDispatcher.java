package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import u5.C1711j;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f4843a;

    /* renamed from: b, reason: collision with root package name */
    public final L.a f4844b;

    /* renamed from: c, reason: collision with root package name */
    public final v5.k f4845c;

    /* renamed from: d, reason: collision with root package name */
    public s f4846d;

    /* renamed from: e, reason: collision with root package name */
    public final OnBackInvokedCallback f4847e;

    /* renamed from: f, reason: collision with root package name */
    public OnBackInvokedDispatcher f4848f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4849g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4850h;

    final class LifecycleOnBackPressedCancellable implements androidx.lifecycle.r, d {

        /* renamed from: b, reason: collision with root package name */
        public final AbstractC0557o f4856b;

        /* renamed from: e, reason: collision with root package name */
        public final s f4857e;

        /* renamed from: f, reason: collision with root package name */
        public d f4858f;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ OnBackPressedDispatcher f4859j;

        public LifecycleOnBackPressedCancellable(OnBackPressedDispatcher onBackPressedDispatcher, AbstractC0557o lifecycle, s onBackPressedCallback) {
            kotlin.jvm.internal.j.checkNotNullParameter(lifecycle, "lifecycle");
            kotlin.jvm.internal.j.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
            this.f4859j = onBackPressedDispatcher;
            this.f4856b = lifecycle;
            this.f4857e = onBackPressedCallback;
            lifecycle.addObserver(this);
        }

        @Override // androidx.activity.d
        public void cancel() {
            this.f4856b.removeObserver(this);
            this.f4857e.removeCancellable(this);
            d dVar = this.f4858f;
            if (dVar != null) {
                dVar.cancel();
            }
            this.f4858f = null;
        }

        @Override // androidx.lifecycle.r
        public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
            kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
            kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
            if (event == Lifecycle$Event.ON_START) {
                this.f4858f = this.f4859j.addCancellableCallback$activity_release(this.f4857e);
                return;
            }
            if (event != Lifecycle$Event.ON_STOP) {
                if (event == Lifecycle$Event.ON_DESTROY) {
                    cancel();
                }
            } else {
                d dVar = this.f4858f;
                if (dVar != null) {
                    dVar.cancel();
                }
            }
        }
    }

    public OnBackPressedDispatcher(Runnable runnable, L.a aVar) {
        this.f4843a = runnable;
        this.f4844b = aVar;
        this.f4845c = new v5.k();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            this.f4847e = i2 >= 34 ? w.f4931a.createOnBackAnimationCallback(new H5.l() { // from class: androidx.activity.OnBackPressedDispatcher.1
                {
                    super(1);
                }

                @Override // H5.l
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((c) obj);
                    return C1711j.f20329a;
                }

                public final void invoke(c backEvent) {
                    kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
                    OnBackPressedDispatcher.access$onBackStarted(OnBackPressedDispatcher.this, backEvent);
                }
            }, new H5.l() { // from class: androidx.activity.OnBackPressedDispatcher.2
                {
                    super(1);
                }

                @Override // H5.l
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((c) obj);
                    return C1711j.f20329a;
                }

                public final void invoke(c backEvent) {
                    kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
                    OnBackPressedDispatcher.access$onBackProgressed(OnBackPressedDispatcher.this, backEvent);
                }
            }, new H5.a() { // from class: androidx.activity.OnBackPressedDispatcher.3
                {
                    super(0);
                }

                @Override // H5.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m50invoke();
                    return C1711j.f20329a;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m50invoke() {
                    OnBackPressedDispatcher.this.onBackPressed();
                }
            }, new H5.a() { // from class: androidx.activity.OnBackPressedDispatcher.4
                {
                    super(0);
                }

                @Override // H5.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m51invoke();
                    return C1711j.f20329a;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m51invoke() {
                    OnBackPressedDispatcher.access$onBackCancelled(OnBackPressedDispatcher.this);
                }
            }) : u.f4926a.createOnBackInvokedCallback(new H5.a() { // from class: androidx.activity.OnBackPressedDispatcher.5
                {
                    super(0);
                }

                @Override // H5.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m52invoke();
                    return C1711j.f20329a;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m52invoke() {
                    OnBackPressedDispatcher.this.onBackPressed();
                }
            });
        }
    }

    public static final void access$onBackCancelled(OnBackPressedDispatcher onBackPressedDispatcher) {
        Object obj;
        v5.k kVar = onBackPressedDispatcher.f4845c;
        ListIterator listIterator = kVar.listIterator(kVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((s) obj).isEnabled()) {
                    break;
                }
            }
        }
        s sVar = (s) obj;
        onBackPressedDispatcher.f4846d = null;
        if (sVar != null) {
            sVar.handleOnBackCancelled();
        }
    }

    public static final void access$onBackProgressed(OnBackPressedDispatcher onBackPressedDispatcher, c cVar) {
        Object obj;
        v5.k kVar = onBackPressedDispatcher.f4845c;
        ListIterator listIterator = kVar.listIterator(kVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((s) obj).isEnabled()) {
                    break;
                }
            }
        }
        s sVar = (s) obj;
        if (sVar != null) {
            sVar.handleOnBackProgressed(cVar);
        }
    }

    public static final void access$onBackStarted(OnBackPressedDispatcher onBackPressedDispatcher, c cVar) {
        Object obj;
        v5.k kVar = onBackPressedDispatcher.f4845c;
        ListIterator listIterator = kVar.listIterator(kVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((s) obj).isEnabled()) {
                    break;
                }
            }
        }
        s sVar = (s) obj;
        onBackPressedDispatcher.f4846d = sVar;
        if (sVar != null) {
            sVar.handleOnBackStarted(cVar);
        }
    }

    public final void a(boolean z6) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f4848f;
        OnBackInvokedCallback onBackInvokedCallback = this.f4847e;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        u uVar = u.f4926a;
        if (z6 && !this.f4849g) {
            uVar.registerOnBackInvokedCallback(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f4849g = true;
        } else {
            if (z6 || !this.f4849g) {
                return;
            }
            uVar.unregisterOnBackInvokedCallback(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f4849g = false;
        }
    }

    public final void addCallback(InterfaceC0561t owner, s onBackPressedCallback) {
        kotlin.jvm.internal.j.checkNotNullParameter(owner, "owner");
        kotlin.jvm.internal.j.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        AbstractC0557o lifecycle = owner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle$State.f6967b) {
            return;
        }
        onBackPressedCallback.addCancellable(new LifecycleOnBackPressedCancellable(this, lifecycle, onBackPressedCallback));
        b();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCallback$1(0, this, OnBackPressedDispatcher.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0));
    }

    public final d addCancellableCallback$activity_release(s onBackPressedCallback) {
        kotlin.jvm.internal.j.checkNotNullParameter(onBackPressedCallback, "onBackPressedCallback");
        this.f4845c.add(onBackPressedCallback);
        x xVar = new x(this, onBackPressedCallback);
        onBackPressedCallback.addCancellable(xVar);
        b();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCancellableCallback$1(0, this, OnBackPressedDispatcher.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0));
        return xVar;
    }

    public final void b() {
        boolean z6 = this.f4850h;
        v5.k kVar = this.f4845c;
        boolean z7 = false;
        if (!(kVar instanceof Collection) || !kVar.isEmpty()) {
            Iterator<E> it = kVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((s) it.next()).isEnabled()) {
                    z7 = true;
                    break;
                }
            }
        }
        this.f4850h = z7;
        if (z7 != z6) {
            L.a aVar = this.f4844b;
            if (aVar != null) {
                aVar.accept(Boolean.valueOf(z7));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                a(z7);
            }
        }
    }

    public final void onBackPressed() {
        Object obj;
        v5.k kVar = this.f4845c;
        ListIterator<E> listIterator = kVar.listIterator(kVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((s) obj).isEnabled()) {
                    break;
                }
            }
        }
        s sVar = (s) obj;
        this.f4846d = null;
        if (sVar != null) {
            sVar.handleOnBackPressed();
            return;
        }
        Runnable runnable = this.f4843a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void setOnBackInvokedDispatcher(OnBackInvokedDispatcher invoker) {
        kotlin.jvm.internal.j.checkNotNullParameter(invoker, "invoker");
        this.f4848f = invoker;
        a(this.f4850h);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this(runnable, null);
    }
}
