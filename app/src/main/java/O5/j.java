package O5;

import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class j extends h {
    public static <T> d asSequence(Iterator<? extends T> it) {
        kotlin.jvm.internal.j.checkNotNullParameter(it, "<this>");
        return constrainOnce(new i(it));
    }

    public static final <T> d constrainOnce(d dVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        return dVar instanceof a ? dVar : new a(dVar);
    }
}
