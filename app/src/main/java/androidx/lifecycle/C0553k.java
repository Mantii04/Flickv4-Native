package androidx.lifecycle;

import java.util.Iterator;

/* renamed from: androidx.lifecycle.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0553k implements q1.d {
    @Override // q1.d
    public void onRecreated(q1.j owner) {
        kotlin.jvm.internal.j.checkNotNullParameter(owner, "owner");
        if (!(owner instanceof j0)) {
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
        }
        i0 viewModelStore = ((j0) owner).getViewModelStore();
        q1.g savedStateRegistry = owner.getSavedStateRegistry();
        Iterator<String> it = viewModelStore.keys().iterator();
        while (it.hasNext()) {
            X x6 = viewModelStore.get(it.next());
            kotlin.jvm.internal.j.checkNotNull(x6);
            AbstractC0554l.attachHandleIfNeeded(x6, savedStateRegistry, owner.getLifecycle());
        }
        if (viewModelStore.keys().isEmpty()) {
            return;
        }
        savedStateRegistry.runOnNextRecreation(C0553k.class);
    }
}
