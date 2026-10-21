package p1;

import java.util.Locale;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: h, reason: collision with root package name */
    public static final c f19425h = new c(null);

    /* renamed from: a, reason: collision with root package name */
    public final String f19426a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19427b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19428c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19429d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19430e;

    /* renamed from: f, reason: collision with root package name */
    public final int f19431f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19432g;

    public d(String name, String type, boolean z6, int i2, String str, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        kotlin.jvm.internal.j.checkNotNullParameter(type, "type");
        this.f19426a = name;
        this.f19427b = type;
        this.f19428c = z6;
        this.f19429d = i2;
        this.f19430e = str;
        this.f19431f = i7;
        int i8 = 5;
        if (type != null) {
            Locale US = Locale.US;
            kotlin.jvm.internal.j.checkNotNullExpressionValue(US, "US");
            String upperCase = type.toUpperCase(US);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            if (StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "INT", false, 2, (Object) null)) {
                i8 = 3;
            } else if (StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "CHAR", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "CLOB", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "TEXT", false, 2, (Object) null)) {
                i8 = 2;
            } else if (!StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "BLOB", false, 2, (Object) null)) {
                i8 = (StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "REAL", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "FLOA", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "DOUB", false, 2, (Object) null)) ? 4 : 1;
            }
        }
        this.f19432g = i8;
    }

    public boolean equals(Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        if (this.f19429d != ((d) obj).f19429d) {
            return false;
        }
        d dVar = (d) obj;
        if (!kotlin.jvm.internal.j.areEqual(this.f19426a, dVar.f19426a) || this.f19428c != dVar.f19428c) {
            return false;
        }
        c cVar = f19425h;
        String str2 = this.f19430e;
        int i2 = this.f19431f;
        if (i2 == 1 && dVar.f19431f == 2 && str2 != null && !cVar.defaultValueEquals(str2, dVar.f19430e)) {
            return false;
        }
        if (i2 != 2 || dVar.f19431f != 1 || (str = dVar.f19430e) == null || cVar.defaultValueEquals(str, str2)) {
            return (i2 == 0 || i2 != dVar.f19431f || (str2 == null ? dVar.f19430e == null : cVar.defaultValueEquals(str2, dVar.f19430e))) && this.f19432g == dVar.f19432g;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f19426a.hashCode() * 31) + this.f19432g) * 31) + (this.f19428c ? 1231 : 1237)) * 31) + this.f19429d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Column{name='");
        sb.append(this.f19426a);
        sb.append("', type='");
        sb.append(this.f19427b);
        sb.append("', affinity='");
        sb.append(this.f19432g);
        sb.append("', notNull=");
        sb.append(this.f19428c);
        sb.append(", primaryKeyPosition=");
        sb.append(this.f19429d);
        sb.append(", defaultValue='");
        String str = this.f19430e;
        if (str == null) {
            str = "undefined";
        }
        return A.i.o(sb, str, "'}");
    }
}
