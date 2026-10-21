package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* renamed from: S2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0316f implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0316f f3325a = new C0316f();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3326b = FieldDescriptor.builder("currentCacheSizeBytes").withProperty(AtProtobuf.builder().tag(1).build()).build();

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3327c = FieldDescriptor.builder("maxCacheSizeBytes").withProperty(AtProtobuf.builder().tag(2).build()).build();

    @Override // com.google.firebase.encoders.Encoder
    public void encode(V2.j jVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3326b, jVar.getCurrentCacheSizeBytes());
        objectEncoderContext.add(f3327c, jVar.getMaxCacheSizeBytes());
    }
}
