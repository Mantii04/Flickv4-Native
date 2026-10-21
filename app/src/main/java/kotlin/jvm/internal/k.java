package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public final class k implements c {

    /* renamed from: b, reason: collision with root package name */
    public final Class f17455b;

    public k(Class<?> jClass, String moduleName) {
        j.checkNotNullParameter(jClass, "jClass");
        j.checkNotNullParameter(moduleName, "moduleName");
        this.f17455b = jClass;
    }

    public boolean equals(Object obj) {
        return (obj instanceof k) && j.areEqual(getJClass(), ((k) obj).getJClass());
    }

    @Override // kotlin.jvm.internal.c
    public Class<?> getJClass() {
        return this.f17455b;
    }

    public int hashCode() {
        return getJClass().hashCode();
    }

    public String toString() {
        return getJClass().toString() + " (Kotlin reflection is not available)";
    }
}
