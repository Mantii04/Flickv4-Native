package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* renamed from: S2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0314d implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0314d f3321a = new C0314d();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3322b = FieldDescriptor.builder("logSource").withProperty(AtProtobuf.builder().tag(1).build()).build();

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3323c = FieldDescriptor.builder("logEventDropped").withProperty(AtProtobuf.builder().tag(2).build()).build();

    @Override // com.google.firebase.encoders.Encoder
    public void encode(V2.h hVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3322b, hVar.getLogSource());
        objectEncoderContext.add(f3323c, hVar.getLogEventDroppedList());
    }
}
