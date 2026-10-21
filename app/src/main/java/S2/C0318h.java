package S2;

import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;

/* renamed from: S2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0318h implements Configurator {

    /* renamed from: a, reason: collision with root package name */
    public static final C0318h f3331a = new C0318h();

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        encoderConfig.registerEncoder(y.class, C0315e.f3324a);
        encoderConfig.registerEncoder(V2.b.class, C0311a.f3311a);
        encoderConfig.registerEncoder(V2.l.class, C0317g.f3328a);
        encoderConfig.registerEncoder(V2.h.class, C0314d.f3321a);
        encoderConfig.registerEncoder(V2.f.class, C0313c.f3318a);
        encoderConfig.registerEncoder(V2.d.class, C0312b.f3316a);
        encoderConfig.registerEncoder(V2.j.class, C0316f.f3325a);
    }
}
