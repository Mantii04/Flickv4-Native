package p1;

import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: e, reason: collision with root package name */
    public static final e f19446e = new e(null);

    /* renamed from: a, reason: collision with root package name */
    public final String f19447a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f19448b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f19449c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f19450d;

    public j(String name, Map<String, d> columns, Set<f> foreignKeys, Set<i> set) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        kotlin.jvm.internal.j.checkNotNullParameter(columns, "columns");
        kotlin.jvm.internal.j.checkNotNullParameter(foreignKeys, "foreignKeys");
        this.f19447a = name;
        this.f19448b = columns;
        this.f19449c = foreignKeys;
        this.f19450d = set;
    }

    public static final j read(r1.f fVar, String str) {
        return f19446e.read(fVar, str);
    }

    public boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (!kotlin.jvm.internal.j.areEqual(this.f19447a, jVar.f19447a) || !kotlin.jvm.internal.j.areEqual(this.f19448b, jVar.f19448b) || !kotlin.jvm.internal.j.areEqual(this.f19449c, jVar.f19449c)) {
            return false;
        }
        Set set2 = this.f19450d;
        if (set2 == null || (set = jVar.f19450d) == null) {
            return true;
        }
        return kotlin.jvm.internal.j.areEqual(set2, set);
    }

    public int hashCode() {
        return this.f19449c.hashCode() + ((this.f19448b.hashCode() + (this.f19447a.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "TableInfo{name='" + this.f19447a + "', columns=" + this.f19448b + ", foreignKeys=" + this.f19449c + ", indices=" + this.f19450d + '}';
    }
}
