package K1;

import androidx.work.WorkInfo$State;

/* loaded from: classes.dex */
public final class D {

    /* renamed from: a, reason: collision with root package name */
    public final String f1591a;

    /* renamed from: b, reason: collision with root package name */
    public final WorkInfo$State f1592b;

    public D(String id, WorkInfo$State state) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        this.f1591a = id;
        this.f1592b = state;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d7 = (D) obj;
        return kotlin.jvm.internal.j.areEqual(this.f1591a, d7.f1591a) && this.f1592b == d7.f1592b;
    }

    public int hashCode() {
        return this.f1592b.hashCode() + (this.f1591a.hashCode() * 31);
    }

    public String toString() {
        return "IdAndState(id=" + this.f1591a + ", state=" + this.f1592b + ')';
    }
}
