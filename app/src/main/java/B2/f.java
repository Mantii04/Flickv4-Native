package B2;

import l2.r;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Class f207a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f208b;

    /* renamed from: c, reason: collision with root package name */
    public final r f209c;

    public f(Class<Object> cls, Class<Object> cls2, r rVar) {
        this.f207a = cls;
        this.f208b = cls2;
        this.f209c = rVar;
    }

    public boolean handles(Class<?> cls, Class<?> cls2) {
        return this.f207a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f208b);
    }
}
