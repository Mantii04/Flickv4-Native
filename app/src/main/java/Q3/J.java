package Q3;

import java.util.Map;

/* loaded from: classes2.dex */
public final class J extends AbstractC0234d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f2862b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ O f2863e;

    public J(Map.Entry entry, O o6) {
        this.f2862b = entry;
        this.f2863e = o6;
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Object getKey() {
        return this.f2862b.getKey();
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Object getValue() {
        Map.Entry entry = this.f2862b;
        return this.f2863e.transformEntry(entry.getKey(), entry.getValue());
    }
}
