package Q3;

import com.google.common.collect.AbstractC0766e;
import com.google.common.collect.AbstractMapBasedMultimap;

/* renamed from: Q3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0232b extends AbstractC0766e {

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ int f2877n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0232b(AbstractMapBasedMultimap abstractMapBasedMultimap, int i2) {
        super(abstractMapBasedMultimap);
        this.f2877n = i2;
    }

    @Override // com.google.common.collect.AbstractC0766e
    public final Object a(Object obj, Object obj2) {
        switch (this.f2877n) {
            case 0:
                return obj2;
            default:
                return com.google.common.collect.C.immutableEntry(obj, obj2);
        }
    }
}
