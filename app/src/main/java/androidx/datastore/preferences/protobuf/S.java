package androidx.datastore.preferences.protobuf;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class S implements m0 {

    /* renamed from: b, reason: collision with root package name */
    public static final P f5806b = new P();

    /* renamed from: a, reason: collision with root package name */
    public final Q f5807a;

    public S() {
        Y y6;
        C c7 = C.getInstance();
        try {
            y6 = (Y) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            y6 = f5806b;
        }
        Q q6 = new Q();
        q6.f5805a = new Y[]{c7, y6};
        Charset charset = I.f5777a;
        this.f5807a = q6;
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public <T> InterfaceC0428l0 createSchema(Class<T> cls) {
        n0.requireGeneratedMessage(cls);
        C0424j0 c0424j0 = (C0424j0) this.f5807a.messageInfoFor(cls);
        if (c0424j0.isMessageSetWireFormat()) {
            if (F.class.isAssignableFrom(cls)) {
                return new C0410c0(n0.unknownFieldSetLiteSchema(), AbstractC0440y.f5932a, c0424j0.getDefaultInstance());
            }
            w0 proto2UnknownFieldSetSchema = n0.proto2UnknownFieldSetSchema();
            C0439x c0439x = AbstractC0440y.f5933b;
            if (c0439x != null) {
                return new C0410c0(proto2UnknownFieldSetSchema, c0439x, c0424j0.getDefaultInstance());
            }
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        boolean isAssignableFrom = F.class.isAssignableFrom(cls);
        ProtoSyntax protoSyntax = ProtoSyntax.f5802b;
        if (isAssignableFrom) {
            return c0424j0.getSyntax() == protoSyntax ? C0408b0.o(c0424j0, AbstractC0414e0.f5860b, N.f5801b, n0.unknownFieldSetLiteSchema(), AbstractC0440y.f5932a, W.f5816b) : C0408b0.o(c0424j0, AbstractC0414e0.f5860b, N.f5801b, n0.unknownFieldSetLiteSchema(), null, W.f5816b);
        }
        if (c0424j0.getSyntax() != protoSyntax) {
            return C0408b0.o(c0424j0, AbstractC0414e0.f5859a, N.f5800a, n0.proto3UnknownFieldSetSchema(), null, W.f5815a);
        }
        C0412d0 c0412d0 = AbstractC0414e0.f5859a;
        L l7 = N.f5800a;
        w0 proto2UnknownFieldSetSchema2 = n0.proto2UnknownFieldSetSchema();
        C0439x c0439x2 = AbstractC0440y.f5933b;
        if (c0439x2 != null) {
            return C0408b0.o(c0424j0, c0412d0, l7, proto2UnknownFieldSetSchema2, c0439x2, W.f5815a);
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
