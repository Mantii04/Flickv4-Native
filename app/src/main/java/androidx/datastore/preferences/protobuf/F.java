package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class F extends AbstractC0407b {
    private static Map<Object, F> defaultInstanceMap = new ConcurrentHashMap();
    protected x0 unknownFields = x0.getDefaultInstance();
    protected int memoizedSerializedSize = -1;

    public static F b(Class cls) {
        F f3 = defaultInstanceMap.get(cls);
        if (f3 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                f3 = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e3) {
                throw new IllegalStateException("Class initialization cannot fail.", e3);
            }
        }
        if (f3 != null) {
            return f3;
        }
        F m59getDefaultInstanceForType = ((F) H0.a(cls)).m59getDefaultInstanceForType();
        if (m59getDefaultInstanceForType == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, m59getDefaultInstanceForType);
        return m59getDefaultInstanceForType;
    }

    public static Object c(Method method, InterfaceC0406a0 interfaceC0406a0, Object... objArr) {
        try {
            return method.invoke(interfaceC0406a0, objArr);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e3);
        } catch (InvocationTargetException e7) {
            Throwable cause = e7.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <E> H emptyProtobufList() {
        return C0422i0.emptyList();
    }

    public static <E> H mutableCopy(H h7) {
        int size = h7.size();
        return h7.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    public static Object newMessageInfo(InterfaceC0406a0 interfaceC0406a0, String str, Object[] objArr) {
        return new C0424j0(interfaceC0406a0, str, objArr);
    }

    public static <T extends F> T parseFrom(T t6, InputStream inputStream) throws InvalidProtocolBufferException {
        AbstractC0432p newInstance = AbstractC0432p.newInstance(inputStream);
        C0438w emptyRegistry = C0438w.getEmptyRegistry();
        T t7 = (T) t6.dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5765j);
        try {
            InterfaceC0428l0 schemaFor = C0420h0.getInstance().schemaFor((C0420h0) t7);
            schemaFor.mergeFrom(t7, C0433q.forCodedInput(newInstance), emptyRegistry);
            schemaFor.makeImmutable(t7);
            if (t7 == null || t7.isInitialized()) {
                return t7;
            }
            throw new UninitializedMessageException(t7).asInvalidProtocolBufferException().setUnfinishedMessage(t7);
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new InvalidProtocolBufferException(e3.getMessage()).setUnfinishedMessage(t7);
        } catch (RuntimeException e7) {
            if (e7.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e7.getCause());
            }
            throw e7;
        }
    }

    public static <T extends F> void registerDefaultInstance(Class<T> cls, T t6) {
        defaultInstanceMap.put(cls, t6);
    }

    public final <MessageType extends F, BuilderType extends D> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5766m);
    }

    public Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj) {
        return dynamicMethod(generatedMessageLite$MethodToInvoke, obj, null);
    }

    public abstract Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (m59getDefaultInstanceForType().getClass().isInstance(obj)) {
            return C0420h0.getInstance().schemaFor((C0420h0) this).equals(this, (F) obj);
        }
        return false;
    }

    public int getSerializedSize() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = C0420h0.getInstance().schemaFor((C0420h0) this).getSerializedSize(this);
        }
        return this.memoizedSerializedSize;
    }

    public int hashCode() {
        int i2 = this.memoizedHashCode;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = C0420h0.getInstance().schemaFor((C0420h0) this).hashCode(this);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    public void makeImmutable() {
        C0420h0.getInstance().schemaFor((C0420h0) this).makeImmutable(this);
    }

    public String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        I0.k(this, sb, 0);
        return sb.toString();
    }

    public void writeTo(AbstractC0434s abstractC0434s) throws IOException {
        C0420h0.getInstance().schemaFor((C0420h0) this).writeTo(this, C0435t.forCodedOutput(abstractC0434s));
    }

    public static final <T extends F> boolean isInitialized(T t6, boolean z6) {
        byte byteValue = ((Byte) t6.dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5762b)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean isInitialized = C0420h0.getInstance().schemaFor((C0420h0) t6).isInitialized(t6);
        if (z6) {
            t6.dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5763e, isInitialized ? t6 : null);
        }
        return isInitialized;
    }

    public Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        return dynamicMethod(generatedMessageLite$MethodToInvoke, null, null);
    }

    /* renamed from: getDefaultInstanceForType, reason: merged with bridge method [inline-methods] */
    public final F m59getDefaultInstanceForType() {
        return (F) dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5767n);
    }

    /* renamed from: newBuilderForType, reason: merged with bridge method [inline-methods] */
    public final D m60newBuilderForType() {
        return (D) dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5766m);
    }

    /* renamed from: toBuilder, reason: merged with bridge method [inline-methods] */
    public final D m61toBuilder() {
        D d7 = (D) dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5766m);
        d7.mergeFrom(this);
        return d7;
    }
}
