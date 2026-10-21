package d2;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.io.IOException;

/* renamed from: d2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0797f implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final C0797f f13547a = new C0797f();

    @Override // d2.InterfaceC0791H
    public Integer parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        boolean z6 = aVar.peek() == JsonReader$Token.f9062b;
        if (z6) {
            aVar.beginArray();
        }
        double nextDouble = aVar.nextDouble();
        double nextDouble2 = aVar.nextDouble();
        double nextDouble3 = aVar.nextDouble();
        double nextDouble4 = aVar.nextDouble();
        if (z6) {
            aVar.endArray();
        }
        if (nextDouble <= 1.0d && nextDouble2 <= 1.0d && nextDouble3 <= 1.0d) {
            nextDouble *= 255.0d;
            nextDouble2 *= 255.0d;
            nextDouble3 *= 255.0d;
            if (nextDouble4 <= 1.0d) {
                nextDouble4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) nextDouble4, (int) nextDouble, (int) nextDouble2, (int) nextDouble3));
    }
}
