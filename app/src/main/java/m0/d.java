package m0;

import androidx.lifecycle.X;
import androidx.lifecycle.b0;
import androidx.lifecycle.c0;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class d implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final g[] f18201a;

    public d(g... initializers) {
        j.checkNotNullParameter(initializers, "initializers");
        this.f18201a = initializers;
    }

    @Override // androidx.lifecycle.c0
    public final /* synthetic */ X create(Class cls) {
        return b0.a(this, cls);
    }

    @Override // androidx.lifecycle.c0
    public <T extends X> T create(Class<T> modelClass, c extras) {
        j.checkNotNullParameter(modelClass, "modelClass");
        j.checkNotNullParameter(extras, "extras");
        T t6 = null;
        for (g gVar : this.f18201a) {
            if (j.areEqual(gVar.getClazz$lifecycle_viewmodel_release(), modelClass)) {
                Object invoke = gVar.getInitializer$lifecycle_viewmodel_release().invoke(extras);
                t6 = invoke instanceof X ? (T) invoke : null;
            }
        }
        if (t6 != null) {
            return t6;
        }
        throw new IllegalArgumentException("No initializer set for given class ".concat(modelClass.getName()));
    }
}
