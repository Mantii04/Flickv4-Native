package d2;

import T1.C0330i;
import a2.InterfaceC0381b;
import android.graphics.Color;
import android.graphics.Rect;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import b2.C0645e;
import com.airbnb.lottie.model.content.Mask$MaskMode;
import com.airbnb.lottie.model.layer.Layer$LayerType;
import com.airbnb.lottie.model.layer.Layer$MatteType;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import e2.C0853a;
import f2.AbstractC0923d;
import g2.C0947a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13567a = C0853a.of("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", CmcdConfiguration.KEY_STREAM_TYPE, "w", CmcdData.STREAMING_FORMAT_HLS, "ip", "op", "tm", "cl", "hd");

    /* renamed from: b, reason: collision with root package name */
    public static final C0853a f13568b = C0853a.of("d", CmcdData.OBJECT_TYPE_AUDIO_ONLY);

    /* renamed from: c, reason: collision with root package name */
    public static final C0853a f13569c = C0853a.of("nm");

    public static C0645e parse(C0330i c0330i) {
        Rect bounds = c0330i.getBounds();
        List list = Collections.EMPTY_LIST;
        return new C0645e(list, c0330i, "__container", -1L, Layer$LayerType.f9051b, -1L, null, list, new Z1.l(), 0, 0, 0, 0.0f, 0.0f, bounds.width(), bounds.height(), null, null, list, Layer$MatteType.f9055b, null, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static C0645e parse(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        Float f3;
        Float f7;
        float f8;
        float f9;
        char c7;
        Mask$MaskMode mask$MaskMode;
        char c8;
        Mask$MaskMode mask$MaskMode2;
        int i2 = 1;
        Layer$MatteType layer$MatteType = Layer$MatteType.f9055b;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        aVar.beginObject();
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(0.0f);
        String str = "UNSET";
        long j7 = 0;
        boolean z6 = false;
        long j8 = -1;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        boolean z7 = false;
        Layer$MatteType layer$MatteType2 = layer$MatteType;
        float f10 = 1.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        String str2 = null;
        String str3 = null;
        Layer$LayerType layer$LayerType = null;
        Z1.l lVar = null;
        Z1.j jVar = null;
        Z1.k kVar = null;
        Z1.b bVar = null;
        int i10 = 0;
        int i11 = 0;
        while (aVar.hasNext()) {
            switch (aVar.selectName(f13567a)) {
                case 0:
                    f3 = valueOf2;
                    str = aVar.nextString();
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 1:
                    f3 = valueOf2;
                    j7 = aVar.nextInt();
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 2:
                    f3 = valueOf2;
                    str2 = aVar.nextString();
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 3:
                    Float f14 = valueOf2;
                    int i12 = i2;
                    float f15 = f11;
                    int nextInt = aVar.nextInt();
                    if (nextInt < 6) {
                        layer$LayerType = Layer$LayerType.values()[nextInt];
                    } else {
                        layer$LayerType = Layer$LayerType.f9053f;
                    }
                    i2 = i12;
                    valueOf2 = f14;
                    f11 = f15;
                    z6 = false;
                    break;
                case 4:
                    f3 = valueOf2;
                    j8 = aVar.nextInt();
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 5:
                    f3 = valueOf2;
                    i10 = (int) (f2.h.dpScale() * aVar.nextInt());
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 6:
                    f3 = valueOf2;
                    i8 = (int) (f2.h.dpScale() * aVar.nextInt());
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 7:
                    f3 = valueOf2;
                    i11 = Color.parseColor(aVar.nextString());
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 8:
                    f3 = valueOf2;
                    lVar = AbstractC0794c.parse(aVar, c0330i);
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 9:
                    f3 = valueOf2;
                    layer$MatteType2 = Layer$MatteType.values()[aVar.nextInt()];
                    c0330i.incrementMatteOrMaskCount(1);
                    i2 = 1;
                    valueOf2 = f3;
                    z6 = false;
                    break;
                case 10:
                    aVar.beginArray();
                    while (aVar.hasNext()) {
                        aVar.beginObject();
                        Mask$MaskMode mask$MaskMode3 = null;
                        Z1.h hVar = null;
                        Z1.d dVar = null;
                        boolean z8 = false;
                        while (aVar.hasNext()) {
                            Float f16 = valueOf2;
                            String nextName = aVar.nextName();
                            nextName.getClass();
                            switch (nextName.hashCode()) {
                                case 111:
                                    f9 = f11;
                                    if (nextName.equals("o")) {
                                        c7 = 0;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 3588:
                                    f9 = f11;
                                    if (nextName.equals("pt")) {
                                        c7 = 1;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 104433:
                                    f9 = f11;
                                    if (nextName.equals("inv")) {
                                        c7 = 2;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                case 3357091:
                                    f9 = f11;
                                    if (nextName.equals("mode")) {
                                        c7 = 3;
                                        break;
                                    }
                                    c7 = 65535;
                                    break;
                                default:
                                    f9 = f11;
                                    c7 = 65535;
                                    break;
                            }
                            switch (c7) {
                                case 0:
                                    dVar = AbstractC0795d.b(aVar, c0330i);
                                    break;
                                case 1:
                                    hVar = new Z1.h(r.a(aVar, c0330i, f2.h.dpScale(), C0785B.f13533a));
                                    break;
                                case 2:
                                    z8 = aVar.nextBoolean();
                                    break;
                                case 3:
                                    String nextString = aVar.nextString();
                                    nextString.getClass();
                                    Mask$MaskMode mask$MaskMode4 = Mask$MaskMode.f9032b;
                                    switch (nextString.hashCode()) {
                                        case 97:
                                            mask$MaskMode = mask$MaskMode4;
                                            if (nextString.equals(CmcdData.OBJECT_TYPE_AUDIO_ONLY)) {
                                                c8 = 0;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        case ModuleDescriptor.MODULE_VERSION /* 105 */:
                                            mask$MaskMode = mask$MaskMode4;
                                            if (nextString.equals(CmcdData.OBJECT_TYPE_INIT_SEGMENT)) {
                                                c8 = 1;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        case 110:
                                            mask$MaskMode = mask$MaskMode4;
                                            if (nextString.equals("n")) {
                                                c8 = 2;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        case 115:
                                            mask$MaskMode = mask$MaskMode4;
                                            if (nextString.equals(CmcdData.STREAMING_FORMAT_SS)) {
                                                c8 = 3;
                                                break;
                                            }
                                            c8 = 65535;
                                            break;
                                        default:
                                            mask$MaskMode = mask$MaskMode4;
                                            c8 = 65535;
                                            break;
                                    }
                                    switch (c8) {
                                        case 0:
                                            mask$MaskMode3 = mask$MaskMode;
                                            break;
                                        case 1:
                                            c0330i.addWarning("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                            mask$MaskMode2 = Mask$MaskMode.f9034f;
                                            mask$MaskMode3 = mask$MaskMode2;
                                            break;
                                        case 2:
                                            mask$MaskMode2 = Mask$MaskMode.f9035j;
                                            mask$MaskMode3 = mask$MaskMode2;
                                            break;
                                        case 3:
                                            mask$MaskMode2 = Mask$MaskMode.f9033e;
                                            mask$MaskMode3 = mask$MaskMode2;
                                            break;
                                        default:
                                            AbstractC0923d.warning("Unknown mask mode " + nextName + ". Defaulting to Add.");
                                            mask$MaskMode3 = mask$MaskMode;
                                            break;
                                    }
                                default:
                                    aVar.skipValue();
                                    break;
                            }
                            valueOf2 = f16;
                            f11 = f9;
                        }
                        aVar.endObject();
                        arrayList3.add(new a2.f(mask$MaskMode3, hVar, dVar, z8));
                        valueOf2 = valueOf2;
                        f11 = f11;
                    }
                    f7 = valueOf2;
                    f8 = f11;
                    c0330i.incrementMatteOrMaskCount(arrayList3.size());
                    aVar.endArray();
                    valueOf2 = f7;
                    f11 = f8;
                    z6 = false;
                    i2 = 1;
                    break;
                case 11:
                    aVar.beginArray();
                    while (aVar.hasNext()) {
                        InterfaceC0381b a7 = AbstractC0798g.a(aVar, c0330i);
                        if (a7 != null) {
                            arrayList4.add(a7);
                        }
                    }
                    aVar.endArray();
                    f7 = valueOf2;
                    f8 = f11;
                    valueOf2 = f7;
                    f11 = f8;
                    z6 = false;
                    i2 = 1;
                    break;
                case 12:
                    aVar.beginObject();
                    while (aVar.hasNext()) {
                        int selectName = aVar.selectName(f13568b);
                        if (selectName == 0) {
                            jVar = new Z1.j(r.a(aVar, c0330i, 1.0f, C0799h.f13549a));
                        } else if (selectName != i2) {
                            aVar.skipName();
                            aVar.skipValue();
                        } else {
                            aVar.beginArray();
                            if (aVar.hasNext()) {
                                kVar = AbstractC0793b.parse(aVar, c0330i);
                            }
                            while (aVar.hasNext()) {
                                aVar.skipValue();
                            }
                            aVar.endArray();
                        }
                    }
                    aVar.endObject();
                    z6 = false;
                    break;
                case 13:
                    aVar.beginArray();
                    ArrayList arrayList5 = new ArrayList();
                    while (aVar.hasNext()) {
                        aVar.beginObject();
                        while (aVar.hasNext()) {
                            if (aVar.selectName(f13569c) != 0) {
                                aVar.skipName();
                                aVar.skipValue();
                            } else {
                                arrayList5.add(aVar.nextString());
                            }
                        }
                        aVar.endObject();
                    }
                    aVar.endArray();
                    c0330i.addWarning("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList5);
                    f7 = valueOf2;
                    f8 = f11;
                    valueOf2 = f7;
                    f11 = f8;
                    z6 = false;
                    i2 = 1;
                    break;
                case 14:
                    f10 = (float) aVar.nextDouble();
                    z6 = false;
                    break;
                case 15:
                    f13 = (float) aVar.nextDouble();
                    z6 = false;
                    break;
                case 16:
                    i7 = (int) (f2.h.dpScale() * aVar.nextInt());
                    z6 = false;
                    break;
                case 17:
                    i9 = (int) (f2.h.dpScale() * aVar.nextInt());
                    z6 = false;
                    break;
                case 18:
                    f11 = (float) aVar.nextDouble();
                    z6 = false;
                    break;
                case 19:
                    f12 = (float) aVar.nextDouble();
                    z6 = false;
                    break;
                case 20:
                    bVar = AbstractC0795d.parseFloat(aVar, c0330i, z6);
                    break;
                case 21:
                    str3 = aVar.nextString();
                    break;
                case 22:
                    z7 = aVar.nextBoolean();
                    break;
                default:
                    aVar.skipName();
                    aVar.skipValue();
                    f7 = valueOf2;
                    f8 = f11;
                    valueOf2 = f7;
                    f11 = f8;
                    z6 = false;
                    i2 = 1;
                    break;
            }
        }
        Float f17 = valueOf2;
        aVar.endObject();
        float f18 = f11 / f10;
        float f19 = f12 / f10;
        ArrayList arrayList6 = new ArrayList();
        if (f18 > 0.0f) {
            arrayList = arrayList4;
            arrayList2 = arrayList6;
            arrayList2.add(new C0947a(c0330i, f17, f17, null, 0.0f, Float.valueOf(f18)));
        } else {
            arrayList = arrayList4;
            arrayList2 = arrayList6;
        }
        if (f19 <= 0.0f) {
            f19 = c0330i.getEndFrame();
        }
        arrayList2.add(new C0947a(c0330i, valueOf, valueOf, null, f18, Float.valueOf(f19)));
        arrayList2.add(new C0947a(c0330i, f17, f17, null, f19, Float.valueOf(Float.MAX_VALUE)));
        if (str.endsWith(".ai") || "ai".equals(str3)) {
            c0330i.addWarning("Convert your Illustrator layers to shape layers.");
        }
        return new C0645e(arrayList, c0330i, str, j7, layer$LayerType, j8, str2, arrayList3, lVar, i10, i8, i11, f10, f13, i7, i9, jVar, kVar, arrayList2, layer$MatteType2, bVar, z7);
    }
}
