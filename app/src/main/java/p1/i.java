package p1;

import P5.p;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final String f19442a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f19443b;

    /* renamed from: c, reason: collision with root package name */
    public final List f19444c;

    /* renamed from: d, reason: collision with root package name */
    public final List f19445d;

    static {
        new h(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.ArrayList] */
    public i(String name, boolean z6, List<String> columns, List<String> orders) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        kotlin.jvm.internal.j.checkNotNullParameter(columns, "columns");
        kotlin.jvm.internal.j.checkNotNullParameter(orders, "orders");
        this.f19442a = name;
        this.f19443b = z6;
        this.f19444c = columns;
        this.f19445d = orders;
        List<String> list = orders;
        if (list.isEmpty()) {
            int size = columns.size();
            list = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                list.add("ASC");
            }
        }
        this.f19445d = (List) list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f19443b != iVar.f19443b || !kotlin.jvm.internal.j.areEqual(this.f19444c, iVar.f19444c) || !kotlin.jvm.internal.j.areEqual(this.f19445d, iVar.f19445d)) {
            return false;
        }
        String str = this.f19442a;
        return p.startsWith$default(str, "index_", false, 2, null) ? p.startsWith$default(iVar.f19442a, "index_", false, 2, null) : kotlin.jvm.internal.j.areEqual(str, iVar.f19442a);
    }

    public int hashCode() {
        String str = this.f19442a;
        return this.f19445d.hashCode() + ((this.f19444c.hashCode() + ((((p.startsWith$default(str, "index_", false, 2, null) ? -1184239155 : str.hashCode()) * 31) + (this.f19443b ? 1 : 0)) * 31)) * 31);
    }

    public String toString() {
        return "Index{name='" + this.f19442a + "', unique=" + this.f19443b + ", columns=" + this.f19444c + ", orders=" + this.f19445d + "'}";
    }
}
