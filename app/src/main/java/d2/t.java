package d2;

import T1.C0330i;
import android.graphics.Rect;
import androidx.media3.exoplayer.upstream.CmcdData;
import b2.C0645e;
import com.airbnb.lottie.model.layer.Layer$LayerType;
import e2.C0853a;
import f2.AbstractC0923d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13570a = C0853a.of("w", CmcdData.STREAMING_FORMAT_HLS, "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b, reason: collision with root package name */
    public static final C0853a f13571b = C0853a.of("id", "layers", "w", CmcdData.STREAMING_FORMAT_HLS, "p", "u");

    /* renamed from: c, reason: collision with root package name */
    public static final C0853a f13572c = C0853a.of("list");

    /* renamed from: d, reason: collision with root package name */
    public static final C0853a f13573d = C0853a.of("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0047. Please report as an issue. */
    public static C0330i parse(com.airbnb.lottie.parser.moshi.a aVar) throws IOException {
        float f3;
        p.r rVar;
        ArrayList arrayList;
        float f7;
        int i2;
        float f8;
        p.r rVar2;
        int i7;
        float f9;
        p.r rVar3;
        int i8 = 1;
        float dpScale = f2.h.dpScale();
        p.n nVar = new p.n();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        p.r rVar4 = new p.r();
        C0330i c0330i = new C0330i();
        aVar.beginObject();
        int i9 = 0;
        int i10 = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (aVar.hasNext()) {
            switch (aVar.selectName(f13570a)) {
                case 0:
                    rVar2 = rVar4;
                    i9 = aVar.nextInt();
                    rVar4 = rVar2;
                    break;
                case 1:
                    rVar2 = rVar4;
                    i10 = aVar.nextInt();
                    rVar4 = rVar2;
                    break;
                case 2:
                    i7 = i8;
                    f10 = (float) aVar.nextDouble();
                    dpScale = dpScale;
                    i8 = i7;
                    break;
                case 3:
                    i7 = i8;
                    f9 = dpScale;
                    rVar3 = rVar4;
                    f11 = ((float) aVar.nextDouble()) - 0.01f;
                    dpScale = f9;
                    rVar4 = rVar3;
                    i8 = i7;
                    break;
                case 4:
                    i7 = i8;
                    f9 = dpScale;
                    rVar3 = rVar4;
                    f12 = (float) aVar.nextDouble();
                    dpScale = f9;
                    rVar4 = rVar3;
                    i8 = i7;
                    break;
                case 5:
                    f3 = dpScale;
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    String[] split = aVar.nextString().split("\\.");
                    i2 = 1;
                    if (!f2.h.isAtLeastVersion(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        c0330i.addWarning("Lottie only supports bodymovin >= 4.4.0");
                    }
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
                case 6:
                    f3 = dpScale;
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    aVar.beginArray();
                    int i11 = 0;
                    while (aVar.hasNext()) {
                        C0645e parse = s.parse(aVar, c0330i);
                        if (parse.getLayerType() == Layer$LayerType.f9052e) {
                            i11++;
                        }
                        arrayList2.add(parse);
                        nVar.put(parse.getId(), parse);
                        if (i11 > 4) {
                            AbstractC0923d.warning("You have " + i11 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                    }
                    aVar.endArray();
                    i2 = 1;
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
                case 7:
                    f3 = dpScale;
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    aVar.beginArray();
                    while (aVar.hasNext()) {
                        ArrayList arrayList4 = new ArrayList();
                        p.n nVar2 = new p.n();
                        aVar.beginObject();
                        String str = null;
                        String str2 = null;
                        String str3 = null;
                        int i12 = 0;
                        int i13 = 0;
                        while (aVar.hasNext()) {
                            int selectName = aVar.selectName(f13571b);
                            if (selectName == 0) {
                                str = aVar.nextString();
                            } else if (selectName == 1) {
                                aVar.beginArray();
                                while (aVar.hasNext()) {
                                    C0645e parse2 = s.parse(aVar, c0330i);
                                    nVar2.put(parse2.getId(), parse2);
                                    arrayList4.add(parse2);
                                }
                                aVar.endArray();
                            } else if (selectName == 2) {
                                i12 = aVar.nextInt();
                            } else if (selectName == 3) {
                                i13 = aVar.nextInt();
                            } else if (selectName == 4) {
                                str2 = aVar.nextString();
                            } else if (selectName != 5) {
                                aVar.skipName();
                                aVar.skipValue();
                            } else {
                                str3 = aVar.nextString();
                            }
                        }
                        aVar.endObject();
                        if (str2 != null) {
                            T1.H h7 = new T1.H(i12, i13, str, str2, str3);
                            hashMap2.put(h7.getId(), h7);
                        } else {
                            hashMap.put(str, arrayList4);
                        }
                    }
                    aVar.endArray();
                    i2 = 1;
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
                case 8:
                    f3 = dpScale;
                    aVar.beginObject();
                    while (aVar.hasNext()) {
                        if (aVar.selectName(f13572c) != 0) {
                            aVar.skipName();
                            aVar.skipValue();
                        } else {
                            aVar.beginArray();
                            while (aVar.hasNext()) {
                                C0853a c0853a = AbstractC0802k.f13554a;
                                aVar.beginObject();
                                String str4 = null;
                                String str5 = null;
                                String str6 = null;
                                float f13 = 0.0f;
                                while (aVar.hasNext()) {
                                    p.r rVar5 = rVar4;
                                    int selectName2 = aVar.selectName(AbstractC0802k.f13554a);
                                    if (selectName2 != 0) {
                                        ArrayList arrayList5 = arrayList3;
                                        if (selectName2 == 1) {
                                            str5 = aVar.nextString();
                                        } else if (selectName2 == 2) {
                                            str6 = aVar.nextString();
                                        } else if (selectName2 != 3) {
                                            aVar.skipName();
                                            aVar.skipValue();
                                        } else {
                                            f13 = (float) aVar.nextDouble();
                                            f10 = f10;
                                        }
                                        rVar4 = rVar5;
                                        arrayList3 = arrayList5;
                                    } else {
                                        str4 = aVar.nextString();
                                        rVar4 = rVar5;
                                    }
                                }
                                ArrayList arrayList6 = arrayList3;
                                aVar.endObject();
                                Y1.c cVar = new Y1.c(str4, str5, str6, f13);
                                hashMap3.put(cVar.getName(), cVar);
                                f10 = f10;
                                rVar4 = rVar4;
                                arrayList3 = arrayList6;
                            }
                            aVar.endArray();
                            rVar4 = rVar4;
                        }
                    }
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    aVar.endObject();
                    i2 = 1;
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
                case 9:
                    f3 = dpScale;
                    aVar.beginArray();
                    while (aVar.hasNext()) {
                        C0853a c0853a2 = AbstractC0801j.f13552a;
                        ArrayList arrayList7 = new ArrayList();
                        aVar.beginObject();
                        double d7 = 0.0d;
                        double d8 = 0.0d;
                        String str7 = null;
                        String str8 = null;
                        char c7 = 0;
                        while (aVar.hasNext()) {
                            int selectName3 = aVar.selectName(AbstractC0801j.f13552a);
                            if (selectName3 == 0) {
                                c7 = aVar.nextString().charAt(0);
                            } else if (selectName3 == 1) {
                                d7 = aVar.nextDouble();
                            } else if (selectName3 == 2) {
                                d8 = aVar.nextDouble();
                            } else if (selectName3 == 3) {
                                str7 = aVar.nextString();
                            } else if (selectName3 == 4) {
                                str8 = aVar.nextString();
                            } else if (selectName3 != 5) {
                                aVar.skipName();
                                aVar.skipValue();
                            } else {
                                aVar.beginObject();
                                while (aVar.hasNext()) {
                                    if (aVar.selectName(AbstractC0801j.f13553b) != 0) {
                                        aVar.skipName();
                                        aVar.skipValue();
                                    } else {
                                        aVar.beginArray();
                                        while (aVar.hasNext()) {
                                            arrayList7.add((a2.m) AbstractC0798g.a(aVar, c0330i));
                                        }
                                        aVar.endArray();
                                    }
                                }
                                aVar.endObject();
                            }
                        }
                        aVar.endObject();
                        Y1.d dVar = new Y1.d(arrayList7, c7, d7, d8, str7, str8);
                        rVar4.put(dVar.hashCode(), dVar);
                    }
                    aVar.endArray();
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    i2 = 1;
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
                case 10:
                    aVar.beginArray();
                    while (aVar.hasNext()) {
                        aVar.beginObject();
                        String str9 = null;
                        float f14 = 0.0f;
                        float f15 = 0.0f;
                        while (aVar.hasNext()) {
                            int selectName4 = aVar.selectName(f13573d);
                            if (selectName4 != 0) {
                                if (selectName4 == i8) {
                                    f8 = dpScale;
                                    f14 = (float) aVar.nextDouble();
                                } else if (selectName4 != 2) {
                                    aVar.skipName();
                                    aVar.skipValue();
                                } else {
                                    f8 = dpScale;
                                    f15 = (float) aVar.nextDouble();
                                }
                                dpScale = f8;
                            } else {
                                str9 = aVar.nextString();
                            }
                            i8 = 1;
                        }
                        aVar.endObject();
                        arrayList3.add(new Y1.h(str9, f14, f15));
                        dpScale = dpScale;
                        i8 = 1;
                    }
                    f3 = dpScale;
                    aVar.endArray();
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    i2 = 1;
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
                default:
                    aVar.skipName();
                    aVar.skipValue();
                    i2 = i8;
                    f3 = dpScale;
                    rVar = rVar4;
                    arrayList = arrayList3;
                    f7 = f10;
                    f10 = f7;
                    dpScale = f3;
                    rVar4 = rVar;
                    i8 = i2;
                    arrayList3 = arrayList;
                    break;
            }
        }
        float f16 = dpScale;
        c0330i.init(new Rect(0, 0, (int) (i9 * f16), (int) (i10 * f16)), f10, f11, f12, arrayList2, nVar, hashMap, hashMap2, rVar4, hashMap3, arrayList3);
        return c0330i;
    }
}
