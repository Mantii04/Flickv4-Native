package O3;

import android.os.IBinder;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public final class F extends D {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2403a;

    public F(Object obj) {
        this.f2403a = obj;
    }

    public static <T> E a(T t6) {
        return new F(t6);
    }

    public static <T> T a(E e3) {
        if (e3 instanceof F) {
            return (T) ((F) e3).f2403a;
        }
        IBinder asBinder = e3.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        if (declaredFields.length != 1) {
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        Field field = declaredFields[0];
        if (field.isAccessible()) {
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(asBinder);
        } catch (IllegalAccessException e7) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e7);
        } catch (IllegalArgumentException e8) {
            throw new IllegalArgumentException("remoteBinder is the wrong class.", e8);
        } catch (NullPointerException e9) {
            throw new IllegalArgumentException("Binder object is null.", e9);
        }
    }
}
