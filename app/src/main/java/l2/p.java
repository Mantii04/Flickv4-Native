package l2;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: e, reason: collision with root package name */
    public static final n f18123e = new n();

    /* renamed from: a, reason: collision with root package name */
    public final Object f18124a;

    /* renamed from: b, reason: collision with root package name */
    public final o f18125b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18126c;

    /* renamed from: d, reason: collision with root package name */
    public volatile byte[] f18127d;

    public p(String str, Object obj, o oVar) {
        this.f18126c = G2.r.checkNotEmpty(str);
        this.f18124a = obj;
        this.f18125b = (o) G2.r.checkNotNull(oVar);
    }

    public static <T> p disk(String str, T t6, o oVar) {
        return new p(str, t6, oVar);
    }

    public static <T> p memory(String str) {
        return new p(str, null, f18123e);
    }

    public boolean equals(Object obj) {
        if (obj instanceof p) {
            return this.f18126c.equals(((p) obj).f18126c);
        }
        return false;
    }

    public Object getDefaultValue() {
        return this.f18124a;
    }

    public int hashCode() {
        return this.f18126c.hashCode();
    }

    public String toString() {
        return A.i.o(new StringBuilder("Option{key='"), this.f18126c, "'}");
    }

    public void update(Object obj, MessageDigest messageDigest) {
        o oVar = this.f18125b;
        if (this.f18127d == null) {
            this.f18127d = this.f18126c.getBytes(m.f18122a);
        }
        oVar.update(this.f18127d, obj, messageDigest);
    }

    public static <T> p memory(String str, T t6) {
        return new p(str, t6, f18123e);
    }
}
