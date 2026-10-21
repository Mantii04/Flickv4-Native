package d2;

import T1.C0330i;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import e2.C0853a;
import g2.C0947a;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13566a = C0853a.of("k");

    public static ArrayList a(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i, float f3, InterfaceC0791H interfaceC0791H) {
        ArrayList arrayList = new ArrayList();
        if (aVar.peek() == JsonReader$Token.f9067n) {
            c0330i.addWarning("Lottie doesn't support expressions.");
            return arrayList;
        }
        aVar.beginObject();
        while (aVar.hasNext()) {
            if (aVar.selectName(f13566a) != 0) {
                aVar.skipValue();
            } else if (aVar.peek() == JsonReader$Token.f9062b) {
                aVar.beginArray();
                if (aVar.peek() == JsonReader$Token.f9068p) {
                    arrayList.add(q.a(aVar, c0330i, f3, interfaceC0791H, false));
                } else {
                    while (aVar.hasNext()) {
                        arrayList.add(q.a(aVar, c0330i, f3, interfaceC0791H, true));
                    }
                }
                aVar.endArray();
            } else {
                arrayList.add(q.a(aVar, c0330i, f3, interfaceC0791H, false));
            }
        }
        aVar.endObject();
        setEndFrames(arrayList);
        return arrayList;
    }

    public static <T> void setEndFrames(List<? extends C0947a> list) {
        int i2;
        Object obj;
        int size = list.size();
        int i7 = 0;
        while (true) {
            i2 = size - 1;
            if (i7 >= i2) {
                break;
            }
            C0947a c0947a = list.get(i7);
            i7++;
            C0947a c0947a2 = list.get(i7);
            c0947a.f16445f = Float.valueOf(c0947a2.f16444e);
            if (c0947a.f16442c == null && (obj = c0947a2.f16441b) != null) {
                c0947a.f16442c = obj;
                if (c0947a instanceof W1.m) {
                    ((W1.m) c0947a).createPath();
                }
            }
        }
        C0947a c0947a3 = list.get(i2);
        if ((c0947a3.f16441b == null || c0947a3.f16442c == null) && list.size() > 1) {
            list.remove(c0947a3);
        }
    }
}
