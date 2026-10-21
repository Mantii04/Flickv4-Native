package kotlin.text;

import P5.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.StringUtils;
import v5.p;
import v5.q;
import v5.u;

/* loaded from: classes2.dex */
public abstract class a extends l {
    public static final String replaceIndent(String str, String newIndent) {
        int i2;
        Appendable joinTo;
        String str2;
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(newIndent, "newIndent");
        List<String> lines = StringsKt__StringsKt.lines(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : lines) {
            if (!StringsKt__StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(q.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int length = str3.length();
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                if (!P5.a.isWhitespace(str3.charAt(i2))) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                i2 = str3.length();
            }
            arrayList2.add(Integer.valueOf(i2));
        }
        Integer num = (Integer) u.minOrNull(arrayList2);
        int intValue = num != null ? num.intValue() : 0;
        int size = (lines.size() * newIndent.length()) + str.length();
        H5.l stringsKt__IndentKt$getIndentFunction$2 = newIndent.length() == 0 ? StringsKt__IndentKt$getIndentFunction$1.f17462b : new StringsKt__IndentKt$getIndentFunction$2(newIndent);
        int lastIndex = p.getLastIndex(lines);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : lines) {
            int i7 = i2 + 1;
            if (i2 < 0) {
                p.throwIndexOverflow();
            }
            String str4 = (String) obj2;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt__StringsKt.isBlank(str4)) {
                str4 = null;
            } else {
                String drop = P5.q.drop(str4, intValue);
                if (drop != null && (str2 = (String) stringsKt__IndentKt$getIndentFunction$2.invoke(drop)) != null) {
                    str4 = str2;
                }
            }
            if (str4 != null) {
                arrayList3.add(str4);
            }
            i2 = i7;
        }
        joinTo = u.joinTo(arrayList3, new StringBuilder(size), (r14 & 2) != 0 ? ", " : StringUtils.LF, (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        String sb = ((StringBuilder) joinTo).toString();
        j.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }

    public static final String replaceIndentByMargin(String str, String newIndent, String marginPrefix) {
        Appendable joinTo;
        String str2;
        String str3;
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(newIndent, "newIndent");
        j.checkNotNullParameter(marginPrefix, "marginPrefix");
        if (StringsKt__StringsKt.isBlank(marginPrefix)) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List<String> lines = StringsKt__StringsKt.lines(str);
        int size = (lines.size() * newIndent.length()) + str.length();
        H5.l stringsKt__IndentKt$getIndentFunction$2 = newIndent.length() == 0 ? StringsKt__IndentKt$getIndentFunction$1.f17462b : new StringsKt__IndentKt$getIndentFunction$2(newIndent);
        int lastIndex = p.getLastIndex(lines);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : lines) {
            int i7 = i2 + 1;
            if (i2 < 0) {
                p.throwIndexOverflow();
            }
            String str4 = (String) obj;
            String str5 = null;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt__StringsKt.isBlank(str4)) {
                str2 = marginPrefix;
                str4 = null;
            } else {
                int length = str4.length();
                int i8 = 0;
                while (true) {
                    if (i8 >= length) {
                        i8 = -1;
                        break;
                    }
                    if (!P5.a.isWhitespace(str4.charAt(i8))) {
                        break;
                    }
                    i8++;
                }
                if (i8 == -1) {
                    str2 = marginPrefix;
                } else {
                    int i9 = i8;
                    str2 = marginPrefix;
                    if (P5.p.startsWith$default(str4, str2, i9, false, 4, null)) {
                        int length2 = str2.length() + i9;
                        j.checkNotNull(str4, "null cannot be cast to non-null type java.lang.String");
                        str5 = str4.substring(length2);
                        j.checkNotNullExpressionValue(str5, "substring(...)");
                    }
                }
                if (str5 != null && (str3 = (String) stringsKt__IndentKt$getIndentFunction$2.invoke(str5)) != null) {
                    str4 = str3;
                }
            }
            if (str4 != null) {
                arrayList.add(str4);
            }
            i2 = i7;
            marginPrefix = str2;
        }
        joinTo = u.joinTo(arrayList, new StringBuilder(size), (r14 & 2) != 0 ? ", " : StringUtils.LF, (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : null);
        String sb = ((StringBuilder) joinTo).toString();
        j.checkNotNullExpressionValue(sb, "toString(...)");
        return sb;
    }

    public static String trimIndent(String str) {
        j.checkNotNullParameter(str, "<this>");
        return replaceIndent(str, "");
    }

    public static final String trimMargin(String str, String marginPrefix) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(marginPrefix, "marginPrefix");
        return replaceIndentByMargin(str, "", marginPrefix);
    }

    public static /* synthetic */ String trimMargin$default(String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "|";
        }
        return trimMargin(str, str2);
    }
}
