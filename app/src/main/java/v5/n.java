package v5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class n extends m {
    public static final <T> boolean contains(T[] tArr, T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        return indexOf(tArr, t6) >= 0;
    }

    public static <T> List<T> filterNotNull(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        return (List) filterNotNullTo(tArr, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C filterNotNullTo(T[] tArr, C destination) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        for (T t6 : tArr) {
            if (t6 != null) {
                destination.add(t6);
            }
        }
        return destination;
    }

    public static <T> int getLastIndex(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        return tArr.length - 1;
    }

    public static <T> T getOrNull(T[] tArr, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        if (i2 < 0 || i2 >= tArr.length) {
            return null;
        }
        return tArr[i2];
    }

    public static final <T> int indexOf(T[] tArr, T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        int i2 = 0;
        if (t6 == null) {
            int length = tArr.length;
            while (i2 < length) {
                if (tArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i2 < length2) {
            if (kotlin.jvm.internal.j.areEqual(t6, tArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final <T, A extends Appendable> A joinTo(T[] tArr, A buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(buffer, "buffer");
        kotlin.jvm.internal.j.checkNotNullParameter(separator, "separator");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        kotlin.jvm.internal.j.checkNotNullParameter(postfix, "postfix");
        kotlin.jvm.internal.j.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i7 = 0;
        for (T t6 : tArr) {
            i7++;
            if (i7 > 1) {
                buffer.append(separator);
            }
            if (i2 >= 0 && i7 > i2) {
                break;
            }
            P5.l.appendElement(buffer, t6, lVar);
        }
        if (i2 >= 0 && i7 > i2) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final <T> String joinToString(T[] tArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i2, CharSequence truncated, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(separator, "separator");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        kotlin.jvm.internal.j.checkNotNullParameter(postfix, "postfix");
        kotlin.jvm.internal.j.checkNotNullParameter(truncated, "truncated");
        String sb = ((StringBuilder) joinTo(tArr, new StringBuilder(), separator, prefix, postfix, i2, truncated, lVar)).toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }

    public static /* synthetic */ String joinToString$default(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, H5.l lVar, int i7, Object obj) {
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
        return joinToString(objArr, charSequence, charSequence2, charSequence3, i2, charSequence5, lVar2);
    }

    public static char single(char[] cArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static <T> T singleOrNull(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final <T, C extends Collection<? super T>> C toCollection(T[] tArr, C destination) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(destination, "destination");
        for (T t6 : tArr) {
            destination.add(t6);
        }
        return destination;
    }

    public static <T> List<T> toList(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        int length = tArr.length;
        return length != 0 ? length != 1 ? toMutableList(tArr) : o.listOf(tArr[0]) : p.emptyList();
    }

    public static <T> List<T> toMutableList(T[] tArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(tArr, "<this>");
        return new ArrayList(p.asCollection(tArr));
    }
}
