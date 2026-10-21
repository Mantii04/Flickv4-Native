package S2;

import com.google.firebase.encoders.proto.ProtobufEncoder;

/* loaded from: classes.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public static final ProtobufEncoder f3375a = ProtobufEncoder.builder().configureWith(C0318h.f3331a).build();

    public static byte[] encode(Object obj) {
        return f3375a.encode(obj);
    }
}
