package androidx.lifecycle;

import android.os.Bundle;

/* loaded from: classes.dex */
public abstract class SavedStateHandleSupport {

    /* renamed from: a, reason: collision with root package name */
    public static final Y f6994a = new Y();

    /* renamed from: b, reason: collision with root package name */
    public static final Y f6995b = new Y();

    /* renamed from: c, reason: collision with root package name */
    public static final Y f6996c = new Y();

    public static final Q createSavedStateHandle(m0.c cVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(cVar, "<this>");
        q1.j jVar = (q1.j) cVar.get(f6994a);
        if (jVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        j0 j0Var = (j0) cVar.get(f6995b);
        if (j0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) cVar.get(f6996c);
        String str = (String) cVar.get(e0.f7035c);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        SavedStateHandlesProvider savedStateHandlesProvider = getSavedStateHandlesProvider(jVar);
        S savedStateHandlesVM = getSavedStateHandlesVM(j0Var);
        Q q6 = savedStateHandlesVM.getHandles().get(str);
        if (q6 != null) {
            return q6;
        }
        Q createHandle = Q.f6975f.createHandle(savedStateHandlesProvider.consumeRestoredStateForKey(str), bundle);
        savedStateHandlesVM.getHandles().put(str, createHandle);
        return createHandle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T extends q1.j & j0> void enableSavedStateHandles(T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(t6, "<this>");
        Lifecycle$State currentState = t6.getLifecycle().getCurrentState();
        if (currentState != Lifecycle$State.f6968e && currentState != Lifecycle$State.f6969f) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (t6.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(t6.getSavedStateRegistry(), t6);
            t6.getSavedStateRegistry().registerSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            t6.getLifecycle().addObserver(new SavedStateHandleAttacher(savedStateHandlesProvider));
        }
    }

    public static final SavedStateHandlesProvider getSavedStateHandlesProvider(q1.j jVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(jVar, "<this>");
        q1.f savedStateProvider = jVar.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider");
        SavedStateHandlesProvider savedStateHandlesProvider = savedStateProvider instanceof SavedStateHandlesProvider ? (SavedStateHandlesProvider) savedStateProvider : null;
        if (savedStateHandlesProvider != null) {
            return savedStateHandlesProvider;
        }
        throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
    }

    public static final S getSavedStateHandlesVM(j0 j0Var) {
        kotlin.jvm.internal.j.checkNotNullParameter(j0Var, "<this>");
        m0.e eVar = new m0.e();
        eVar.addInitializer(kotlin.jvm.internal.l.getOrCreateKotlinClass(S.class), new H5.l() { // from class: androidx.lifecycle.SavedStateHandleSupport$savedStateHandlesVM$1$1
            @Override // H5.l
            public final S invoke(m0.c initializer) {
                kotlin.jvm.internal.j.checkNotNullParameter(initializer, "$this$initializer");
                return new S();
            }
        });
        return (S) new g0(j0Var, eVar.build()).get("androidx.lifecycle.internal.SavedStateHandlesVM", S.class);
    }
}
