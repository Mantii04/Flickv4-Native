package d2;

import java.io.IOException;

/* renamed from: d2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0800i implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final C0800i f13551a = new C0800i();

    @Override // d2.InterfaceC0791H
    public Float parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        return Float.valueOf(p.d(aVar) * f3);
    }
}
