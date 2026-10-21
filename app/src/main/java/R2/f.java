package R2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import java.io.IOException;

/* loaded from: classes.dex */
public final class f implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final f f3031a = new f();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3032b = FieldDescriptor.of("eventTimeMs");

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3033c = FieldDescriptor.of("eventCode");

    /* renamed from: d, reason: collision with root package name */
    public static final FieldDescriptor f3034d = FieldDescriptor.of("eventUptimeMs");

    /* renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f3035e = FieldDescriptor.of("sourceExtension");

    /* renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f3036f = FieldDescriptor.of("sourceExtensionJsonProto3");

    /* renamed from: g, reason: collision with root package name */
    public static final FieldDescriptor f3037g = FieldDescriptor.of("timezoneOffsetSeconds");

    /* renamed from: h, reason: collision with root package name */
    public static final FieldDescriptor f3038h = FieldDescriptor.of("networkConnectionInfo");

    @Override // com.google.firebase.encoders.Encoder
    public void encode(z zVar, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3032b, zVar.getEventTimeMs());
        objectEncoderContext.add(f3033c, zVar.getEventCode());
        objectEncoderContext.add(f3034d, zVar.getEventUptimeMs());
        objectEncoderContext.add(f3035e, zVar.getSourceExtension());
        objectEncoderContext.add(f3036f, zVar.getSourceExtensionJsonProto3());
        objectEncoderContext.add(f3037g, zVar.getTimezoneOffsetSeconds());
        objectEncoderContext.add(f3038h, zVar.getNetworkConnectionInfo());
    }
}
