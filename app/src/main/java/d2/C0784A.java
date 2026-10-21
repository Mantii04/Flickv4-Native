package d2;

import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import g2.C0950d;
import java.io.IOException;

/* renamed from: d2.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0784A implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final C0784A f13532a = new C0784A();

    @Override // d2.InterfaceC0791H
    public C0950d parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        boolean z6 = aVar.peek() == JsonReader$Token.f9062b;
        if (z6) {
            aVar.beginArray();
        }
        float nextDouble = (float) aVar.nextDouble();
        float nextDouble2 = (float) aVar.nextDouble();
        while (aVar.hasNext()) {
            aVar.skipValue();
        }
        if (z6) {
            aVar.endArray();
        }
        return new C0950d((nextDouble / 100.0f) * f3, (nextDouble2 / 100.0f) * f3);
    }
}
