package androidx.datastore.preferences.protobuf;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.Serializable;

/* loaded from: classes.dex */
public enum JavaType {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, ""),
    BYTE_STRING(ByteString.class, ByteString.f5743e),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: b, reason: collision with root package name */
    public final Class f5795b;

    /* renamed from: e, reason: collision with root package name */
    public final Serializable f5796e;

    JavaType(Class cls, Serializable serializable) {
        this.f5795b = cls;
        this.f5796e = serializable;
    }

    public Class<?> getBoxedType() {
        return this.f5795b;
    }
}
