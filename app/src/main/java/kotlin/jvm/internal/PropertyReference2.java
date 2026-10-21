package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class PropertyReference2 extends PropertyReference implements N5.k {
    public PropertyReference2(Class cls, String str, String str2, int i2) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i2);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.b computeReflected() {
        return l.property2(this);
    }

    @Override // N5.k
    public N5.j getGetter() {
        ((N5.k) getReflected()).getGetter();
        return null;
    }

    @Override // H5.p
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }
}
