package kotlin.jvm.internal;

import H5.p;
import H5.q;
import H5.r;
import java.util.List;
import u5.InterfaceC1703b;

/* loaded from: classes2.dex */
public abstract class o {
    public static List asMutableList(Object obj) {
        if ((obj instanceof I5.a) && !(obj instanceof I5.b)) {
            throwCce(obj, "kotlin.collections.MutableList");
        }
        return castToList(obj);
    }

    public static Object beforeCheckcastToFunctionOfArity(Object obj, int i2) {
        if (obj != null && !isFunctionOfArity(obj, i2)) {
            throwCce(obj, "kotlin.jvm.functions.Function" + i2);
        }
        return obj;
    }

    public static List castToList(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e3) {
            throw throwCce(e3);
        }
    }

    public static int getFunctionArity(Object obj) {
        if (obj instanceof h) {
            return ((h) obj).getArity();
        }
        if (obj instanceof H5.a) {
            return 0;
        }
        if (obj instanceof H5.l) {
            return 1;
        }
        if (obj instanceof p) {
            return 2;
        }
        if (obj instanceof q) {
            return 3;
        }
        return obj instanceof r ? 4 : -1;
    }

    public static boolean isFunctionOfArity(Object obj, int i2) {
        return (obj instanceof InterfaceC1703b) && getFunctionArity(obj) == i2;
    }

    public static ClassCastException throwCce(ClassCastException classCastException) {
        j.b(classCastException, o.class.getName());
        throw classCastException;
    }

    public static void throwCce(Object obj, String str) {
        throwCce((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void throwCce(String str) {
        throw throwCce(new ClassCastException(str));
    }
}
