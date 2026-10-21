package V2;

import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final long f3975a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3976b;

    static {
        new k().build();
    }

    public l(long j7, long j8) {
        this.f3975a = j7;
        this.f3976b = j8;
    }

    public static k newBuilder() {
        return new k();
    }

    @Protobuf(tag = 2)
    public long getEndMs() {
        return this.f3976b;
    }

    @Protobuf(tag = 1)
    public long getStartMs() {
        return this.f3975a;
    }
}
