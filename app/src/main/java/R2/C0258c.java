package R2;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.io.IOException;

/* renamed from: R2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0258c implements ObjectEncoder {

    /* renamed from: a, reason: collision with root package name */
    public static final C0258c f3013a = new C0258c();

    /* renamed from: b, reason: collision with root package name */
    public static final FieldDescriptor f3014b = FieldDescriptor.of(RemoteConfigConstants.RequestFieldKey.SDK_VERSION);

    /* renamed from: c, reason: collision with root package name */
    public static final FieldDescriptor f3015c = FieldDescriptor.of("model");

    /* renamed from: d, reason: collision with root package name */
    public static final FieldDescriptor f3016d = FieldDescriptor.of("hardware");

    /* renamed from: e, reason: collision with root package name */
    public static final FieldDescriptor f3017e = FieldDescriptor.of("device");

    /* renamed from: f, reason: collision with root package name */
    public static final FieldDescriptor f3018f = FieldDescriptor.of("product");

    /* renamed from: g, reason: collision with root package name */
    public static final FieldDescriptor f3019g = FieldDescriptor.of("osBuild");

    /* renamed from: h, reason: collision with root package name */
    public static final FieldDescriptor f3020h = FieldDescriptor.of("manufacturer");

    /* renamed from: i, reason: collision with root package name */
    public static final FieldDescriptor f3021i = FieldDescriptor.of("fingerprint");

    /* renamed from: j, reason: collision with root package name */
    public static final FieldDescriptor f3022j = FieldDescriptor.of("locale");

    /* renamed from: k, reason: collision with root package name */
    public static final FieldDescriptor f3023k = FieldDescriptor.of("country");

    /* renamed from: l, reason: collision with root package name */
    public static final FieldDescriptor f3024l = FieldDescriptor.of("mccMnc");

    /* renamed from: m, reason: collision with root package name */
    public static final FieldDescriptor f3025m = FieldDescriptor.of("applicationBuild");

    @Override // com.google.firebase.encoders.Encoder
    public void encode(AbstractC0257b abstractC0257b, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f3014b, abstractC0257b.getSdkVersion());
        objectEncoderContext.add(f3015c, abstractC0257b.getModel());
        objectEncoderContext.add(f3016d, abstractC0257b.getHardware());
        objectEncoderContext.add(f3017e, abstractC0257b.getDevice());
        objectEncoderContext.add(f3018f, abstractC0257b.getProduct());
        objectEncoderContext.add(f3019g, abstractC0257b.getOsBuild());
        objectEncoderContext.add(f3020h, abstractC0257b.getManufacturer());
        objectEncoderContext.add(f3021i, abstractC0257b.getFingerprint());
        objectEncoderContext.add(f3022j, abstractC0257b.getLocale());
        objectEncoderContext.add(f3023k, abstractC0257b.getCountry());
        objectEncoderContext.add(f3024l, abstractC0257b.getMccMnc());
        objectEncoderContext.add(f3025m, abstractC0257b.getApplicationBuild());
    }
}
