package d2;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.io.IOException;

/* loaded from: classes.dex */
public final class w implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final w f13576a = new w();

    @Override // d2.InterfaceC0791H
    public PointF parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        JsonReader$Token peek = aVar.peek();
        if (peek == JsonReader$Token.f9062b) {
            return p.b(aVar, f3);
        }
        if (peek == JsonReader$Token.f9064f) {
            return p.b(aVar, f3);
        }
        if (peek != JsonReader$Token.f9068p) {
            throw new IllegalArgumentException("Cannot convert json to point. Next token is " + peek);
        }
        PointF pointF = new PointF(((float) aVar.nextDouble()) * f3, ((float) aVar.nextDouble()) * f3);
        while (aVar.hasNext()) {
            aVar.skipValue();
        }
        return pointF;
    }
}
