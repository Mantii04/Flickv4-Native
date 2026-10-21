package cz.msebera.android.httpclient.client.utils;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class CloneUtils {
    private CloneUtils() {
    }

    public static Object clone(Object obj) throws CloneNotSupportedException {
        return cloneObject(obj);
    }

    public static <T> T cloneObject(T t6) throws CloneNotSupportedException {
        if (t6 == null) {
            return null;
        }
        if (!(t6 instanceof Cloneable)) {
            throw new CloneNotSupportedException();
        }
        try {
            try {
                return (T) t6.getClass().getMethod("clone", null).invoke(t6, null);
            } catch (IllegalAccessException e3) {
                throw new IllegalAccessError(e3.getMessage());
            } catch (InvocationTargetException e7) {
                Throwable cause = e7.getCause();
                if (cause instanceof CloneNotSupportedException) {
                    throw ((CloneNotSupportedException) cause);
                }
                throw new Error("Unexpected exception", cause);
            }
        } catch (NoSuchMethodException e8) {
            throw new NoSuchMethodError(e8.getMessage());
        }
    }
}
