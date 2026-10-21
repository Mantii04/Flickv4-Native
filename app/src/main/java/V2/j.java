package V2;

import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final long f3971a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3972b;

    static {
        new i().build();
    }

    public j(long j7, long j8) {
        this.f3971a = j7;
        this.f3972b = j8;
    }

    public static i newBuilder() {
        return new i();
    }

    @Protobuf(tag = 1)
    public long getCurrentCacheSizeBytes() {
        return this.f3971a;
    }

    @Protobuf(tag = 2)
    public long getMaxCacheSizeBytes() {
        return this.f3972b;
    }
}
