package kotlin.jvm.internal;

import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class b {
    public static final <T> Iterator<T> iterator(T[] array) {
        j.checkNotNullParameter(array, "array");
        return new a(array);
    }
}
