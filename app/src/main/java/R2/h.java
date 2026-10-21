package R2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;

/* loaded from: classes.dex */
public final class h implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final h f3047a = new h();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3048b = FieldDescriptor.of("networkType");

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3049c = FieldDescriptor.of("mobileSubtype");

    @Override // com.google.firebase.encoders.Encoder
    public void encode(E e3, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3048b, e3.getNetworkType());
        objectEncoderContext.add(f3049c, e3.getMobileSubtype());
    }
}
