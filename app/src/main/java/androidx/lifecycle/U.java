package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class U {

    /* renamed from: a, reason: collision with root package name */
    public static final List f7009a = v5.p.listOf((Object[]) new Class[]{Application.class, Q.class});

    /* renamed from: b, reason: collision with root package name */
    public static final List f7010b = v5.o.listOf(Q.class);

    public static final <T> Constructor<T> findMatchingConstructor(Class<T> modelClass, List<? extends Class<?>> signature) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        kotlin.jvm.internal.j.checkNotNullParameter(signature, "signature");
        Object[] constructors = modelClass.getConstructors();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(constructors, "modelClass.constructors");
        for (Object obj : constructors) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            kotlin.jvm.internal.j.checkNotNullExpressionValue(parameterTypes, "constructor.parameterTypes");
            List list = v5.n.toList(parameterTypes);
            if (kotlin.jvm.internal.j.areEqual(signature, list)) {
                kotlin.jvm.internal.j.checkNotNull(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactoryKt.findMatchingConstructor>");
                return constructor;
            }
            if (signature.size() == list.size() && list.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final <T extends X> T newInstance(Class<T> modelClass, Constructor<T> constructor, Object... params) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        kotlin.jvm.internal.j.checkNotNullParameter(constructor, "constructor");
        kotlin.jvm.internal.j.checkNotNullParameter(params, "params");
        try {
            return constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Failed to access " + modelClass, e3);
        } catch (InstantiationException e7) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e7);
        } catch (InvocationTargetException e8) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e8.getCause());
        }
    }
}
