package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public abstract class PropertyReference1 extends PropertyReference implements N5.i {
    public PropertyReference1(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public N5.b computeReflected() {
        return l.property1(this);
    }

    @Override // N5.i
    public Object getDelegate(Object obj) {
        return ((N5.i) getReflected()).getDelegate(obj);
    }

    public /* bridge */ /* synthetic */ N5.f getGetter() {
        mo108getGetter();
        return null;
    }

    @Override // H5.l
    public Object invoke(Object obj) {
        return get(obj);
    }

    @Override // N5.i
    /* renamed from: getGetter, reason: collision with other method in class */
    public N5.h mo108getGetter() {
        ((N5.i) getReflected()).mo108getGetter();
        return null;
    }
}
