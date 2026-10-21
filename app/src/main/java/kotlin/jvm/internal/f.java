package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f17454a = new Object[0];

    public static final Object[] toArray(Collection<?> collection, Object[] objArr) {
        Object[] objArr2;
        j.checkNotNullParameter(collection, "collection");
        objArr.getClass();
        int size = collection.size();
        int i2 = 0;
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                if (size <= objArr.length) {
                    objArr2 = objArr;
                } else {
                    Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                    j.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                    objArr2 = (Object[]) newInstance;
                }
                while (true) {
                    int i7 = i2 + 1;
                    objArr2[i2] = it.next();
                    if (i7 >= objArr2.length) {
                        if (!it.hasNext()) {
                            return objArr2;
                        }
                        int i8 = ((i7 * 3) + 1) >>> 1;
                        if (i8 <= i7) {
                            i8 = 2147483645;
                            if (i7 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr2 = Arrays.copyOf(objArr2, i8);
                        j.checkNotNullExpressionValue(objArr2, "copyOf(...)");
                    } else if (!it.hasNext()) {
                        if (objArr2 == objArr) {
                            objArr[i7] = null;
                            return objArr;
                        }
                        Object[] copyOf = Arrays.copyOf(objArr2, i7);
                        j.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i2 = i7;
                }
            } else if (objArr.length > 0) {
                objArr[0] = null;
            }
        } else if (objArr.length > 0) {
            objArr[0] = null;
            return objArr;
        }
        return objArr;
    }

    public static final Object[] toArray(Collection<?> collection) {
        j.checkNotNullParameter(collection, "collection");
        int size = collection.size();
        Object[] objArr = f17454a;
        if (size == 0) {
            return objArr;
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return objArr;
        }
        Object[] objArr2 = new Object[size];
        int i2 = 0;
        while (true) {
            int i7 = i2 + 1;
            objArr2[i2] = it.next();
            if (i7 >= objArr2.length) {
                if (!it.hasNext()) {
                    return objArr2;
                }
                int i8 = ((i7 * 3) + 1) >>> 1;
                if (i8 <= i7) {
                    i8 = 2147483645;
                    if (i7 >= 2147483645) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr2 = Arrays.copyOf(objArr2, i8);
                j.checkNotNullExpressionValue(objArr2, "copyOf(...)");
            } else if (!it.hasNext()) {
                Object[] copyOf = Arrays.copyOf(objArr2, i7);
                j.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                return copyOf;
            }
            i2 = i7;
        }
    }
}
