package R2;

import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;

/* loaded from: classes.dex */
public final class i implements Configurator {

    /* renamed from: a, reason: collision with root package name */
    public static final i f3050a = new i();

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        C0259d c0259d = C0259d.f3026a;
        encoderConfig.registerEncoder(v.class, c0259d);
        encoderConfig.registerEncoder(l.class, c0259d);
        g gVar = g.f3039a;
        encoderConfig.registerEncoder(B.class, gVar);
        encoderConfig.registerEncoder(r.class, gVar);
        C0260e c0260e = C0260e.f3028a;
        encoderConfig.registerEncoder(x.class, c0260e);
        encoderConfig.registerEncoder(n.class, c0260e);
        C0258c c0258c = C0258c.f3013a;
        encoderConfig.registerEncoder(AbstractC0257b.class, c0258c);
        encoderConfig.registerEncoder(k.class, c0258c);
        f fVar = f.f3031a;
        encoderConfig.registerEncoder(z.class, fVar);
        encoderConfig.registerEncoder(p.class, fVar);
        h hVar = h.f3047a;
        encoderConfig.registerEncoder(E.class, hVar);
        encoderConfig.registerEncoder(u.class, hVar);
    }
}
