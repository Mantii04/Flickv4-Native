package a0;

import androidx.datastore.preferences.protobuf.E;
import androidx.datastore.preferences.protobuf.F;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke;
import androidx.datastore.preferences.protobuf.InterfaceC0416f0;
import androidx.datastore.preferences.protobuf.MapFieldLite;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class f extends F {
    private static final f DEFAULT_INSTANCE;
    private static volatile InterfaceC0416f0 PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private MapFieldLite<String, j> preferences_ = MapFieldLite.emptyMapField();

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        F.registerDefaultInstance(f.class, fVar);
    }

    public static MapFieldLite e(f fVar) {
        if (!fVar.preferences_.isMutable()) {
            fVar.preferences_ = fVar.preferences_.mutableCopy();
        }
        return fVar.preferences_;
    }

    public static C0377d newBuilder() {
        return (C0377d) DEFAULT_INSTANCE.createBuilder();
    }

    public static f parseFrom(InputStream inputStream) throws IOException {
        return (f) F.parseFrom(DEFAULT_INSTANCE, inputStream);
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
                return F.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", e.f4619a});
            case 3:
                return new f();
            case 4:
                return new C0377d(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0416f0 interfaceC0416f02 = PARSER;
                if (interfaceC0416f02 != null) {
                    return interfaceC0416f02;
                }
                synchronized (f.class) {
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

    public Map<String, j> getPreferencesMap() {
        return Collections.unmodifiableMap(this.preferences_);
    }
}
