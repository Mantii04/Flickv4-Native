package d2;

import T1.C0330i;
import androidx.media3.exoplayer.upstream.CmcdData;
import e2.C0853a;
import java.io.IOException;

/* renamed from: d2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0793b {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13542a = C0853a.of(CmcdData.OBJECT_TYPE_AUDIO_ONLY);

    /* renamed from: b, reason: collision with root package name */
    public static final C0853a f13543b = C0853a.of("fc", "sc", "sw", "t");

    public static Z1.k parse(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) throws IOException {
        aVar.beginObject();
        Z1.k kVar = null;
        while (aVar.hasNext()) {
            if (aVar.selectName(f13542a) != 0) {
                aVar.skipName();
                aVar.skipValue();
            } else {
                aVar.beginObject();
                Z1.a aVar2 = null;
                Z1.a aVar3 = null;
                Z1.b bVar = null;
                Z1.b bVar2 = null;
                while (aVar.hasNext()) {
                    int selectName = aVar.selectName(f13543b);
                    if (selectName == 0) {
                        aVar2 = AbstractC0795d.a(aVar, c0330i);
                    } else if (selectName == 1) {
                        aVar3 = AbstractC0795d.a(aVar, c0330i);
                    } else if (selectName == 2) {
                        bVar = AbstractC0795d.parseFloat(aVar, c0330i);
                    } else if (selectName != 3) {
                        aVar.skipName();
                        aVar.skipValue();
                    } else {
                        bVar2 = AbstractC0795d.parseFloat(aVar, c0330i);
                    }
                }
                aVar.endObject();
                kVar = new Z1.k(aVar2, aVar3, bVar, bVar2);
            }
        }
        aVar.endObject();
        return kVar == null ? new Z1.k(null, null, null, null) : kVar;
    }
}
