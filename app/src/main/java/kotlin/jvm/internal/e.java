package kotlin.jvm.internal;

import H5.q;
import H5.r;
import H5.s;
import H5.t;
import H5.u;
import H5.v;
import H5.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.ClassUtils;
import u5.AbstractC1709h;
import v5.p;
import v5.z;

/* loaded from: classes2.dex */
public final class e implements N5.c, c {

    /* renamed from: e, reason: collision with root package name */
    public static final d f17450e = new d(null);

    /* renamed from: f, reason: collision with root package name */
    public static final Map f17451f;

    /* renamed from: j, reason: collision with root package name */
    public static final LinkedHashMap f17452j;

    /* renamed from: b, reason: collision with root package name */
    public final Class f17453b;

    static {
        int i2 = 0;
        List listOf = p.listOf((Object[]) new Class[]{H5.a.class, H5.l.class, H5.p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, H5.b.class, H5.c.class, H5.d.class, H5.e.class, H5.f.class, H5.g.class, H5.h.class, H5.i.class, H5.j.class, H5.k.class, H5.m.class, H5.n.class, H5.o.class});
        ArrayList arrayList = new ArrayList(v5.q.collectionSizeOrDefault(listOf, 10));
        for (Object obj : listOf) {
            int i7 = i2 + 1;
            if (i2 < 0) {
                p.throwIndexOverflow();
            }
            arrayList.add(AbstractC1709h.to((Class) obj, Integer.valueOf(i2)));
            i2 = i7;
        }
        f17451f = kotlin.collections.a.toMap(arrayList);
        HashMap q6 = b.c.q("boolean", "kotlin.Boolean", "char", "kotlin.Char");
        q6.put("byte", "kotlin.Byte");
        q6.put("short", "kotlin.Short");
        q6.put("int", "kotlin.Int");
        q6.put("float", "kotlin.Float");
        q6.put("long", "kotlin.Long");
        q6.put("double", "kotlin.Double");
        HashMap hashMap = new HashMap();
        hashMap.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap.put("java.lang.Character", "kotlin.Char");
        hashMap.put("java.lang.Byte", "kotlin.Byte");
        hashMap.put("java.lang.Short", "kotlin.Short");
        hashMap.put("java.lang.Integer", "kotlin.Int");
        hashMap.put("java.lang.Float", "kotlin.Float");
        hashMap.put("java.lang.Long", "kotlin.Long");
        hashMap.put("java.lang.Double", "kotlin.Double");
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Object", "kotlin.Any");
        hashMap2.put("java.lang.String", "kotlin.String");
        hashMap2.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap2.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap2.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap2.put("java.lang.Number", "kotlin.Number");
        hashMap2.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap2.put("java.lang.Enum", "kotlin.Enum");
        hashMap2.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap2.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap2.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap2.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap2.put("java.util.List", "kotlin.collections.List");
        hashMap2.put("java.util.Set", "kotlin.collections.Set");
        hashMap2.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap2.put("java.util.Map", "kotlin.collections.Map");
        hashMap2.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap2.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap2.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap2.putAll(q6);
        hashMap2.putAll(hashMap);
        Collection<String> values = q6.values();
        j.checkNotNullExpressionValue(values, "<get-values>(...)");
        for (String str : values) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            j.checkNotNull(str);
            Pair pair = AbstractC1709h.to(A.i.o(sb, StringsKt__StringsKt.substringAfterLast$default(str, ClassUtils.PACKAGE_SEPARATOR_CHAR, null, 2, null), "CompanionObject"), str + ".Companion");
            hashMap2.put(pair.getFirst(), pair.getSecond());
        }
        for (Map.Entry entry : f17451f.entrySet()) {
            hashMap2.put(((Class) entry.getKey()).getName(), "kotlin.Function" + ((Number) entry.getValue()).intValue());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(z.mapCapacity(hashMap2.size()));
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            linkedHashMap.put(entry2.getKey(), StringsKt__StringsKt.substringAfterLast$default((String) entry2.getValue(), ClassUtils.PACKAGE_SEPARATOR_CHAR, null, 2, null));
        }
        f17452j = linkedHashMap;
    }

    public e(Class<?> jClass) {
        j.checkNotNullParameter(jClass, "jClass");
        this.f17453b = jClass;
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && j.areEqual(G5.a.getJavaObjectType(this), G5.a.getJavaObjectType((N5.c) obj));
    }

    @Override // kotlin.jvm.internal.c
    public Class<?> getJClass() {
        return this.f17453b;
    }

    public String getSimpleName() {
        return f17450e.getClassSimpleName(getJClass());
    }

    public int hashCode() {
        return G5.a.getJavaObjectType(this).hashCode();
    }

    public String toString() {
        return getJClass().toString() + " (Kotlin reflection is not available)";
    }
}
