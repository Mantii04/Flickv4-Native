package p;

import q.AbstractC1506a;

/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f19410a = new Object();

    public static final <E> E commonGet(r rVar, int i2) {
        E e3;
        kotlin.jvm.internal.j.checkNotNullParameter(rVar, "<this>");
        int binarySearch = AbstractC1506a.binarySearch(rVar.f19407b, rVar.f19409f, i2);
        if (binarySearch < 0 || (e3 = (E) rVar.f19408e[binarySearch]) == f19410a) {
            return null;
        }
        return e3;
    }

    public static final <E> E commonGet(r rVar, int i2, E e3) {
        E e7;
        kotlin.jvm.internal.j.checkNotNullParameter(rVar, "<this>");
        int binarySearch = AbstractC1506a.binarySearch(rVar.f19407b, rVar.f19409f, i2);
        return (binarySearch < 0 || (e7 = (E) rVar.f19408e[binarySearch]) == f19410a) ? e3 : e7;
    }
}
