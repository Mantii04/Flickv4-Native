package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* renamed from: S2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0312b implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0312b f3316a = new C0312b();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3317b = FieldDescriptor.builder("storageMetrics").withProperty(AtProtobuf.builder().tag(1).build()).build();

    @Override // com.google.firebase.encoders.Encoder
    public void encode(V2.d dVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3317b, dVar.getStorageMetricsInternal());
    }
}
