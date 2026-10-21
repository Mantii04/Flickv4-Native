package androidx.lifecycle;

/* loaded from: classes.dex */
public class e0 implements c0 {

    /* renamed from: b, reason: collision with root package name */
    public static e0 f7034b;

    /* renamed from: a, reason: collision with root package name */
    public static final d0 f7033a = new d0(null);

    /* renamed from: c, reason: collision with root package name */
    public static final Y f7035c = Y.f7021b;

    @Override // androidx.lifecycle.c0
    public /* synthetic */ X create(Class cls, m0.c cVar) {
        return b0.b(this, cls, cVar);
    }

    @Override // androidx.lifecycle.c0
    public <T extends X> T create(Class<T> modelClass) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        try {
            T newInstance = modelClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(newInstance, "{\n                modelC…wInstance()\n            }");
            return newInstance;
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e3);
        } catch (InstantiationException e7) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e7);
        } catch (NoSuchMethodException e8) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e8);
        }
    }
}
