package androidx.datastore.preferences.protobuf;

import java.util.concurrent.ConcurrentHashMap;

/* renamed from: androidx.datastore.preferences.protobuf.h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0420h0 {

    /* renamed from: c, reason: collision with root package name */
    public static final C0420h0 f5864c = new C0420h0();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f5866b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final S f5865a = new S();

    public static C0420h0 getInstance() {
        return f5864c;
    }

    public InterfaceC0428l0 registerSchema(Class<?> cls, InterfaceC0428l0 interfaceC0428l0) {
        I.a(cls, "messageType");
        I.a(interfaceC0428l0, "schema");
        return (InterfaceC0428l0) this.f5866b.putIfAbsent(cls, interfaceC0428l0);
    }

    public <T> InterfaceC0428l0 schemaFor(Class<T> cls) {
        InterfaceC0428l0 registerSchema;
        I.a(cls, "messageType");
        InterfaceC0428l0 interfaceC0428l0 = (InterfaceC0428l0) this.f5866b.get(cls);
        return (interfaceC0428l0 != null || (registerSchema = registerSchema(cls, (interfaceC0428l0 = this.f5865a.createSchema(cls)))) == null) ? interfaceC0428l0 : registerSchema;
    }

    public <T> InterfaceC0428l0 schemaFor(T t6) {
        return schemaFor((Class) t6.getClass());
    }
}
