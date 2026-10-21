package Q3;

import java.util.Map;

/* loaded from: classes2.dex */
public final class I implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ O f2861a;

    public I(O o6) {
        this.f2861a = o6;
    }

    @Override // P3.p
    public Object apply(Map.Entry<Object, Object> entry) {
        return this.f2861a.transformEntry(entry.getKey(), entry.getValue());
    }
}
