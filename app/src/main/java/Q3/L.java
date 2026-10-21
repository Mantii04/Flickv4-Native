package Q3;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class L extends t0 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2865e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ L(Iterator it, int i2) {
        super(it);
        this.f2865e = i2;
    }

    @Override // Q3.t0
    public final Object a(Object obj) {
        switch (this.f2865e) {
            case 0:
                return ((Map.Entry) obj).getKey();
            default:
                return ((Map.Entry) obj).getValue();
        }
    }
}
