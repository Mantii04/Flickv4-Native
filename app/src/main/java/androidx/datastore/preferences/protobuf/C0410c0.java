package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* renamed from: androidx.datastore.preferences.protobuf.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0410c0 implements InterfaceC0428l0 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0406a0 f5853a;

    /* renamed from: b, reason: collision with root package name */
    public final w0 f5854b;

    /* renamed from: c, reason: collision with root package name */
    public final C0439x f5855c;

    public C0410c0(w0 w0Var, C0439x c0439x, InterfaceC0406a0 interfaceC0406a0) {
        this.f5854b = w0Var;
        c0439x.getClass();
        this.f5855c = c0439x;
        this.f5853a = interfaceC0406a0;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public boolean equals(Object obj, Object obj2) {
        w0 w0Var = this.f5854b;
        ((y0) w0Var).getClass();
        x0 x0Var = ((F) obj).unknownFields;
        ((y0) w0Var).getClass();
        return x0Var.equals(((F) obj2).unknownFields);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public int getSerializedSize(Object obj) {
        ((y0) this.f5854b).getClass();
        return ((F) obj).unknownFields.getSerializedSizeAsMessageSet();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public int hashCode(Object obj) {
        ((y0) this.f5854b).getClass();
        return ((F) obj).unknownFields.hashCode();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public final boolean isInitialized(Object obj) {
        this.f5855c.getClass();
        A.i.y(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void makeImmutable(Object obj) {
        ((y0) this.f5854b).getClass();
        ((F) obj).unknownFields.makeImmutable();
        this.f5855c.getClass();
        A.i.y(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void mergeFrom(Object obj, Object obj2) {
        n0.x(this.f5854b, obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public Object newInstance() {
        return ((D) ((F) this.f5853a).m60newBuilderForType()).m56buildPartial();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void writeTo(Object obj, L0 l02) throws IOException {
        this.f5855c.getClass();
        A.i.y(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void mergeFrom(Object obj, InterfaceC0426k0 interfaceC0426k0, C0438w c0438w) throws IOException {
        ((y0) this.f5854b).getClass();
        F f3 = (F) obj;
        if (f3.unknownFields == x0.getDefaultInstance()) {
            f3.unknownFields = x0.a();
        }
        this.f5855c.getClass();
        obj.getClass();
        throw new ClassCastException();
    }
}
