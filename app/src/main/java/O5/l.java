package O5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import v5.o;
import v5.p;

/* loaded from: classes2.dex */
public abstract class l extends j {
    public static <T> Iterable<T> asIterable(d dVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        return new k(dVar);
    }

    public static <T> d drop(d dVar, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        if (i2 >= 0) {
            return i2 == 0 ? dVar : dVar instanceof c ? ((c) dVar).drop(i2) : new c(dVar, i2);
        }
        throw new IllegalArgumentException(A.i.g(i2, "Requested element count ", " is less than zero.").toString());
    }

    public static final <T, A extends Appendable> A joinTo(d dVar, A buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(buffer, "buffer");
        kotlin.jvm.internal.j.checkNotNullParameter(separator, "separator");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        kotlin.jvm.internal.j.checkNotNullParameter(postfix, "postfix");
        kotlin.jvm.internal.j.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i7 = 0;
        for (Object obj : dVar) {
            i7++;
            if (i7 > 1) {
                buffer.append(separator);
            }
            if (i2 >= 0 && i7 > i2) {
                break;
            }
            P5.l.appendElement(buffer, obj, lVar);
        }
        if (i2 >= 0 && i7 > i2) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final <T> String joinToString(d dVar, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(separator, "separator");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        kotlin.jvm.internal.j.checkNotNullParameter(postfix, "postfix");
        kotlin.jvm.internal.j.checkNotNullParameter(truncated, "truncated");
        String sb = ((StringBuilder) joinTo(dVar, new StringBuilder(), separator, prefix, postfix, i2, truncated, lVar)).toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }

    public static /* synthetic */ String joinToString$default(d dVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, H5.l lVar, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i7 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i7 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i7 & 8) != 0) {
            i2 = -1;
        }
        if ((i7 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i7 & 32) != 0) {
            lVar = null;
        }
        CharSequence charSequence5 = charSequence4;
        H5.l lVar2 = lVar;
        return joinToString(dVar, charSequence, charSequence2, charSequence3, i2, charSequence5, lVar2);
    }

    public static <T, R> d map(d dVar, H5.l transform) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(transform, "transform");
        return new n(dVar, transform);
    }

    public static <T> List<T> toList(d dVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(dVar, "<this>");
        Iterator<Object> it = dVar.iterator();
        if (!it.hasNext()) {
            return p.emptyList();
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return o.listOf(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
