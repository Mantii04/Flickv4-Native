package okhttp3;

import A.i;
import C5.d;
import I5.a;
import P5.p;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.Pair;
import kotlin.jvm.internal.b;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.apache.commons.lang3.StringUtils;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import u5.AbstractC1709h;
import v5.s;

/* loaded from: classes2.dex */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, a {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String line) {
            j.checkNotNullParameter(line, "line");
            int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) line, ':', 0, false, 6, (Object) null);
            if (indexOf$default == -1) {
                throw new IllegalArgumentException(i.k("Unexpected header: ", line).toString());
            }
            String substring = line.substring(0, indexOf$default);
            j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String obj = StringsKt__StringsKt.trim(substring).toString();
            String substring2 = line.substring(indexOf$default + 1);
            j.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            add(obj, substring2);
            return this;
        }

        public final Builder addAll(Headers headers) {
            j.checkNotNullParameter(headers, "headers");
            int size = headers.size();
            for (int i2 = 0; i2 < size; i2++) {
                addLenient$okhttp(headers.name(i2), headers.value(i2));
            }
            return this;
        }

        public final Builder addLenient$okhttp(String line) {
            j.checkNotNullParameter(line, "line");
            int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) line, ':', 1, false, 4, (Object) null);
            if (indexOf$default != -1) {
                String substring = line.substring(0, indexOf$default);
                j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                String substring2 = line.substring(indexOf$default + 1);
                j.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(substring, substring2);
                return this;
            }
            if (line.charAt(0) != ':') {
                addLenient$okhttp("", line);
                return this;
            }
            String substring3 = line.substring(1);
            j.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
            addLenient$okhttp("", substring3);
            return this;
        }

        public final Builder addUnsafeNonAscii(String name, String value) {
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            Headers.Companion.checkName(name);
            addLenient$okhttp(name, value);
            return this;
        }

        public final Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]), null);
        }

        public final String get(String name) {
            j.checkNotNullParameter(name, "name");
            int size = this.namesAndValues.size() - 2;
            int progressionLastElement = d.getProgressionLastElement(size, 0, -2);
            if (progressionLastElement > size) {
                return null;
            }
            while (!p.equals(name, this.namesAndValues.get(size), true)) {
                if (size == progressionLastElement) {
                    return null;
                }
                size -= 2;
            }
            return this.namesAndValues.get(size + 1);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String name) {
            j.checkNotNullParameter(name, "name");
            int i2 = 0;
            while (i2 < this.namesAndValues.size()) {
                if (p.equals(name, this.namesAndValues.get(i2), true)) {
                    this.namesAndValues.remove(i2);
                    this.namesAndValues.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
            return this;
        }

        public final Builder set(String name, Date value) {
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            set(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder set(String name, Instant value) {
            long epochMilli;
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            epochMilli = value.toEpochMilli();
            return set(name, new Date(epochMilli));
        }

        public final Builder set(String name, String value) {
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            removeAll(name);
            addLenient$okhttp(name, value);
            return this;
        }

        public final Builder addLenient$okhttp(String name, String value) {
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            this.namesAndValues.add(name);
            this.namesAndValues.add(StringsKt__StringsKt.trim(value).toString());
            return this;
        }

        public final Builder add(String name, String value) {
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            addLenient$okhttp(name, value);
            return this;
        }

        public final Builder add(String name, Date value) {
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            add(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder add(String name, Instant value) {
            long epochMilli;
            j.checkNotNullParameter(name, "name");
            j.checkNotNullParameter(value, "value");
            epochMilli = value.toEpochMilli();
            add(name, new Date(epochMilli));
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if ('!' > charAt || charAt >= 127) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i2), str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(Util.format("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i2), str2));
                    sb.append(Util.isSensitiveHeader(str2) ? "" : ": ".concat(str));
                    throw new IllegalArgumentException(sb.toString().toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] strArr, String str) {
            int length = strArr.length - 2;
            int progressionLastElement = d.getProgressionLastElement(length, 0, -2);
            if (progressionLastElement > length) {
                return null;
            }
            while (!p.equals(str, strArr[length], true)) {
                if (length == progressionLastElement) {
                    return null;
                }
                length -= 2;
            }
            return strArr[length + 1];
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m162deprecated_of(String... namesAndValues) {
            j.checkNotNullParameter(namesAndValues, "namesAndValues");
            return of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        public final Headers of(String... namesAndValues) {
            j.checkNotNullParameter(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values");
            }
            String[] strArr = (String[]) namesAndValues.clone();
            int length = strArr.length;
            int i2 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                String str = strArr[i7];
                if (str == null) {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
                strArr[i7] = StringsKt__StringsKt.trim(str).toString();
            }
            int progressionLastElement = d.getProgressionLastElement(0, strArr.length - 1, 2);
            if (progressionLastElement >= 0) {
                while (true) {
                    String str2 = strArr[i2];
                    String str3 = strArr[i2 + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (i2 == progressionLastElement) {
                        break;
                    }
                    i2 += 2;
                }
            }
            return new Headers(strArr, null);
        }

        private Companion() {
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m161deprecated_of(Map<String, String> headers) {
            j.checkNotNullParameter(headers, "headers");
            return of(headers);
        }

        public final Headers of(Map<String, String> map) {
            j.checkNotNullParameter(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i2 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                String obj = StringsKt__StringsKt.trim(key).toString();
                String obj2 = StringsKt__StringsKt.trim(value).toString();
                checkName(obj);
                checkValue(obj2, obj);
                strArr[i2] = obj;
                strArr[i2 + 1] = obj2;
                i2 += 2;
            }
            return new Headers(strArr, null);
        }
    }

    public /* synthetic */ Headers(String[] strArr, g gVar) {
        this(strArr);
    }

    public static final Headers of(Map<String, String> map) {
        return Companion.of(map);
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m160deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            length += this.namesAndValues[i2].length();
        }
        return length;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    public final String get(String name) {
        j.checkNotNullParameter(name, "name");
        return Companion.get(this.namesAndValues, name);
    }

    public final Date getDate(String name) {
        j.checkNotNullParameter(name, "name");
        String str = get(name);
        if (str != null) {
            return DatesKt.toHttpDateOrNull(str);
        }
        return null;
    }

    @IgnoreJRERequirement
    public final Instant getInstant(String name) {
        Instant instant;
        j.checkNotNullParameter(name, "name");
        Date date = getDate(name);
        if (date == null) {
            return null;
        }
        instant = date.toInstant();
        return instant;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i2 = 0; i2 < size; i2++) {
            pairArr[i2] = AbstractC1709h.to(name(i2), value(i2));
        }
        return b.iterator(pairArr);
    }

    public final String name(int i2) {
        return this.namesAndValues[i2 * 2];
    }

    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(p.getCASE_INSENSITIVE_ORDER(n.f17457a));
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            treeSet.add(name(i2));
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(treeSet);
        j.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(result)");
        return unmodifiableSet;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        s.addAll(builder.getNamesAndValues$okhttp(), this.namesAndValues);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(p.getCASE_INSENSITIVE_ORDER(n.f17457a));
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            String name = name(i2);
            Locale US = Locale.US;
            j.checkNotNullExpressionValue(US, "US");
            String lowerCase = name.toLowerCase(US);
            j.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(value(i2));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            String name = name(i2);
            String value = value(i2);
            sb.append(name);
            sb.append(": ");
            if (Util.isSensitiveHeader(name)) {
                value = "██";
            }
            sb.append(value);
            sb.append(StringUtils.LF);
        }
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final String value(int i2) {
        return this.namesAndValues[(i2 * 2) + 1];
    }

    public final List<String> values(String name) {
        j.checkNotNullParameter(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            if (p.equals(name, name(i2), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i2));
            }
        }
        if (arrayList == null) {
            return v5.p.emptyList();
        }
        List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
        j.checkNotNullExpressionValue(unmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return unmodifiableList;
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public static final Headers of(String... strArr) {
        return Companion.of(strArr);
    }
}
