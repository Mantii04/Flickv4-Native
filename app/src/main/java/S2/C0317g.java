package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* renamed from: S2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0317g implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0317g f3328a = new C0317g();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3329b = FieldDescriptor.builder("startMs").withProperty(AtProtobuf.builder().tag(1).build()).build();

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3330c = FieldDescriptor.builder("endMs").withProperty(AtProtobuf.builder().tag(2).build()).build();

    @Override // com.google.firebase.encoders.Encoder
    public void encode(V2.l lVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3329b, lVar.getStartMs());
        objectEncoderContext.add(f3330c, lVar.getEndMs());
    }
}
