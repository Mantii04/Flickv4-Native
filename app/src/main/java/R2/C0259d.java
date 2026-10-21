package R2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;

/* renamed from: R2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0259d implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0259d f3026a = new C0259d();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3027b = FieldDescriptor.of("logRequest");

    @Override // com.google.firebase.encoders.Encoder
    public void encode(v vVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3027b, vVar.getLogRequests());
    }
}
