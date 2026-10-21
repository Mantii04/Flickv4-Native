package n2;

import java.util.concurrent.Executor;

/* renamed from: n2.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1381C {

    /* renamed from: a, reason: collision with root package name */
    public final C2.g f18879a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f18880b;

    public C1381C(C2.g gVar, Executor executor) {
        this.f18879a = gVar;
        this.f18880b = executor;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1381C) {
            return this.f18879a.equals(((C1381C) obj).f18879a);
        }
        return false;
    }

    public int hashCode() {
        return this.f18879a.hashCode();
    }
}
