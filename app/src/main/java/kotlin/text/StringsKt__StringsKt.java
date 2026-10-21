package kotlin.text;

import A.i;
import M5.b;
import M5.e;
import M5.g;
import O5.d;
import O5.l;
import P5.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.j;
import org.apache.commons.lang3.StringUtils;
import u5.AbstractC1709h;
import v5.m;
import v5.n;
import v5.o;
import v5.q;
import v5.u;

/* loaded from: classes2.dex */
public abstract class StringsKt__StringsKt extends p {
    public static final int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i7, boolean z6, boolean z7) {
        b eVar = !z7 ? new e(g.coerceAtLeast(i2, 0), g.coerceAtMost(i7, charSequence.length())) : g.downTo(g.coerceAtMost(i2, getLastIndex(charSequence)), g.coerceAtLeast(i7, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int first = eVar.getFirst();
            int last = eVar.getLast();
            int step = eVar.getStep();
            if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                return -1;
            }
            int i8 = first;
            while (true) {
                boolean z8 = z6;
                if (p.regionMatches((String) charSequence2, 0, (String) charSequence, i8, ((String) charSequence2).length(), z8)) {
                    return i8;
                }
                if (i8 == last) {
                    return -1;
                }
                i8 += step;
                z6 = z8;
            }
        } else {
            boolean z9 = z6;
            int first2 = eVar.getFirst();
            int last2 = eVar.getLast();
            int step2 = eVar.getStep();
            if ((step2 <= 0 || first2 > last2) && (step2 >= 0 || last2 > first2)) {
                return -1;
            }
            int i9 = first2;
            while (true) {
                boolean z10 = z9;
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                z9 = z10;
                if (regionMatchesImpl(charSequence4, 0, charSequence3, i9, charSequence2.length(), z10)) {
                    return i9;
                }
                if (i9 == last2) {
                    return -1;
                }
                i9 += step2;
                charSequence2 = charSequence4;
                charSequence = charSequence3;
            }
        }
    }

    public static final Pair access$findAnyOf(CharSequence charSequence, Collection collection, int i2, boolean z6, boolean z7) {
        CharSequence charSequence2;
        Object obj;
        boolean z8;
        Object obj2;
        if (z6 || collection.size() != 1) {
            CharSequence charSequence3 = charSequence;
            b eVar = !z7 ? new e(g.coerceAtLeast(i2, 0), charSequence3.length()) : g.downTo(g.coerceAtMost(i2, getLastIndex(charSequence3)), 0);
            if (charSequence3 instanceof String) {
                int first = eVar.getFirst();
                int last = eVar.getLast();
                int step = eVar.getStep();
                if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                    int i7 = first;
                    while (true) {
                        Iterator it = collection.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z8 = z6;
                                obj2 = null;
                                break;
                            }
                            obj2 = it.next();
                            String str = (String) obj2;
                            z8 = z6;
                            if (p.regionMatches(str, 0, (String) charSequence3, i7, str.length(), z8)) {
                                break;
                            }
                            z6 = z8;
                        }
                        String str2 = (String) obj2;
                        if (str2 == null) {
                            if (i7 == last) {
                                break;
                            }
                            i7 += step;
                            z6 = z8;
                        } else {
                            return AbstractC1709h.to(Integer.valueOf(i7), str2);
                        }
                    }
                }
            } else {
                boolean z9 = z6;
                int first2 = eVar.getFirst();
                int last2 = eVar.getLast();
                int step2 = eVar.getStep();
                if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                    int i8 = first2;
                    while (true) {
                        Iterator it2 = collection.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                charSequence2 = charSequence3;
                                obj = null;
                                break;
                            }
                            obj = it2.next();
                            String str3 = (String) obj;
                            boolean z10 = z9;
                            charSequence2 = charSequence3;
                            z9 = z10;
                            if (regionMatchesImpl(str3, 0, charSequence2, i8, str3.length(), z10)) {
                                break;
                            }
                            charSequence3 = charSequence2;
                        }
                        String str4 = (String) obj;
                        if (str4 == null) {
                            if (i8 == last2) {
                                break;
                            }
                            i8 += step2;
                            charSequence3 = charSequence2;
                        } else {
                            return AbstractC1709h.to(Integer.valueOf(i8), str4);
                        }
                    }
                }
            }
        } else {
            String str5 = (String) u.single(collection);
            int indexOf$default = !z7 ? indexOf$default(charSequence, str5, i2, false, 4, (Object) null) : lastIndexOf$default(charSequence, str5, i2, false, 4, (Object) null);
            if (indexOf$default >= 0) {
                return AbstractC1709h.to(Integer.valueOf(indexOf$default), str5);
            }
        }
        return null;
    }

    public static final boolean contains(CharSequence charSequence, CharSequence other, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(other, "other");
        return other instanceof String ? indexOf$default(charSequence, (String) other, 0, z6, 2, (Object) null) >= 0 : a(charSequence, other, 0, charSequence.length(), z6, false) >= 0;
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return contains(charSequence, charSequence2, z6);
    }

    public static final boolean endsWith(CharSequence charSequence, CharSequence suffix, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(suffix, "suffix");
        return (!z6 && (charSequence instanceof String) && (suffix instanceof String)) ? p.endsWith$default((String) charSequence, (String) suffix, false, 2, null) : regionMatchesImpl(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z6);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return endsWith(charSequence, charSequence2, z6);
    }

    public static final int getLastIndex(CharSequence charSequence) {
        j.checkNotNullParameter(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int indexOf(CharSequence charSequence, char c7, int i2, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        return (z6 || !(charSequence instanceof String)) ? indexOfAny(charSequence, new char[]{c7}, i2, z6) : ((String) charSequence).indexOf(c7, i2);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c7, int i2, boolean z6, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            i2 = 0;
        }
        if ((i7 & 4) != 0) {
            z6 = false;
        }
        return indexOf(charSequence, c7, i2, z6);
    }

    public static final int indexOfAny(CharSequence charSequence, char[] chars, int i2, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(chars, "chars");
        if (!z6 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(n.single(chars), i2);
        }
        int coerceAtLeast = g.coerceAtLeast(i2, 0);
        int lastIndex = getLastIndex(charSequence);
        if (coerceAtLeast > lastIndex) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(coerceAtLeast);
            for (char c7 : chars) {
                if (P5.b.equals(c7, charAt, z6)) {
                    return coerceAtLeast;
                }
            }
            if (coerceAtLeast == lastIndex) {
                return -1;
            }
            coerceAtLeast++;
        }
    }

    public static boolean isBlank(CharSequence charSequence) {
        j.checkNotNullParameter(charSequence, "<this>");
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (!P5.a.isWhitespace(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static final int lastIndexOf(CharSequence charSequence, char c7, int i2, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        return (z6 || !(charSequence instanceof String)) ? lastIndexOfAny(charSequence, new char[]{c7}, i2, z6) : ((String) charSequence).lastIndexOf(c7, i2);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c7, int i2, boolean z6, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i7 & 4) != 0) {
            z6 = false;
        }
        return lastIndexOf(charSequence, c7, i2, z6);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, char[] chars, int i2, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(chars, "chars");
        if (!z6 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(n.single(chars), i2);
        }
        for (int coerceAtMost = g.coerceAtMost(i2, getLastIndex(charSequence)); -1 < coerceAtMost; coerceAtMost--) {
            char charAt = charSequence.charAt(coerceAtMost);
            for (char c7 : chars) {
                if (P5.b.equals(c7, charAt, z6)) {
                    return coerceAtMost;
                }
            }
        }
        return -1;
    }

    public static final d lineSequence(CharSequence charSequence) {
        j.checkNotNullParameter(charSequence, "<this>");
        return splitToSequence$default(charSequence, new String[]{"\r\n", StringUtils.LF, StringUtils.CR}, false, 0, 6, null);
    }

    public static final List<String> lines(CharSequence charSequence) {
        j.checkNotNullParameter(charSequence, "<this>");
        return l.toList(lineSequence(charSequence));
    }

    public static final CharSequence padStart(CharSequence charSequence, int i2, char c7) {
        j.checkNotNullParameter(charSequence, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(i.g(i2, "Desired length ", " is less than zero."));
        }
        if (i2 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i2);
        int length = i2 - charSequence.length();
        int i7 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c7);
                if (i7 == length) {
                    break;
                }
                i7++;
            }
        }
        sb.append(charSequence);
        return sb;
    }

    public static final boolean regionMatchesImpl(CharSequence charSequence, int i2, CharSequence other, int i7, int i8, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(other, "other");
        if (i7 < 0 || i2 < 0 || i2 > charSequence.length() - i8 || i7 > other.length() - i8) {
            return false;
        }
        for (int i9 = 0; i9 < i8; i9++) {
            if (!P5.b.equals(charSequence.charAt(i2 + i9), other.charAt(i7 + i9), z6)) {
                return false;
            }
        }
        return true;
    }

    public static String removePrefix(String str, CharSequence prefix) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(prefix, "prefix");
        if (!startsWith$default((CharSequence) str, prefix, false, 2, (Object) null)) {
            return str;
        }
        String substring = str.substring(prefix.length());
        j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static String removeSuffix(String str, CharSequence suffix) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(suffix, "suffix");
        if (!endsWith$default((CharSequence) str, suffix, false, 2, (Object) null)) {
            return str;
        }
        String substring = str.substring(0, str.length() - suffix.length());
        j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static final String removeSurrounding(String str, CharSequence prefix, CharSequence suffix) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(prefix, "prefix");
        j.checkNotNullParameter(suffix, "suffix");
        if (str.length() < suffix.length() + prefix.length() || !startsWith$default((CharSequence) str, prefix, false, 2, (Object) null) || !endsWith$default((CharSequence) str, suffix, false, 2, (Object) null)) {
            return str;
        }
        String substring = str.substring(prefix.length(), str.length() - suffix.length());
        j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static final void requireNonNegativeLimit(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(i.f(i2, "Limit must be non-negative, but was ").toString());
        }
    }

    public static final List<String> split(CharSequence charSequence, final char[] delimiters, final boolean z6, int i2) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(delimiters, "delimiters");
        int i7 = 0;
        if (delimiters.length != 1) {
            requireNonNegativeLimit(i2);
            Iterable asIterable = l.asIterable(new P5.e(charSequence, 0, i2, new H5.p() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // H5.p
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    return invoke((CharSequence) obj, ((Number) obj2).intValue());
                }

                public final Pair<Integer, Integer> invoke(CharSequence $receiver, int i8) {
                    j.checkNotNullParameter($receiver, "$this$$receiver");
                    int indexOfAny = StringsKt__StringsKt.indexOfAny($receiver, delimiters, i8, z6);
                    if (indexOfAny < 0) {
                        return null;
                    }
                    return AbstractC1709h.to(Integer.valueOf(indexOfAny), 1);
                }
            }));
            ArrayList arrayList = new ArrayList(q.collectionSizeOrDefault(asIterable, 10));
            Iterator it = asIterable.iterator();
            while (it.hasNext()) {
                arrayList.add(substring(charSequence, (e) it.next()));
            }
            return arrayList;
        }
        String valueOf = String.valueOf(delimiters[0]);
        requireNonNegativeLimit(i2);
        int indexOf = indexOf(charSequence, valueOf, 0, z6);
        if (indexOf == -1 || i2 == 1) {
            return o.listOf(charSequence.toString());
        }
        boolean z7 = i2 > 0;
        ArrayList arrayList2 = new ArrayList(z7 ? g.coerceAtMost(i2, 10) : 10);
        do {
            arrayList2.add(charSequence.subSequence(i7, indexOf).toString());
            i7 = valueOf.length() + indexOf;
            if (z7 && arrayList2.size() == i2 - 1) {
                break;
            }
            indexOf = indexOf(charSequence, valueOf, i7, z6);
        } while (indexOf != -1);
        arrayList2.add(charSequence.subSequence(i7, charSequence.length()).toString());
        return arrayList2;
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z6, int i2, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            z6 = false;
        }
        if ((i7 & 4) != 0) {
            i2 = 0;
        }
        return split(charSequence, cArr, z6, i2);
    }

    public static final d splitToSequence(final CharSequence charSequence, String[] delimiters, final boolean z6, int i2) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(delimiters, "delimiters");
        requireNonNegativeLimit(i2);
        final List asList = m.asList(delimiters);
        return l.map(new P5.e(charSequence, 0, i2, new H5.p() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // H5.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((CharSequence) obj, ((Number) obj2).intValue());
            }

            public final Pair<Integer, Integer> invoke(CharSequence $receiver, int i7) {
                j.checkNotNullParameter($receiver, "$this$$receiver");
                Pair access$findAnyOf = StringsKt__StringsKt.access$findAnyOf($receiver, asList, i7, z6, false);
                if (access$findAnyOf != null) {
                    return AbstractC1709h.to(access$findAnyOf.getFirst(), Integer.valueOf(((String) access$findAnyOf.getSecond()).length()));
                }
                return null;
            }
        }), new H5.l() { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // H5.l
            public final String invoke(e it) {
                j.checkNotNullParameter(it, "it");
                return StringsKt__StringsKt.substring(charSequence, it);
            }
        });
    }

    public static /* synthetic */ d splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z6, int i2, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            z6 = false;
        }
        if ((i7 & 4) != 0) {
            i2 = 0;
        }
        return splitToSequence(charSequence, strArr, z6, i2);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence prefix, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(prefix, "prefix");
        return (!z6 && (charSequence instanceof String) && (prefix instanceof String)) ? p.startsWith$default((String) charSequence, (String) prefix, false, 2, null) : regionMatchesImpl(charSequence, 0, prefix, 0, prefix.length(), z6);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return startsWith(charSequence, charSequence2, z6);
    }

    public static final String substring(CharSequence charSequence, e range) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    public static final String substringAfter(String str, char c7, String missingDelimiterValue) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int indexOf$default = indexOf$default((CharSequence) str, c7, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(indexOf$default + 1, str.length());
        j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static /* synthetic */ String substringAfter$default(String str, char c7, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return substringAfter(str, c7, str2);
    }

    public static String substringAfterLast(String str, char c7, String missingDelimiterValue) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int lastIndexOf$default = lastIndexOf$default((CharSequence) str, c7, 0, false, 6, (Object) null);
        if (lastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(lastIndexOf$default + 1, str.length());
        j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, char c7, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        return substringAfterLast(str, c7, str2);
    }

    public static CharSequence trim(CharSequence charSequence) {
        j.checkNotNullParameter(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z6 = false;
        while (i2 <= length) {
            boolean isWhitespace = P5.a.isWhitespace(charSequence.charAt(!z6 ? i2 : length));
            if (z6) {
                if (!isWhitespace) {
                    break;
                }
                length--;
            } else if (isWhitespace) {
                i2++;
            } else {
                z6 = true;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c7, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return contains(charSequence, c7, z6);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i2, boolean z6, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            i2 = 0;
        }
        if ((i7 & 4) != 0) {
            z6 = false;
        }
        return indexOf(charSequence, str, i2, z6);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i2, boolean z6, int i7, Object obj) {
        if ((i7 & 2) != 0) {
            i2 = getLastIndex(charSequence);
        }
        if ((i7 & 4) != 0) {
            z6 = false;
        }
        return lastIndexOf(charSequence, str, i2, z6);
    }

    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str3 = str;
        }
        return substringAfter(str, str2, str3);
    }

    public static String removeSurrounding(String str, CharSequence delimiter) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(delimiter, "delimiter");
        return removeSurrounding(str, delimiter, delimiter);
    }

    public static final String substringAfter(String str, String delimiter, String missingDelimiterValue) {
        j.checkNotNullParameter(str, "<this>");
        j.checkNotNullParameter(delimiter, "delimiter");
        j.checkNotNullParameter(missingDelimiterValue, "missingDelimiterValue");
        int indexOf$default = indexOf$default((CharSequence) str, delimiter, 0, false, 6, (Object) null);
        if (indexOf$default == -1) {
            return missingDelimiterValue;
        }
        String substring = str.substring(delimiter.length() + indexOf$default, str.length());
        j.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static final int indexOf(CharSequence charSequence, String string, int i2, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(string, "string");
        if (!z6 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(string, i2);
        }
        return a(charSequence, string, i2, charSequence.length(), z6, false);
    }

    public static final int lastIndexOf(CharSequence charSequence, String string, int i2, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        j.checkNotNullParameter(string, "string");
        if (!z6 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(string, i2);
        }
        return a(charSequence, string, i2, 0, z6, true);
    }

    public static final boolean contains(CharSequence charSequence, char c7, boolean z6) {
        j.checkNotNullParameter(charSequence, "<this>");
        return indexOf$default(charSequence, c7, 0, z6, 2, (Object) null) >= 0;
    }

    public static String padStart(String str, int i2, char c7) {
        j.checkNotNullParameter(str, "<this>");
        return padStart((CharSequence) str, i2, c7).toString();
    }
}
