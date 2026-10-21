package V2;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final j f3960a;

    static {
        new c().build();
    }

    public d(j jVar) {
        this.f3960a = jVar;
    }

    public static c newBuilder() {
        return new c();
    }

    @Protobuf(tag = 1)
    @Encodable.Field(name = "storageMetrics")
    public j getStorageMetricsInternal() {
        return this.f3960a;
    }
}
