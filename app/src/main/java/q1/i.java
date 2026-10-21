package q1;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.Lifecycle$State;
import androidx.savedstate.Recreator;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: d, reason: collision with root package name */
    public static final h f19558d = new h(null);

    /* renamed from: a, reason: collision with root package name */
    public final j f19559a;

    /* renamed from: b, reason: collision with root package name */
    public final g f19560b = new g();

    /* renamed from: c, reason: collision with root package name */
    public boolean f19561c;

    public i(j jVar, kotlin.jvm.internal.g gVar) {
        this.f19559a = jVar;
    }

    public static final i create(j jVar) {
        return f19558d.create(jVar);
    }

    public final g getSavedStateRegistry() {
        return this.f19560b;
    }

    public final void performAttach() {
        j jVar = this.f19559a;
        AbstractC0557o lifecycle = jVar.getLifecycle();
        if (lifecycle.getCurrentState() != Lifecycle$State.f6968e) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.addObserver(new Recreator(jVar));
        this.f19560b.performAttach$savedstate_release(lifecycle);
        this.f19561c = true;
    }

    public final void performRestore(Bundle bundle) {
        if (!this.f19561c) {
            performAttach();
        }
        AbstractC0557o lifecycle = this.f19559a.getLifecycle();
        if (!lifecycle.getCurrentState().isAtLeast(Lifecycle$State.f6970j)) {
            this.f19560b.performRestore$savedstate_release(bundle);
        } else {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.getCurrentState()).toString());
        }
    }

    public final void performSave(Bundle outBundle) {
        kotlin.jvm.internal.j.checkNotNullParameter(outBundle, "outBundle");
        this.f19560b.performSave(outBundle);
    }
}
