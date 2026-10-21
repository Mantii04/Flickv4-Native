package com.google.common.base;

/* loaded from: classes2.dex */
final class Present<T> extends Optional<T> {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13021b;

    public Present(Object obj) {
        this.f13021b = obj;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.f13021b.equals(((Present) obj).f13021b);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        return (T) this.f13021b;
    }

    public int hashCode() {
        return this.f13021b.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    public String toString() {
        return "Optional.of(" + this.f13021b + ")";
    }
}
