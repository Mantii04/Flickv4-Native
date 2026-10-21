package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class Pair<A, B> implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public final Object f17388b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f17389e;

    public Pair(A a7, B b7) {
        this.f17388b = a7;
        this.f17389e = b7;
    }

    public final A component1() {
        return (A) this.f17388b;
    }

    public final B component2() {
        return (B) this.f17389e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return j.areEqual(this.f17388b, pair.f17388b) && j.areEqual(this.f17389e, pair.f17389e);
    }

    public final A getFirst() {
        return (A) this.f17388b;
    }

    public final B getSecond() {
        return (B) this.f17389e;
    }

    public int hashCode() {
        Object obj = this.f17388b;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f17389e;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "(" + this.f17388b + ", " + this.f17389e + ')';
    }
}
