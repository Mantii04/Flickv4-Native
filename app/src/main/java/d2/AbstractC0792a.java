package d2;

import T1.C0330i;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import e2.C0853a;
import g2.C0947a;
import java.io.IOException;
import java.util.ArrayList;

/* renamed from: d2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0792a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13541a = C0853a.of("k", "x", "y");

    public static Z1.m a(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) {
        aVar.beginObject();
        Z1.e eVar = null;
        Z1.b bVar = null;
        boolean z6 = false;
        Z1.b bVar2 = null;
        while (aVar.peek() != JsonReader$Token.f9065j) {
            int selectName = aVar.selectName(f13541a);
            if (selectName != 0) {
                JsonReader$Token jsonReader$Token = JsonReader$Token.f9067n;
                if (selectName != 1) {
                    if (selectName != 2) {
                        aVar.skipName();
                        aVar.skipValue();
                    } else if (aVar.peek() == jsonReader$Token) {
                        aVar.skipValue();
                        z6 = true;
                    } else {
                        bVar = AbstractC0795d.parseFloat(aVar, c0330i);
                    }
                } else if (aVar.peek() == jsonReader$Token) {
                    aVar.skipValue();
                    z6 = true;
                } else {
                    bVar2 = AbstractC0795d.parseFloat(aVar, c0330i);
                }
            } else {
                eVar = parse(aVar, c0330i);
            }
        }
        aVar.endObject();
        if (z6) {
            c0330i.addWarning("Lottie doesn't support expressions.");
        }
        return eVar != null ? eVar : new Z1.i(bVar2, bVar);
    }

    public static Z1.e parse(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (aVar.peek() == JsonReader$Token.f9062b) {
            aVar.beginArray();
            while (aVar.hasNext()) {
                arrayList.add(new W1.m(c0330i, q.a(aVar, c0330i, f2.h.dpScale(), v.f13575a, aVar.peek() == JsonReader$Token.f9064f)));
            }
            aVar.endArray();
            r.setEndFrames(arrayList);
        } else {
            arrayList.add(new C0947a(p.b(aVar, f2.h.dpScale())));
        }
        return new Z1.e(arrayList);
    }
}
