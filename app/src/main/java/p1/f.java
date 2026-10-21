package p1;

import java.util.List;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final String f19433a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19434b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19435c;

    /* renamed from: d, reason: collision with root package name */
    public final List f19436d;

    /* renamed from: e, reason: collision with root package name */
    public final List f19437e;

    public f(String referenceTable, String onDelete, String onUpdate, List<String> columnNames, List<String> referenceColumnNames) {
        kotlin.jvm.internal.j.checkNotNullParameter(referenceTable, "referenceTable");
        kotlin.jvm.internal.j.checkNotNullParameter(onDelete, "onDelete");
        kotlin.jvm.internal.j.checkNotNullParameter(onUpdate, "onUpdate");
        kotlin.jvm.internal.j.checkNotNullParameter(columnNames, "columnNames");
        kotlin.jvm.internal.j.checkNotNullParameter(referenceColumnNames, "referenceColumnNames");
        this.f19433a = referenceTable;
        this.f19434b = onDelete;
        this.f19435c = onUpdate;
        this.f19436d = columnNames;
        this.f19437e = referenceColumnNames;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (kotlin.jvm.internal.j.areEqual(this.f19433a, fVar.f19433a) && kotlin.jvm.internal.j.areEqual(this.f19434b, fVar.f19434b) && kotlin.jvm.internal.j.areEqual(this.f19435c, fVar.f19435c) && kotlin.jvm.internal.j.areEqual(this.f19436d, fVar.f19436d)) {
            return kotlin.jvm.internal.j.areEqual(this.f19437e, fVar.f19437e);
        }
        return false;
    }

    public int hashCode() {
        return this.f19437e.hashCode() + ((this.f19436d.hashCode() + A.i.b(A.i.b(this.f19433a.hashCode() * 31, 31, this.f19434b), 31, this.f19435c)) * 31);
    }

    public String toString() {
        return "ForeignKey{referenceTable='" + this.f19433a + "', onDelete='" + this.f19434b + " +', onUpdate='" + this.f19435c + "', columnNames=" + this.f19436d + ", referenceColumnNames=" + this.f19437e + '}';
    }
}
