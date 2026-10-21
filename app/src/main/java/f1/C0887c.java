package f1;

import java.util.Collection;

/* renamed from: f1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0887c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0903k f14218a;

    public C0887c(C0903k c0903k) {
        this.f14218a = c0903k;
    }

    public void onRoutesChanged(AbstractC0881C abstractC0881C, C0915v c0915v, Collection<C0880B> collection) {
        C0903k c0903k = this.f14218a;
        if (abstractC0881C != c0903k.f14259v || c0915v == null) {
            if (abstractC0881C == c0903k.f14257t) {
                if (c0915v != null) {
                    c0903k.n(c0903k.f14256s, c0915v);
                }
                c0903k.f14256s.c(collection);
                return;
            }
            return;
        }
        S provider = c0903k.f14258u.getProvider();
        String id = c0915v.getId();
        U u6 = new U(provider, id, c0903k.b(provider, id));
        u6.b(c0915v);
        if (c0903k.f14256s == u6) {
            return;
        }
        c0903k.h(c0903k, u6, c0903k.f14259v, 3, c0903k.f14258u, collection);
        c0903k.f14258u = null;
        c0903k.f14259v = null;
    }
}
