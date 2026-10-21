package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* renamed from: S2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0311a implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0311a f3311a = new C0311a();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3312b = FieldDescriptor.builder("window").withProperty(AtProtobuf.builder().tag(1).build()).build();

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3313c = FieldDescriptor.builder("logSourceMetrics").withProperty(AtProtobuf.builder().tag(2).build()).build();

    /* renamed from: d, reason: collision with root package name */
    public static final FieldDescriptor f3314d = FieldDescriptor.builder("globalMetrics").withProperty(AtProtobuf.builder().tag(3).build()).build();

    /* renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f3315e = FieldDescriptor.builder("appNamespace").withProperty(AtProtobuf.builder().tag(4).build()).build();

    @Override // com.google.firebase.encoders.Encoder
    public void encode(V2.b bVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3312b, bVar.getWindowInternal());
        objectEncoderContext.add(f3313c, bVar.getLogSourceMetricsList());
        objectEncoderContext.add(f3314d, bVar.getGlobalMetricsInternal());
        objectEncoderContext.add(f3315e, bVar.getAppNamespace());
    }
}
