package R2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;

/* loaded from: classes.dex */
public final class g implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final g f3039a = new g();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3040b = FieldDescriptor.of("requestTimeMs");

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3041c = FieldDescriptor.of("requestUptimeMs");

    /* renamed from: d, reason: collision with root package name */
    public static final FieldDescriptor f3042d = FieldDescriptor.of("clientInfo");

    /* renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f3043e = FieldDescriptor.of("logSource");

    /* renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f3044f = FieldDescriptor.of("logSourceName");

    /* renamed from: g, reason: collision with root package name */
    public static final FieldDescriptor f3045g = FieldDescriptor.of("logEvent");

    /* renamed from: h, reason: collision with root package name */
    public static final FieldDescriptor f3046h = FieldDescriptor.of("qosTier");

    @Override // com.google.firebase.encoders.Encoder
    public void encode(B b7, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3040b, b7.getRequestTimeMs());
        objectEncoderContext.add(f3041c, b7.getRequestUptimeMs());
        objectEncoderContext.add(f3042d, b7.getClientInfo());
        objectEncoderContext.add(f3043e, b7.getLogSource());
        objectEncoderContext.add(f3044f, b7.getLogSourceName());
        objectEncoderContext.add(f3045g, b7.getLogEvents());
        objectEncoderContext.add(f3046h, b7.getQosTier());
    }
}
