package d2;

import java.io.IOException;

/* loaded from: classes.dex */
public final class o implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final o f13561a = new o();

    @Override // d2.InterfaceC0791H
    public Integer parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        return Integer.valueOf(Math.round(p.d(aVar) * f3));
    }
}
