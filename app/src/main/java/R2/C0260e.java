package R2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;

/* renamed from: R2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0260e implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0260e f3028a = new C0260e();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3029b = FieldDescriptor.of("clientType");

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3030c = FieldDescriptor.of("androidClientInfo");

    @Override // com.google.firebase.encoders.Encoder
    public void encode(x xVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3029b, xVar.getClientType());
        objectEncoderContext.add(f3030c, xVar.getAndroidClientInfo());
    }
}
