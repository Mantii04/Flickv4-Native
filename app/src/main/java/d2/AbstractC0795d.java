package d2;

import T1.C0330i;
import java.io.IOException;

/* renamed from: d2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0795d {
    public static Z1.a a(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) {
        return new Z1.a(r.a(aVar, c0330i, 1.0f, C0797f.f13547a));
    }

    public static Z1.d b(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) {
        return new Z1.d(r.a(aVar, c0330i, 1.0f, o.f13561a));
    }

    public static Z1.f c(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) {
        return new Z1.f(r.a(aVar, c0330i, f2.h.dpScale(), w.f13576a));
    }

    public static Z1.b parseFloat(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) throws IOException {
        return parseFloat(aVar, c0330i, true);
    }

    public static Z1.b parseFloat(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i, boolean z6) throws IOException {
        return new Z1.b(r.a(aVar, c0330i, z6 ? f2.h.dpScale() : 1.0f, C0800i.f13551a));
    }
}
