package d2;

import T1.C0330i;
import a2.C0380a;
import a2.InterfaceC0381b;
import android.graphics.Path;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.MergePaths$MergePathsMode;
import com.airbnb.lottie.model.content.PolystarShape$Type;
import com.airbnb.lottie.model.content.ShapeStroke$LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke$LineJoinType;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import e2.C0853a;
import f2.AbstractC0923d;
import java.util.ArrayList;

/* renamed from: d2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0798g {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853a f13548a = C0853a.of("ty", "d");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static InterfaceC0381b a(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i) {
        String str;
        char c7;
        InterfaceC0381b c0380a;
        InterfaceC0381b dVar;
        InterfaceC0381b mVar;
        InterfaceC0381b interfaceC0381b;
        char c8;
        boolean z6 = false;
        int i2 = 0;
        boolean z7 = false;
        aVar.beginObject();
        int i7 = 2;
        while (true) {
            if (!aVar.hasNext()) {
                str = null;
                break;
            }
            int selectName = aVar.selectName(f13548a);
            if (selectName == 0) {
                str = aVar.nextString();
                break;
            }
            if (selectName != 1) {
                aVar.skipName();
                aVar.skipValue();
            } else {
                i7 = aVar.nextInt();
            }
        }
        if (str == null) {
            return null;
        }
        GradientType gradientType = GradientType.f9030e;
        GradientType gradientType2 = GradientType.f9029b;
        switch (str.hashCode()) {
            case 3239:
                if (str.equals("el")) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            case 3270:
                if (str.equals("fl")) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case 3295:
                if (str.equals("gf")) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case 3307:
                if (str.equals("gr")) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case 3308:
                if (str.equals("gs")) {
                    c7 = 4;
                    break;
                }
                c7 = 65535;
                break;
            case 3488:
                if (str.equals("mm")) {
                    c7 = 5;
                    break;
                }
                c7 = 65535;
                break;
            case 3633:
                if (str.equals("rc")) {
                    c7 = 6;
                    break;
                }
                c7 = 65535;
                break;
            case 3646:
                if (str.equals("rp")) {
                    c7 = 7;
                    break;
                }
                c7 = 65535;
                break;
            case 3669:
                if (str.equals("sh")) {
                    c7 = '\b';
                    break;
                }
                c7 = 65535;
                break;
            case 3679:
                if (str.equals("sr")) {
                    c7 = '\t';
                    break;
                }
                c7 = 65535;
                break;
            case 3681:
                if (str.equals(CmcdConfiguration.KEY_STREAM_TYPE)) {
                    c7 = '\n';
                    break;
                }
                c7 = 65535;
                break;
            case 3705:
                if (str.equals("tm")) {
                    c7 = 11;
                    break;
                }
                c7 = 65535;
                break;
            case 3710:
                if (str.equals("tr")) {
                    c7 = '\f';
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        switch (c7) {
            case 0:
                C0853a c0853a = AbstractC0796e.f13546a;
                boolean z8 = i7 == 3;
                boolean z9 = false;
                String str2 = null;
                Z1.m mVar2 = null;
                Z1.f fVar = null;
                while (aVar.hasNext()) {
                    int selectName2 = aVar.selectName(AbstractC0796e.f13546a);
                    if (selectName2 == 0) {
                        str2 = aVar.nextString();
                    } else if (selectName2 == 1) {
                        mVar2 = AbstractC0792a.a(aVar, c0330i);
                    } else if (selectName2 == 2) {
                        fVar = AbstractC0795d.c(aVar, c0330i);
                    } else if (selectName2 == 3) {
                        z9 = aVar.nextBoolean();
                    } else if (selectName2 != 4) {
                        aVar.skipName();
                        aVar.skipValue();
                    } else {
                        z8 = aVar.nextInt() == 3;
                    }
                }
                c0380a = new C0380a(str2, mVar2, fVar, z8, z9);
                interfaceC0381b = c0380a;
                break;
            case 1:
                C0853a c0853a2 = AbstractC0786C.f13535a;
                boolean z10 = false;
                boolean z11 = false;
                int i8 = 1;
                String str3 = null;
                Z1.a aVar2 = null;
                Z1.d dVar2 = null;
                while (aVar.hasNext()) {
                    int selectName3 = aVar.selectName(AbstractC0786C.f13535a);
                    if (selectName3 == 0) {
                        str3 = aVar.nextString();
                    } else if (selectName3 == 1) {
                        aVar2 = AbstractC0795d.a(aVar, c0330i);
                    } else if (selectName3 == 2) {
                        dVar2 = AbstractC0795d.b(aVar, c0330i);
                    } else if (selectName3 == 3) {
                        z10 = aVar.nextBoolean();
                    } else if (selectName3 == 4) {
                        i8 = aVar.nextInt();
                    } else if (selectName3 != 5) {
                        aVar.skipName();
                        aVar.skipValue();
                    } else {
                        z11 = aVar.nextBoolean();
                    }
                }
                c0380a = new a2.l(str3, z10, i8 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVar2, dVar2, z11);
                interfaceC0381b = c0380a;
                break;
            case 2:
                C0853a c0853a3 = AbstractC0804m.f13556a;
                Path.FillType fillType = Path.FillType.WINDING;
                boolean z12 = false;
                String str4 = null;
                GradientType gradientType3 = null;
                Z1.c cVar = null;
                Z1.d dVar3 = null;
                Z1.f fVar2 = null;
                Z1.f fVar3 = null;
                while (aVar.hasNext()) {
                    switch (aVar.selectName(AbstractC0804m.f13556a)) {
                        case 0:
                            str4 = aVar.nextString();
                            break;
                        case 1:
                            aVar.beginObject();
                            int i9 = -1;
                            while (aVar.hasNext()) {
                                int selectName4 = aVar.selectName(AbstractC0804m.f13557b);
                                if (selectName4 == 0) {
                                    i9 = aVar.nextInt();
                                } else if (selectName4 != 1) {
                                    aVar.skipName();
                                    aVar.skipValue();
                                } else {
                                    cVar = new Z1.c(r.a(aVar, c0330i, 1.0f, new C0803l(i9)));
                                }
                            }
                            aVar.endObject();
                            break;
                        case 2:
                            dVar3 = AbstractC0795d.b(aVar, c0330i);
                            break;
                        case 3:
                            if (aVar.nextInt() != 1) {
                                gradientType3 = gradientType;
                                break;
                            } else {
                                gradientType3 = gradientType2;
                                break;
                            }
                        case 4:
                            fVar2 = AbstractC0795d.c(aVar, c0330i);
                            break;
                        case 5:
                            fVar3 = AbstractC0795d.c(aVar, c0330i);
                            break;
                        case 6:
                            fillType = aVar.nextInt() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                            break;
                        case 7:
                            z12 = aVar.nextBoolean();
                            break;
                        default:
                            aVar.skipName();
                            aVar.skipValue();
                            break;
                    }
                }
                dVar = new a2.d(str4, gradientType3, fillType, cVar, dVar3, fVar2, fVar3, null, null, z12);
                interfaceC0381b = dVar;
                break;
            case 3:
                C0853a c0853a4 = AbstractC0787D.f13536a;
                ArrayList arrayList = new ArrayList();
                String str5 = null;
                while (aVar.hasNext()) {
                    int selectName5 = aVar.selectName(AbstractC0787D.f13536a);
                    if (selectName5 == 0) {
                        str5 = aVar.nextString();
                    } else if (selectName5 == 1) {
                        z6 = aVar.nextBoolean();
                    } else if (selectName5 != 2) {
                        aVar.skipValue();
                    } else {
                        aVar.beginArray();
                        while (aVar.hasNext()) {
                            InterfaceC0381b a7 = a(aVar, c0330i);
                            if (a7 != null) {
                                arrayList.add(a7);
                            }
                        }
                        aVar.endArray();
                    }
                }
                mVar = new a2.m(str5, arrayList, z6);
                interfaceC0381b = mVar;
                break;
            case 4:
                C0853a c0853a5 = AbstractC0805n.f13558a;
                ArrayList arrayList2 = new ArrayList();
                boolean z13 = false;
                float f3 = 0.0f;
                String str6 = null;
                GradientType gradientType4 = null;
                Z1.c cVar2 = null;
                Z1.d dVar4 = null;
                Z1.f fVar4 = null;
                Z1.f fVar5 = null;
                Z1.b bVar = null;
                ShapeStroke$LineCapType shapeStroke$LineCapType = null;
                ShapeStroke$LineJoinType shapeStroke$LineJoinType = null;
                Z1.b bVar2 = null;
                while (aVar.hasNext()) {
                    switch (aVar.selectName(AbstractC0805n.f13558a)) {
                        case 0:
                            str6 = aVar.nextString();
                            break;
                        case 1:
                            aVar.beginObject();
                            int i10 = -1;
                            while (aVar.hasNext()) {
                                int selectName6 = aVar.selectName(AbstractC0805n.f13559b);
                                if (selectName6 == 0) {
                                    i10 = aVar.nextInt();
                                } else if (selectName6 != 1) {
                                    aVar.skipName();
                                    aVar.skipValue();
                                } else {
                                    cVar2 = new Z1.c(r.a(aVar, c0330i, 1.0f, new C0803l(i10)));
                                }
                            }
                            aVar.endObject();
                            break;
                        case 2:
                            dVar4 = AbstractC0795d.b(aVar, c0330i);
                            break;
                        case 3:
                            if (aVar.nextInt() != 1) {
                                gradientType4 = gradientType;
                                break;
                            } else {
                                gradientType4 = gradientType2;
                                break;
                            }
                        case 4:
                            fVar4 = AbstractC0795d.c(aVar, c0330i);
                            break;
                        case 5:
                            fVar5 = AbstractC0795d.c(aVar, c0330i);
                            break;
                        case 6:
                            bVar = AbstractC0795d.parseFloat(aVar, c0330i);
                            break;
                        case 7:
                            shapeStroke$LineCapType = ShapeStroke$LineCapType.values()[aVar.nextInt() - 1];
                            break;
                        case 8:
                            shapeStroke$LineJoinType = ShapeStroke$LineJoinType.values()[aVar.nextInt() - 1];
                            break;
                        case 9:
                            f3 = (float) aVar.nextDouble();
                            break;
                        case 10:
                            z13 = aVar.nextBoolean();
                            break;
                        case 11:
                            aVar.beginArray();
                            while (aVar.hasNext()) {
                                aVar.beginObject();
                                String str7 = null;
                                Z1.b bVar3 = null;
                                while (aVar.hasNext()) {
                                    int selectName7 = aVar.selectName(AbstractC0805n.f13560c);
                                    if (selectName7 == 0) {
                                        str7 = aVar.nextString();
                                    } else if (selectName7 != 1) {
                                        aVar.skipName();
                                        aVar.skipValue();
                                    } else {
                                        bVar3 = AbstractC0795d.parseFloat(aVar, c0330i);
                                    }
                                }
                                aVar.endObject();
                                if (str7.equals("o")) {
                                    bVar2 = bVar3;
                                } else if (str7.equals("d") || str7.equals("g")) {
                                    c0330i.setHasDashPattern(true);
                                    arrayList2.add(bVar3);
                                }
                            }
                            aVar.endArray();
                            if (arrayList2.size() != 1) {
                                break;
                            } else {
                                arrayList2.add(arrayList2.get(0));
                                break;
                            }
                        default:
                            aVar.skipName();
                            aVar.skipValue();
                            break;
                    }
                }
                dVar = new a2.e(str6, gradientType4, cVar2, dVar4, fVar4, fVar5, bVar, shapeStroke$LineCapType, shapeStroke$LineJoinType, f3, arrayList2, bVar2, z13);
                interfaceC0381b = dVar;
                break;
            case 5:
                C0853a c0853a6 = u.f13574a;
                MergePaths$MergePathsMode mergePaths$MergePathsMode = null;
                String str8 = null;
                while (aVar.hasNext()) {
                    int selectName8 = aVar.selectName(u.f13574a);
                    if (selectName8 == 0) {
                        str8 = aVar.nextString();
                    } else if (selectName8 == 1) {
                        mergePaths$MergePathsMode = MergePaths$MergePathsMode.forId(aVar.nextInt());
                    } else if (selectName8 != 2) {
                        aVar.skipName();
                        aVar.skipValue();
                    } else {
                        z7 = aVar.nextBoolean();
                    }
                }
                a2.g gVar = new a2.g(str8, mergePaths$MergePathsMode, z7);
                c0330i.addWarning("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                interfaceC0381b = gVar;
                break;
            case 6:
                C0853a c0853a7 = y.f13578a;
                boolean z14 = false;
                String str9 = null;
                Z1.m mVar3 = null;
                Z1.f fVar6 = null;
                Z1.b bVar4 = null;
                while (aVar.hasNext()) {
                    int selectName9 = aVar.selectName(y.f13578a);
                    if (selectName9 == 0) {
                        str9 = aVar.nextString();
                    } else if (selectName9 == 1) {
                        mVar3 = AbstractC0792a.a(aVar, c0330i);
                    } else if (selectName9 == 2) {
                        fVar6 = AbstractC0795d.c(aVar, c0330i);
                    } else if (selectName9 == 3) {
                        bVar4 = AbstractC0795d.parseFloat(aVar, c0330i);
                    } else if (selectName9 != 4) {
                        aVar.skipValue();
                    } else {
                        z14 = aVar.nextBoolean();
                    }
                }
                c0380a = new a2.i(str9, mVar3, fVar6, bVar4, z14);
                interfaceC0381b = c0380a;
                break;
            case 7:
                C0853a c0853a8 = z.f13579a;
                boolean z15 = false;
                String str10 = null;
                Z1.b bVar5 = null;
                Z1.b bVar6 = null;
                Z1.l lVar = null;
                while (aVar.hasNext()) {
                    int selectName10 = aVar.selectName(z.f13579a);
                    if (selectName10 == 0) {
                        str10 = aVar.nextString();
                    } else if (selectName10 == 1) {
                        bVar5 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                    } else if (selectName10 == 2) {
                        bVar6 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                    } else if (selectName10 == 3) {
                        lVar = AbstractC0794c.parse(aVar, c0330i);
                    } else if (selectName10 != 4) {
                        aVar.skipValue();
                    } else {
                        z15 = aVar.nextBoolean();
                    }
                }
                c0380a = new a2.j(str10, bVar5, bVar6, lVar, z15);
                interfaceC0381b = c0380a;
                break;
            case '\b':
                C0853a c0853a9 = AbstractC0788E.f13537a;
                boolean z16 = false;
                Z1.h hVar = null;
                String str11 = null;
                while (aVar.hasNext()) {
                    int selectName11 = aVar.selectName(AbstractC0788E.f13537a);
                    if (selectName11 == 0) {
                        str11 = aVar.nextString();
                    } else if (selectName11 == 1) {
                        i2 = aVar.nextInt();
                    } else if (selectName11 == 2) {
                        hVar = new Z1.h(r.a(aVar, c0330i, f2.h.dpScale(), C0785B.f13533a));
                    } else if (selectName11 != 3) {
                        aVar.skipValue();
                    } else {
                        z16 = aVar.nextBoolean();
                    }
                }
                mVar = new a2.n(str11, i2, hVar, z16);
                interfaceC0381b = mVar;
                break;
            case '\t':
                C0853a c0853a10 = x.f13577a;
                boolean z17 = false;
                String str12 = null;
                PolystarShape$Type polystarShape$Type = null;
                Z1.b bVar7 = null;
                Z1.m mVar4 = null;
                Z1.b bVar8 = null;
                Z1.b bVar9 = null;
                Z1.b bVar10 = null;
                Z1.b bVar11 = null;
                Z1.b bVar12 = null;
                while (aVar.hasNext()) {
                    switch (aVar.selectName(x.f13577a)) {
                        case 0:
                            str12 = aVar.nextString();
                            break;
                        case 1:
                            polystarShape$Type = PolystarShape$Type.forValue(aVar.nextInt());
                            break;
                        case 2:
                            bVar7 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                            break;
                        case 3:
                            mVar4 = AbstractC0792a.a(aVar, c0330i);
                            break;
                        case 4:
                            bVar8 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                            break;
                        case 5:
                            bVar10 = AbstractC0795d.parseFloat(aVar, c0330i);
                            break;
                        case 6:
                            bVar12 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                            break;
                        case 7:
                            bVar9 = AbstractC0795d.parseFloat(aVar, c0330i);
                            break;
                        case 8:
                            bVar11 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                            break;
                        case 9:
                            z17 = aVar.nextBoolean();
                            break;
                        default:
                            aVar.skipName();
                            aVar.skipValue();
                            break;
                    }
                }
                dVar = new a2.h(str12, polystarShape$Type, bVar7, mVar4, bVar8, bVar9, bVar10, bVar11, bVar12, z17);
                interfaceC0381b = dVar;
                break;
            case '\n':
                C0853a c0853a11 = AbstractC0789F.f13538a;
                ArrayList arrayList3 = new ArrayList();
                boolean z18 = false;
                float f7 = 0.0f;
                String str13 = null;
                Z1.b bVar13 = null;
                Z1.a aVar3 = null;
                Z1.d dVar5 = null;
                Z1.b bVar14 = null;
                ShapeStroke$LineCapType shapeStroke$LineCapType2 = null;
                ShapeStroke$LineJoinType shapeStroke$LineJoinType2 = null;
                while (aVar.hasNext()) {
                    switch (aVar.selectName(AbstractC0789F.f13538a)) {
                        case 0:
                            str13 = aVar.nextString();
                            break;
                        case 1:
                            aVar3 = AbstractC0795d.a(aVar, c0330i);
                            break;
                        case 2:
                            bVar14 = AbstractC0795d.parseFloat(aVar, c0330i);
                            break;
                        case 3:
                            dVar5 = AbstractC0795d.b(aVar, c0330i);
                            break;
                        case 4:
                            shapeStroke$LineCapType2 = ShapeStroke$LineCapType.values()[aVar.nextInt() - 1];
                            break;
                        case 5:
                            shapeStroke$LineJoinType2 = ShapeStroke$LineJoinType.values()[aVar.nextInt() - 1];
                            break;
                        case 6:
                            f7 = (float) aVar.nextDouble();
                            break;
                        case 7:
                            z18 = aVar.nextBoolean();
                            break;
                        case 8:
                            aVar.beginArray();
                            while (aVar.hasNext()) {
                                aVar.beginObject();
                                String str14 = null;
                                Z1.b bVar15 = null;
                                while (aVar.hasNext()) {
                                    int selectName12 = aVar.selectName(AbstractC0789F.f13539b);
                                    if (selectName12 == 0) {
                                        str14 = aVar.nextString();
                                    } else if (selectName12 != 1) {
                                        aVar.skipName();
                                        aVar.skipValue();
                                    } else {
                                        bVar15 = AbstractC0795d.parseFloat(aVar, c0330i);
                                    }
                                }
                                aVar.endObject();
                                str14.getClass();
                                switch (str14.hashCode()) {
                                    case 100:
                                        if (str14.equals("d")) {
                                            c8 = 0;
                                            break;
                                        }
                                        c8 = 65535;
                                        break;
                                    case 103:
                                        if (str14.equals("g")) {
                                            c8 = 1;
                                            break;
                                        }
                                        c8 = 65535;
                                        break;
                                    case 111:
                                        if (str14.equals("o")) {
                                            c8 = 2;
                                            break;
                                        }
                                        c8 = 65535;
                                        break;
                                    default:
                                        c8 = 65535;
                                        break;
                                }
                                switch (c8) {
                                    case 0:
                                    case 1:
                                        c0330i.setHasDashPattern(true);
                                        arrayList3.add(bVar15);
                                        break;
                                    case 2:
                                        bVar13 = bVar15;
                                        break;
                                }
                            }
                            aVar.endArray();
                            if (arrayList3.size() != 1) {
                                break;
                            } else {
                                arrayList3.add(arrayList3.get(0));
                                break;
                            }
                            break;
                        default:
                            aVar.skipValue();
                            break;
                    }
                }
                dVar = new a2.o(str13, bVar13, arrayList3, aVar3, dVar5, bVar14, shapeStroke$LineCapType2, shapeStroke$LineJoinType2, f7, z18);
                interfaceC0381b = dVar;
                break;
            case 11:
                C0853a c0853a12 = AbstractC0790G.f13540a;
                boolean z19 = false;
                String str15 = null;
                ShapeTrimPath$Type shapeTrimPath$Type = null;
                Z1.b bVar16 = null;
                Z1.b bVar17 = null;
                Z1.b bVar18 = null;
                while (aVar.hasNext()) {
                    int selectName13 = aVar.selectName(AbstractC0790G.f13540a);
                    if (selectName13 == 0) {
                        bVar16 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                    } else if (selectName13 == 1) {
                        bVar17 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                    } else if (selectName13 == 2) {
                        bVar18 = AbstractC0795d.parseFloat(aVar, c0330i, false);
                    } else if (selectName13 == 3) {
                        str15 = aVar.nextString();
                    } else if (selectName13 == 4) {
                        shapeTrimPath$Type = ShapeTrimPath$Type.forId(aVar.nextInt());
                    } else if (selectName13 != 5) {
                        aVar.skipValue();
                    } else {
                        z19 = aVar.nextBoolean();
                    }
                }
                c0380a = new a2.p(str15, shapeTrimPath$Type, bVar16, bVar17, bVar18, z19);
                interfaceC0381b = c0380a;
                break;
            case '\f':
                interfaceC0381b = AbstractC0794c.parse(aVar, c0330i);
                break;
            default:
                AbstractC0923d.warning("Unknown shape type ".concat(str));
                interfaceC0381b = null;
                break;
        }
        while (aVar.hasNext()) {
            aVar.skipValue();
        }
        aVar.endObject();
        return interfaceC0381b;
    }
}
