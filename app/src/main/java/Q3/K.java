package Q3;

import java.util.Map;

/* loaded from: classes2.dex */
public final class K implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ O f2864a;

    public K(O o6) {
        this.f2864a = o6;
    }

    @Override // P3.p
    public Map.Entry<Object, Object> apply(Map.Entry<Object, Object> entry) {
        O o6 = this.f2864a;
        P3.v.checkNotNull(o6);
        P3.v.checkNotNull(entry);
        return new J(entry, o6);
    }
}
