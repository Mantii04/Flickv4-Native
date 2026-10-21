package b0;

import kotlin.jvm.internal.j;

/* renamed from: b0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0624a {

    /* renamed from: a, reason: collision with root package name */
    public final String f8334a;

    public C0624a(String name) {
        j.checkNotNullParameter(name, "name");
        this.f8334a = name;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0624a)) {
            return false;
        }
        return j.areEqual(this.f8334a, ((C0624a) obj).f8334a);
    }

    public final String getName() {
        return this.f8334a;
    }

    public int hashCode() {
        return this.f8334a.hashCode();
    }

    public String toString() {
        return this.f8334a;
    }
}
