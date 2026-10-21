package S2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;

/* renamed from: S2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0315e implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0315e f3324a = new C0315e();

    static {
        FieldDescriptor.of("clientMetrics");
    }

    @Override // com.google.firebase.encoders.Encoder
    public /* synthetic */ void encode(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        if (obj != null) {
            throw new ClassCastException();
        }
        encode((y) null, objectEncoderContext);
    }

    public void encode(y yVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw null;
    }
}
