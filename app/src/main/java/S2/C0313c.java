package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* renamed from: S2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0313c implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0313c f3318a = new C0313c();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3319b = FieldDescriptor.builder("eventsDroppedCount").withProperty(AtProtobuf.builder().tag(1).build()).build();

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3320c = FieldDescriptor.builder("reason").withProperty(AtProtobuf.builder().tag(3).build()).build();

    @Override // com.google.firebase.encoders.Encoder
    public void encode(V2.f fVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3319b, fVar.getEventsDroppedCount());
        objectEncoderContext.add(f3320c, fVar.getReason());
    }
}
