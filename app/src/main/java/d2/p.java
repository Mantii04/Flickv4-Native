package d2;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import e2.C0853a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13562a = C0853a.of("x", "y");

    public static int a(com.airbnb.lottie.parser.moshi.a aVar) {
        aVar.beginArray();
        int nextDouble = (int) (aVar.nextDouble() * 255.0d);
        int nextDouble2 = (int) (aVar.nextDouble() * 255.0d);
        int nextDouble3 = (int) (aVar.nextDouble() * 255.0d);
        while (aVar.hasNext()) {
            aVar.skipValue();
        }
        aVar.endArray();
        return Color.argb(255, nextDouble, nextDouble2, nextDouble3);
    }

    public static PointF b(com.airbnb.lottie.parser.moshi.a aVar, float f3) {
        int ordinal = aVar.peek().ordinal();
        if (ordinal == 0) {
            aVar.beginArray();
            float nextDouble = (float) aVar.nextDouble();
            float nextDouble2 = (float) aVar.nextDouble();
            while (aVar.peek() != JsonReader$Token.f9063e) {
                aVar.skipValue();
            }
            aVar.endArray();
            return new PointF(nextDouble * f3, nextDouble2 * f3);
        }
        if (ordinal != 2) {
            if (ordinal != 6) {
                throw new IllegalArgumentException("Unknown point starts with " + aVar.peek());
            }
            float nextDouble3 = (float) aVar.nextDouble();
            float nextDouble4 = (float) aVar.nextDouble();
            while (aVar.hasNext()) {
                aVar.skipValue();
            }
            return new PointF(nextDouble3 * f3, nextDouble4 * f3);
        }
        aVar.beginObject();
        float f7 = 0.0f;
        float f8 = 0.0f;
        while (aVar.hasNext()) {
            int selectName = aVar.selectName(f13562a);
            if (selectName == 0) {
                f7 = d(aVar);
            } else if (selectName != 1) {
                aVar.skipName();
                aVar.skipValue();
            } else {
                f8 = d(aVar);
            }
        }
        aVar.endObject();
        return new PointF(f7 * f3, f8 * f3);
    }

    public static ArrayList c(com.airbnb.lottie.parser.moshi.a aVar, float f3) {
        ArrayList arrayList = new ArrayList();
        aVar.beginArray();
        while (aVar.peek() == JsonReader$Token.f9062b) {
            aVar.beginArray();
            arrayList.add(b(aVar, f3));
            aVar.endArray();
        }
        aVar.endArray();
        return arrayList;
    }

    public static float d(com.airbnb.lottie.parser.moshi.a aVar) {
        JsonReader$Token peek = aVar.peek();
        int ordinal = peek.ordinal();
        if (ordinal != 0) {
            if (ordinal == 6) {
                return (float) aVar.nextDouble();
            }
            throw new IllegalArgumentException("Unknown value for token of type " + peek);
        }
        aVar.beginArray();
        float nextDouble = (float) aVar.nextDouble();
        while (aVar.hasNext()) {
            aVar.skipValue();
        }
        aVar.endArray();
        return nextDouble;
    }
}
