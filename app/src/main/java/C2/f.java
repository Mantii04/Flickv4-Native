package C2;

import l2.m;
import n2.u;

/* loaded from: classes.dex */
public final class f extends a {
    public static f decodeTypeOf(Class<?> cls) {
        return (f) new f().decode(cls);
    }

    public static f diskCacheStrategyOf(u uVar) {
        return (f) new f().diskCacheStrategy(uVar);
    }

    public static f signatureOf(m mVar) {
        return (f) new f().signature(mVar);
    }

    @Override // C2.a
    public boolean equals(Object obj) {
        return (obj instanceof f) && super.equals(obj);
    }

    @Override // C2.a
    public int hashCode() {
        return super.hashCode();
    }
}
