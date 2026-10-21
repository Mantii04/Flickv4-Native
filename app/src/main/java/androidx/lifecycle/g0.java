package androidx.lifecycle;

import m0.C1261a;

/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: a, reason: collision with root package name */
    public final i0 f7037a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f7038b;

    /* renamed from: c, reason: collision with root package name */
    public final m0.c f7039c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g0(i0 store, c0 factory) {
        this(store, factory, null, 4, null);
        kotlin.jvm.internal.j.checkNotNullParameter(store, "store");
        kotlin.jvm.internal.j.checkNotNullParameter(factory, "factory");
    }

    public <T extends X> T get(Class<T> modelClass) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) get("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName), modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public g0(i0 store, c0 factory, m0.c defaultCreationExtras) {
        kotlin.jvm.internal.j.checkNotNullParameter(store, "store");
        kotlin.jvm.internal.j.checkNotNullParameter(factory, "factory");
        kotlin.jvm.internal.j.checkNotNullParameter(defaultCreationExtras, "defaultCreationExtras");
        this.f7037a = store;
        this.f7038b = factory;
        this.f7039c = defaultCreationExtras;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends X> T get(String key, Class<T> modelClass) {
        T t6;
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        i0 i0Var = this.f7037a;
        T t7 = (T) i0Var.get(key);
        boolean isInstance = modelClass.isInstance(t7);
        c0 c0Var = this.f7038b;
        if (isInstance) {
            f0 f0Var = c0Var instanceof f0 ? (f0) c0Var : null;
            if (f0Var != null) {
                kotlin.jvm.internal.j.checkNotNull(t7);
                f0Var.onRequery(t7);
            }
            kotlin.jvm.internal.j.checkNotNull(t7, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            return t7;
        }
        m0.f fVar = new m0.f(this.f7039c);
        fVar.set(e0.f7035c, key);
        try {
            t6 = (T) c0Var.create(modelClass, fVar);
        } catch (AbstractMethodError unused) {
            t6 = (T) c0Var.create(modelClass);
        }
        i0Var.put(key, t6);
        return t6;
    }

    public /* synthetic */ g0(i0 i0Var, c0 c0Var, m0.c cVar, int i2, kotlin.jvm.internal.g gVar) {
        this(i0Var, c0Var, (i2 & 4) != 0 ? C1261a.f18199b : cVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g0(j0 owner, c0 factory) {
        this(owner.getViewModelStore(), factory, h0.defaultCreationExtras(owner));
        kotlin.jvm.internal.j.checkNotNullParameter(owner, "owner");
        kotlin.jvm.internal.j.checkNotNullParameter(factory, "factory");
    }
}
