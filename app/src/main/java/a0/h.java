package a0;

import androidx.datastore.preferences.protobuf.AbstractC0407b;
import androidx.datastore.preferences.protobuf.E;
import androidx.datastore.preferences.protobuf.F;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke;
import androidx.datastore.preferences.protobuf.H;
import androidx.datastore.preferences.protobuf.InterfaceC0416f0;
import java.util.List;

/* loaded from: classes.dex */
public final class h extends F {
    private static final h DEFAULT_INSTANCE;
    private static volatile InterfaceC0416f0 PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private H strings_ = F.emptyProtobufList();

    static {
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        F.registerDefaultInstance(h.class, hVar);
    }

    public static void e(h hVar, Iterable iterable) {
        if (!hVar.strings_.isModifiable()) {
            hVar.strings_ = F.mutableCopy(hVar.strings_);
        }
        AbstractC0407b.addAll(iterable, hVar.strings_);
    }

    public static h getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static g newBuilder() {
        return (g) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // androidx.datastore.preferences.protobuf.F
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        InterfaceC0416f0 interfaceC0416f0;
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return F.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 3:
                return new h();
            case 4:
                return new g(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0416f0 interfaceC0416f02 = PARSER;
                if (interfaceC0416f02 != null) {
                    return interfaceC0416f02;
                }
                synchronized (h.class) {
                    try {
                        interfaceC0416f0 = PARSER;
                        if (interfaceC0416f0 == null) {
                            interfaceC0416f0 = new E(DEFAULT_INSTANCE);
                            PARSER = interfaceC0416f0;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return interfaceC0416f0;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public List<String> getStringsList() {
        return this.strings_;
    }
}
