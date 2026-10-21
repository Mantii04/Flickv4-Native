package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class PropertyReference0 extends PropertyReference implements N5.g {
    public PropertyReference0(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.b computeReflected() {
        return l.property0(this);
    }

    @Override // H5.a
    public Object invoke() {
        return get();
    }
}
