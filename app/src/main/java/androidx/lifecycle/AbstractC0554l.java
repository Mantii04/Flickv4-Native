package androidx.lifecycle;

import android.os.Bundle;
import java.util.HashMap;

/* renamed from: androidx.lifecycle.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0554l {
    public static void a(final q1.g gVar, final AbstractC0557o abstractC0557o) {
        Lifecycle$State currentState = abstractC0557o.getCurrentState();
        if (currentState == Lifecycle$State.f6968e || currentState.isAtLeast(Lifecycle$State.f6970j)) {
            gVar.runOnNextRecreation(C0553k.class);
        } else {
            abstractC0557o.addObserver(new r() { // from class: androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1
                @Override // androidx.lifecycle.r
                public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
                    kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
                    kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
                    if (event == Lifecycle$Event.ON_START) {
                        abstractC0557o.removeObserver(this);
                        gVar.runOnNextRecreation(C0553k.class);
                    }
                }
            });
        }
    }

    public static final void attachHandleIfNeeded(X viewModel, q1.g registry, AbstractC0557o lifecycle) {
        Object obj;
        kotlin.jvm.internal.j.checkNotNullParameter(viewModel, "viewModel");
        kotlin.jvm.internal.j.checkNotNullParameter(registry, "registry");
        kotlin.jvm.internal.j.checkNotNullParameter(lifecycle, "lifecycle");
        HashMap hashMap = viewModel.f7017a;
        if (hashMap == null) {
            obj = null;
        } else {
            synchronized (hashMap) {
                obj = viewModel.f7017a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || savedStateHandleController.isAttached()) {
            return;
        }
        savedStateHandleController.attachToLifecycle(registry, lifecycle);
        a(registry, lifecycle);
    }

    public static final SavedStateHandleController create(q1.g registry, AbstractC0557o lifecycle, String str, Bundle bundle) {
        kotlin.jvm.internal.j.checkNotNullParameter(registry, "registry");
        kotlin.jvm.internal.j.checkNotNullParameter(lifecycle, "lifecycle");
        kotlin.jvm.internal.j.checkNotNull(str);
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, Q.f6975f.createHandle(registry.consumeRestoredStateForKey(str), bundle));
        savedStateHandleController.attachToLifecycle(registry, lifecycle);
        a(registry, lifecycle);
        return savedStateHandleController;
    }
}
