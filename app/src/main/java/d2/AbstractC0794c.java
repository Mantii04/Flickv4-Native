package d2;

import T1.C0330i;
import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import e2.C0853a;
import g2.C0947a;
import g2.C0950d;
import java.io.IOException;

/* renamed from: d2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0794c {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13544a = C0853a.of(CmcdData.OBJECT_TYPE_AUDIO_ONLY, "p", CmcdData.STREAMING_FORMAT_SS, "rz", "r", "o", "so", "eo", "sk", "sa");

    /* renamed from: b, reason: collision with root package name */
    public static final C0853a f13545b = C0853a.of("k");

    public static Z1.l parse(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) throws IOException {
        C0330i c0330i2 = c0330i;
        boolean z6 = aVar.peek() == JsonReader$Token.f9064f;
        if (z6) {
            aVar.beginObject();
        }
        Z1.b bVar = null;
        Z1.e eVar = null;
        Z1.m mVar = null;
        Z1.g gVar = null;
        Z1.b bVar2 = null;
        Z1.b bVar3 = null;
        Z1.d dVar = null;
        Z1.b bVar4 = null;
        Z1.b bVar5 = null;
        while (aVar.hasNext()) {
            switch (aVar.selectName(f13544a)) {
                case 0:
                    aVar.beginObject();
                    while (aVar.hasNext()) {
                        if (aVar.selectName(f13545b) != 0) {
                            aVar.skipName();
                            aVar.skipValue();
                        } else {
                            eVar = AbstractC0792a.parse(aVar, c0330i);
                        }
                    }
                    aVar.endObject();
                    continue;
                case 1:
                    mVar = AbstractC0792a.a(aVar, c0330i);
                    continue;
                case 2:
                    gVar = new Z1.g(r.a(aVar, c0330i2, 1.0f, C0784A.f13532a));
                    continue;
                case 3:
                    c0330i2.addWarning("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    dVar = AbstractC0795d.b(aVar, c0330i);
                    continue;
                case 6:
                    bVar4 = AbstractC0795d.parseFloat(aVar, c0330i2, false);
                    continue;
                case 7:
                    bVar5 = AbstractC0795d.parseFloat(aVar, c0330i2, false);
                    continue;
                case 8:
                    bVar2 = AbstractC0795d.parseFloat(aVar, c0330i2, false);
                    continue;
                case 9:
                    bVar3 = AbstractC0795d.parseFloat(aVar, c0330i2, false);
                    continue;
                default:
                    aVar.skipName();
                    aVar.skipValue();
                    continue;
            }
            Z1.b parseFloat = AbstractC0795d.parseFloat(aVar, c0330i2, false);
            if (parseFloat.getKeyframes().isEmpty()) {
                parseFloat.getKeyframes().add(new C0947a(c0330i2, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(c0330i2.getEndFrame())));
            } else if (((C0947a) parseFloat.getKeyframes().get(0)).f16441b == null) {
                c0330i2 = c0330i;
                parseFloat.getKeyframes().set(0, new C0947a(c0330i2, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(c0330i.getEndFrame())));
                bVar = parseFloat;
            }
            c0330i2 = c0330i;
            bVar = parseFloat;
        }
        if (z6) {
            aVar.endObject();
        }
        Z1.e eVar2 = (eVar == null || (eVar.isStatic() && ((PointF) eVar.getKeyframes().get(0).f16441b).equals(0.0f, 0.0f))) ? null : eVar;
        if (mVar == null || (!(mVar instanceof Z1.i) && mVar.isStatic() && ((PointF) mVar.getKeyframes().get(0).f16441b).equals(0.0f, 0.0f))) {
            mVar = null;
        }
        return new Z1.l(eVar2, mVar, (gVar == null || (gVar.isStatic() && ((C0950d) ((C0947a) gVar.getKeyframes().get(0)).f16441b).equals(1.0f, 1.0f))) ? null : gVar, (bVar == null || (bVar.isStatic() && ((Float) ((C0947a) bVar.getKeyframes().get(0)).f16441b).floatValue() == 0.0f)) ? null : bVar, dVar, bVar4, bVar5, (bVar2 == null || (bVar2.isStatic() && ((Float) ((C0947a) bVar2.getKeyframes().get(0)).f16441b).floatValue() == 0.0f)) ? null : bVar2, (bVar3 == null || (bVar3.isStatic() && ((Float) ((C0947a) bVar3.getKeyframes().get(0)).f16441b).floatValue() == 0.0f)) ? null : bVar3);
    }
}
