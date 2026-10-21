package T2;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class m implements f {

    /* renamed from: a, reason: collision with root package name */
    public final C.k f3669a;

    /* renamed from: b, reason: collision with root package name */
    public final k f3670b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3671c;

    public m(Context context, k kVar) {
        C.k kVar2 = new C.k();
        kVar2.f326b = null;
        kVar2.f325a = context;
        this.f3671c = new HashMap();
        this.f3669a = kVar2;
        this.f3670b = kVar;
    }

    public synchronized o get(String str) {
        if (this.f3671c.containsKey(str)) {
            return (o) this.f3671c.get(str);
        }
        e q6 = this.f3669a.q(str);
        if (q6 == null) {
            return null;
        }
        k kVar = this.f3670b;
        o create = q6.create(j.create(kVar.f3663a, kVar.f3664b, kVar.f3665c, str));
        this.f3671c.put(str, create);
        return create;
    }
}
