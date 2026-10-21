package d2;

import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import e2.C0853a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* renamed from: d2.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0785B implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final C0785B f13533a = new C0785B();

    /* renamed from: b, reason: collision with root package name */
    public static final C0853a f13534b = C0853a.of("c", "v", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "o");

    @Override // d2.InterfaceC0791H
    public a2.k parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        if (aVar.peek() == JsonReader$Token.f9062b) {
            aVar.beginArray();
        }
        aVar.beginObject();
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        boolean z6 = false;
        while (aVar.hasNext()) {
            int selectName = aVar.selectName(f13534b);
            if (selectName == 0) {
                z6 = aVar.nextBoolean();
            } else if (selectName == 1) {
                arrayList = p.c(aVar, f3);
            } else if (selectName == 2) {
                arrayList2 = p.c(aVar, f3);
            } else if (selectName != 3) {
                aVar.skipName();
                aVar.skipValue();
            } else {
                arrayList3 = p.c(aVar, f3);
            }
        }
        aVar.endObject();
        if (aVar.peek() == JsonReader$Token.f9063e) {
            aVar.endArray();
        }
        if (arrayList == null || arrayList2 == null || arrayList3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (arrayList.isEmpty()) {
            return new a2.k(new PointF(), false, Collections.EMPTY_LIST);
        }
        int size = arrayList.size();
        PointF pointF = (PointF) arrayList.get(0);
        ArrayList arrayList4 = new ArrayList(size);
        for (int i2 = 1; i2 < size; i2++) {
            PointF pointF2 = (PointF) arrayList.get(i2);
            int i7 = i2 - 1;
            arrayList4.add(new Y1.a(f2.g.addPoints((PointF) arrayList.get(i7), (PointF) arrayList3.get(i7)), f2.g.addPoints(pointF2, (PointF) arrayList2.get(i2)), pointF2));
        }
        if (z6) {
            PointF pointF3 = (PointF) arrayList.get(0);
            int i8 = size - 1;
            arrayList4.add(new Y1.a(f2.g.addPoints((PointF) arrayList.get(i8), (PointF) arrayList3.get(i8)), f2.g.addPoints(pointF3, (PointF) arrayList2.get(0)), pointF3));
        }
        return new a2.k(pointF, z6, arrayList4);
    }
}
