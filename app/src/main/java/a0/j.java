package a0;

import androidx.datastore.preferences.PreferencesProto$Value$ValueCase;
import androidx.datastore.preferences.protobuf.E;
import androidx.datastore.preferences.protobuf.F;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke;
import androidx.datastore.preferences.protobuf.InterfaceC0416f0;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* loaded from: classes.dex */
public final class j extends F {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    private static final j DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile InterfaceC0416f0 PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int bitField0_;
    private int valueCase_ = 0;
    private Object value_;

    static {
        j jVar = new j();
        DEFAULT_INSTANCE = jVar;
        F.registerDefaultInstance(j.class, jVar);
    }

    public static void d(j jVar, long j7) {
        jVar.valueCase_ = 4;
        jVar.value_ = Long.valueOf(j7);
    }

    public static void e(String str, j jVar) {
        jVar.getClass();
        str.getClass();
        jVar.valueCase_ = 5;
        jVar.value_ = str;
    }

    public static void f(j jVar, g gVar) {
        jVar.getClass();
        jVar.value_ = gVar.build();
        jVar.valueCase_ = 6;
    }

    public static void g(j jVar, double d7) {
        jVar.valueCase_ = 7;
        jVar.value_ = Double.valueOf(d7);
    }

    public static j getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static void i(j jVar, boolean z6) {
        jVar.valueCase_ = 1;
        jVar.value_ = Boolean.valueOf(z6);
    }

    public static void j(j jVar, float f3) {
        jVar.valueCase_ = 2;
        jVar.value_ = Float.valueOf(f3);
    }

    public static void k(j jVar, int i2) {
        jVar.valueCase_ = 3;
        jVar.value_ = Integer.valueOf(i2);
    }

    public static i newBuilder() {
        return (i) DEFAULT_INSTANCE.createBuilder();
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
                return F.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000", new Object[]{"value_", "valueCase_", "bitField0_", h.class});
            case 3:
                return new j();
            case 4:
                return new i(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0416f0 interfaceC0416f02 = PARSER;
                if (interfaceC0416f02 != null) {
                    return interfaceC0416f02;
                }
                synchronized (j.class) {
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

    public boolean getBoolean() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public double getDouble() {
        return this.valueCase_ == 7 ? ((Double) this.value_).doubleValue() : FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
    }

    public float getFloat() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    public int getInteger() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    public long getLong() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public String getString() {
        return this.valueCase_ == 5 ? (String) this.value_ : "";
    }

    public h getStringSet() {
        return this.valueCase_ == 6 ? (h) this.value_ : h.getDefaultInstance();
    }

    public PreferencesProto$Value$ValueCase getValueCase() {
        return PreferencesProto$Value$ValueCase.forNumber(this.valueCase_);
    }
}
