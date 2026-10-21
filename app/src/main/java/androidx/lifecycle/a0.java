package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class a0 extends e0 {

    /* renamed from: f, reason: collision with root package name */
    public static a0 f7023f;

    /* renamed from: d, reason: collision with root package name */
    public final Application f7025d;

    /* renamed from: e, reason: collision with root package name */
    public static final Z f7022e = new Z(null);

    /* renamed from: g, reason: collision with root package name */
    public static final Y f7024g = Y.f7020a;

    public a0(Application application, int i2) {
        this.f7025d = application;
    }

    public final X a(Class cls, Application application) {
        if (!AbstractC0543a.class.isAssignableFrom(cls)) {
            return super.create(cls);
        }
        try {
            X x6 = (X) cls.getConstructor(Application.class).newInstance(application);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(x6, "{\n                try {\n…          }\n            }");
            return x6;
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Cannot create an instance of " + cls, e3);
        } catch (InstantiationException e7) {
            throw new RuntimeException("Cannot create an instance of " + cls, e7);
        } catch (NoSuchMethodException e8) {
            throw new RuntimeException("Cannot create an instance of " + cls, e8);
        } catch (InvocationTargetException e9) {
            throw new RuntimeException("Cannot create an instance of " + cls, e9);
        }
    }

    @Override // androidx.lifecycle.e0, androidx.lifecycle.c0
    public <T extends X> T create(Class<T> modelClass, m0.c extras) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        kotlin.jvm.internal.j.checkNotNullParameter(extras, "extras");
        if (this.f7025d != null) {
            return (T) create(modelClass);
        }
        Application application = (Application) extras.get(f7024g);
        if (application != null) {
            return (T) a(modelClass, application);
        }
        if (AbstractC0543a.class.isAssignableFrom(modelClass)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return (T) super.create(modelClass);
    }

    public a0() {
        this(null, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a0(Application application) {
        this(application, 0);
        kotlin.jvm.internal.j.checkNotNullParameter(application, "application");
    }

    @Override // androidx.lifecycle.e0, androidx.lifecycle.c0
    public <T extends X> T create(Class<T> modelClass) {
        kotlin.jvm.internal.j.checkNotNullParameter(modelClass, "modelClass");
        Application application = this.f7025d;
        if (application != null) {
            return (T) a(modelClass, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }
}
