package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.C0564w;
import androidx.lifecycle.InterfaceC0552j;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.SavedStateHandleSupport;

/* loaded from: classes.dex */
public final class F0 implements InterfaceC0552j, q1.j, androidx.lifecycle.j0 {

    /* renamed from: b, reason: collision with root package name */
    public final C f6109b;

    /* renamed from: e, reason: collision with root package name */
    public final androidx.lifecycle.i0 f6110e;

    /* renamed from: f, reason: collision with root package name */
    public C0564w f6111f = null;

    /* renamed from: j, reason: collision with root package name */
    public q1.i f6112j = null;

    public F0(C c7, androidx.lifecycle.i0 i0Var) {
        this.f6109b = c7;
        this.f6110e = i0Var;
    }

    public final void a(Lifecycle$Event lifecycle$Event) {
        this.f6111f.handleLifecycleEvent(lifecycle$Event);
    }

    public final void b() {
        if (this.f6111f == null) {
            this.f6111f = new C0564w(this);
            q1.i create = q1.i.create(this);
            this.f6112j = create;
            create.performAttach();
        }
    }

    @Override // androidx.lifecycle.InterfaceC0552j
    public m0.c getDefaultViewModelCreationExtras() {
        Application application;
        C c7 = this.f6109b;
        Context applicationContext = c7.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        m0.f fVar = new m0.f();
        if (application != null) {
            fVar.set(androidx.lifecycle.a0.f7024g, application);
        }
        fVar.set(SavedStateHandleSupport.f6994a, c7);
        fVar.set(SavedStateHandleSupport.f6995b, this);
        if (c7.getArguments() != null) {
            fVar.set(SavedStateHandleSupport.f6996c, c7.getArguments());
        }
        return fVar;
    }

    @Override // androidx.lifecycle.InterfaceC0561t
    public AbstractC0557o getLifecycle() {
        b();
        return this.f6111f;
    }

    @Override // q1.j
    public q1.g getSavedStateRegistry() {
        b();
        return this.f6112j.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.j0
    public androidx.lifecycle.i0 getViewModelStore() {
        b();
        return this.f6110e;
    }
}
