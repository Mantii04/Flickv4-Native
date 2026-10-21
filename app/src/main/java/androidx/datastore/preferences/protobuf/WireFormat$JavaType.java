package androidx.datastore.preferences.protobuf;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.Serializable;

/* loaded from: classes.dex */
public enum WireFormat$JavaType {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(ByteString.f5743e),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: b, reason: collision with root package name */
    public final Serializable f5833b;

    WireFormat$JavaType(Serializable serializable) {
        this.f5833b = serializable;
    }
}
