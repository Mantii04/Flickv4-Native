package androidx.lifecycle;

import java.lang.reflect.Method;

/* renamed from: androidx.lifecycle.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0545c {

    /* renamed from: a, reason: collision with root package name */
    public final int f7028a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f7029b;

    public C0545c(Method method, int i2) {
        this.f7028a = i2;
        this.f7029b = method;
        method.setAccessible(true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0545c)) {
            return false;
        }
        C0545c c0545c = (C0545c) obj;
        return this.f7028a == c0545c.f7028a && this.f7029b.getName().equals(c0545c.f7029b.getName());
    }

    public int hashCode() {
        return this.f7029b.getName().hashCode() + (this.f7028a * 31);
    }
}
