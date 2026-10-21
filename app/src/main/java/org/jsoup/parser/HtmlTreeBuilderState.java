package org.jsoup.parser;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import h6.j;
import h6.k;
import j6.p;
import java.util.ArrayList;
import java.util.Iterator;
import k6.d;
import k6.f;
import k6.h;
import k6.i;
import k6.l;
import k6.m;
import k6.o;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Document$QuirksMode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
abstract class HtmlTreeBuilderState {

    /* renamed from: A, reason: collision with root package name */
    public static final AnonymousClass18 f19215A;

    /* renamed from: B, reason: collision with root package name */
    public static final AnonymousClass19 f19216B;

    /* renamed from: C, reason: collision with root package name */
    public static final AnonymousClass20 f19217C;

    /* renamed from: D, reason: collision with root package name */
    public static final AnonymousClass21 f19218D;

    /* renamed from: E, reason: collision with root package name */
    public static final AnonymousClass22 f19219E;

    /* renamed from: F, reason: collision with root package name */
    public static final String f19220F;

    /* renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ HtmlTreeBuilderState[] f19221G;

    /* renamed from: b, reason: collision with root package name */
    public static final AnonymousClass1 f19222b;

    /* renamed from: e, reason: collision with root package name */
    public static final AnonymousClass2 f19223e;

    /* renamed from: f, reason: collision with root package name */
    public static final AnonymousClass3 f19224f;

    /* renamed from: j, reason: collision with root package name */
    public static final AnonymousClass4 f19225j;

    /* renamed from: m, reason: collision with root package name */
    public static final AnonymousClass5 f19226m;

    /* renamed from: n, reason: collision with root package name */
    public static final AnonymousClass6 f19227n;

    /* renamed from: p, reason: collision with root package name */
    public static final AnonymousClass7 f19228p;

    /* renamed from: q, reason: collision with root package name */
    public static final AnonymousClass8 f19229q;

    /* renamed from: r, reason: collision with root package name */
    public static final AnonymousClass9 f19230r;

    /* renamed from: s, reason: collision with root package name */
    public static final AnonymousClass10 f19231s;

    /* renamed from: t, reason: collision with root package name */
    public static final AnonymousClass11 f19232t;

    /* renamed from: u, reason: collision with root package name */
    public static final AnonymousClass12 f19233u;

    /* renamed from: v, reason: collision with root package name */
    public static final AnonymousClass13 f19234v;

    /* renamed from: w, reason: collision with root package name */
    public static final AnonymousClass14 f19235w;

    /* renamed from: x, reason: collision with root package name */
    public static final AnonymousClass15 f19236x;

    /* renamed from: y, reason: collision with root package name */
    public static final AnonymousClass16 f19237y;

    /* renamed from: z, reason: collision with root package name */
    public static final AnonymousClass17 f19238z;

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$16, reason: invalid class name */
    public enum AnonymousClass16 extends HtmlTreeBuilderState {
        public AnonymousClass16() {
            super("InSelect", 15);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x005d, code lost:
        
            if (r9.equals("optgroup") == false) goto L29;
         */
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean e(k6.o r9, org.jsoup.parser.a r10) {
            /*
                Method dump skipped, instructions count: 368
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass16.e(k6.o, org.jsoup.parser.a):boolean");
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$4, reason: invalid class name */
    public enum AnonymousClass4 extends HtmlTreeBuilderState {
        public AnonymousClass4() {
            super("InHead", 3);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean e(o oVar, a aVar) {
            if (HtmlTreeBuilderState.b(oVar)) {
                aVar.o((h) oVar);
                return true;
            }
            int ordinal = oVar.f17385a.ordinal();
            if (ordinal == 0) {
                aVar.e(this);
                return false;
            }
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        aVar.processEndTag("head");
                        return aVar.process(oVar);
                    }
                    aVar.p((i) oVar);
                    return true;
                }
                String str = ((l) oVar).f17377c;
                if (str.equals("head")) {
                    aVar.v();
                    aVar.f19327k = HtmlTreeBuilderState.f19227n;
                    return true;
                }
                if (j.in(str, "body", "html", CmcdConfiguration.KEY_BITRATE)) {
                    aVar.processEndTag("head");
                    return aVar.process(oVar);
                }
                aVar.e(this);
                return false;
            }
            m mVar = (m) oVar;
            String str2 = mVar.f17377c;
            if (str2.equals("html")) {
                return HtmlTreeBuilderState.f19228p.e(oVar, aVar);
            }
            if (j.in(str2, "base", "basefont", "bgsound", "command", "link")) {
                org.jsoup.nodes.b q6 = aVar.q(mVar);
                if (str2.equals("base") && q6.hasAttr("href") && !aVar.f19329m) {
                    String absUrl = q6.absUrl("href");
                    if (absUrl.length() != 0) {
                        aVar.f19361e = absUrl;
                        aVar.f19329m = true;
                        aVar.f19359c.setBaseUri(absUrl);
                    }
                }
                return true;
            }
            if (str2.equals("meta")) {
                aVar.q(mVar);
                return true;
            }
            boolean equals = str2.equals("title");
            AnonymousClass8 anonymousClass8 = HtmlTreeBuilderState.f19229q;
            if (equals) {
                aVar.f19358b.f19342c = TokeniserState.f19284f;
                aVar.f19328l = aVar.f19327k;
                aVar.f19327k = anonymousClass8;
                aVar.n(mVar);
                return true;
            }
            if (j.in(str2, "noframes", "style")) {
                HtmlTreeBuilderState.d(mVar, aVar);
                return true;
            }
            if (str2.equals("noscript")) {
                aVar.n(mVar);
                aVar.f19327k = HtmlTreeBuilderState.f19226m;
                return true;
            }
            if (!str2.equals("script")) {
                if (str2.equals("head")) {
                    aVar.e(this);
                    return false;
                }
                aVar.processEndTag("head");
                return aVar.process(oVar);
            }
            aVar.f19358b.f19342c = TokeniserState.f19295n;
            aVar.f19328l = aVar.f19327k;
            aVar.f19327k = anonymousClass8;
            aVar.n(mVar);
            return true;
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$7, reason: invalid class name */
    public enum AnonymousClass7 extends HtmlTreeBuilderState {
        public AnonymousClass7() {
            super("InBody", 6);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean e(o oVar, a aVar) {
            org.jsoup.nodes.b bVar;
            int ordinal = oVar.f17385a.ordinal();
            if (ordinal == 0) {
                aVar.e(this);
                return false;
            }
            String[] strArr = k6.b.f17333h;
            String[] strArr2 = k6.b.f17328c;
            String[] strArr3 = k6.b.f17331f;
            String[] strArr4 = a.f19321B;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        aVar.p((i) oVar);
                        return true;
                    }
                    if (ordinal != 4) {
                        return true;
                    }
                    h hVar = (h) oVar;
                    if (hVar.f17368b.equals(HtmlTreeBuilderState.f19220F)) {
                        aVar.e(this);
                        return false;
                    }
                    if (aVar.f19335s && HtmlTreeBuilderState.b(hVar)) {
                        aVar.z();
                        aVar.o(hVar);
                        return true;
                    }
                    aVar.z();
                    aVar.o(hVar);
                    aVar.f19335s = false;
                    return true;
                }
                l lVar = (l) oVar;
                String str = lVar.f17377c;
                if (j.inSorted(str, k6.b.f17341p)) {
                    for (int i2 = 0; i2 < 8; i2++) {
                        org.jsoup.nodes.b g7 = aVar.g(str);
                        if (g7 == null) {
                            return f(oVar, aVar);
                        }
                        if (!a.u(aVar.f19360d, g7)) {
                            aVar.e(this);
                            aVar.A(g7);
                            return true;
                        }
                        if (!aVar.j(g7.nodeName())) {
                            aVar.e(this);
                            return false;
                        }
                        if (aVar.currentElement() != g7) {
                            aVar.e(this);
                        }
                        ArrayList arrayList = aVar.f19360d;
                        int size = arrayList.size();
                        org.jsoup.nodes.b bVar2 = null;
                        boolean z6 = false;
                        for (int i7 = 0; i7 < size && i7 < 64; i7++) {
                            bVar = (org.jsoup.nodes.b) arrayList.get(i7);
                            if (bVar == g7) {
                                bVar2 = (org.jsoup.nodes.b) arrayList.get(i7 - 1);
                                z6 = true;
                            } else if (z6 && j.inSorted(bVar.nodeName(), strArr4)) {
                                break;
                            }
                        }
                        bVar = null;
                        if (bVar == null) {
                            aVar.w(g7.nodeName());
                            aVar.A(g7);
                            return true;
                        }
                        org.jsoup.nodes.b bVar3 = bVar;
                        org.jsoup.nodes.b bVar4 = bVar3;
                        for (int i8 = 0; i8 < 3; i8++) {
                            if (a.u(aVar.f19360d, bVar3)) {
                                bVar3 = aVar.b(bVar3);
                            }
                            if (!a.u(aVar.f19332p, bVar3)) {
                                aVar.B(bVar3);
                            } else {
                                if (bVar3 == g7) {
                                    break;
                                }
                                org.jsoup.nodes.b bVar5 = new org.jsoup.nodes.b(f.valueOf(bVar3.nodeName(), d.f17346d), aVar.f19361e);
                                ArrayList arrayList2 = aVar.f19332p;
                                int lastIndexOf = arrayList2.lastIndexOf(bVar3);
                                k.isTrue(lastIndexOf != -1);
                                arrayList2.set(lastIndexOf, bVar5);
                                ArrayList arrayList3 = aVar.f19360d;
                                int lastIndexOf2 = arrayList3.lastIndexOf(bVar3);
                                k.isTrue(lastIndexOf2 != -1);
                                arrayList3.set(lastIndexOf2, bVar5);
                                if (bVar4.parent() != null) {
                                    bVar4.remove();
                                }
                                bVar5.appendChild(bVar4);
                                bVar3 = bVar5;
                                bVar4 = bVar3;
                            }
                        }
                        if (j.inSorted(bVar2.nodeName(), k6.b.f17342q)) {
                            if (bVar4.parent() != null) {
                                bVar4.remove();
                            }
                            aVar.s(bVar4);
                        } else {
                            if (bVar4.parent() != null) {
                                bVar4.remove();
                            }
                            bVar2.appendChild(bVar4);
                        }
                        org.jsoup.nodes.b bVar6 = new org.jsoup.nodes.b(g7.tag(), aVar.f19361e);
                        bVar6.attributes().addAll(g7.attributes());
                        for (p pVar : (p[]) bVar.childNodes().toArray(new p[bVar.childNodeSize()])) {
                            bVar6.appendChild(pVar);
                        }
                        bVar.appendChild(bVar6);
                        aVar.A(g7);
                        aVar.B(g7);
                        int lastIndexOf3 = aVar.f19360d.lastIndexOf(bVar);
                        k.isTrue(lastIndexOf3 != -1);
                        aVar.f19360d.add(lastIndexOf3 + 1, bVar6);
                    }
                    return true;
                }
                if (j.inSorted(str, k6.b.f17340o)) {
                    if (!aVar.j(str)) {
                        aVar.e(this);
                        return false;
                    }
                    if (!b.c.v(aVar, str)) {
                        aVar.e(this);
                    }
                    aVar.w(str);
                    return true;
                }
                if (str.equals("span")) {
                    return f(oVar, aVar);
                }
                boolean equals = str.equals("li");
                String[] strArr5 = a.f19322v;
                if (equals) {
                    String[] strArr6 = a.f19323w;
                    String[] strArr7 = aVar.f19337u;
                    strArr7[0] = str;
                    if (!aVar.l(strArr7, strArr5, strArr6)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.f(str);
                    if (!aVar.currentElement().nodeName().equals(str)) {
                        aVar.e(this);
                    }
                    aVar.w(str);
                    return true;
                }
                if (str.equals("body")) {
                    if (aVar.j("body")) {
                        aVar.f19327k = HtmlTreeBuilderState.f19215A;
                        return true;
                    }
                    aVar.e(this);
                    return false;
                }
                if (str.equals("html")) {
                    if (aVar.processEndTag("body")) {
                        return aVar.process(lVar);
                    }
                    return true;
                }
                if (str.equals("form")) {
                    org.jsoup.nodes.b bVar7 = aVar.f19331o;
                    aVar.f19331o = null;
                    if (bVar7 == null || !aVar.j(str)) {
                        aVar.e(this);
                        return false;
                    }
                    if (!b.c.v(aVar, str)) {
                        aVar.e(this);
                    }
                    aVar.B(bVar7);
                    return true;
                }
                if (str.equals("p")) {
                    if (!aVar.i(str)) {
                        aVar.e(this);
                        aVar.processStartTag(str);
                        return aVar.process(lVar);
                    }
                    aVar.f(str);
                    if (!aVar.currentElement().nodeName().equals(str)) {
                        aVar.e(this);
                    }
                    aVar.w(str);
                    return true;
                }
                if (j.inSorted(str, strArr3)) {
                    if (!aVar.j(str)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.f(str);
                    if (!aVar.currentElement().nodeName().equals(str)) {
                        aVar.e(this);
                    }
                    aVar.w(str);
                    return true;
                }
                if (j.inSorted(str, strArr2)) {
                    if (!aVar.l(strArr2, strArr5, null)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.f(str);
                    if (!aVar.currentElement().nodeName().equals(str)) {
                        aVar.e(this);
                    }
                    for (int size2 = aVar.f19360d.size() - 1; size2 >= 0; size2--) {
                        org.jsoup.nodes.b bVar8 = (org.jsoup.nodes.b) aVar.f19360d.get(size2);
                        aVar.f19360d.remove(size2);
                        if (j.inSorted(bVar8.nodeName(), strArr2)) {
                            return true;
                        }
                    }
                    return true;
                }
                if (str.equals("sarcasm")) {
                    return f(oVar, aVar);
                }
                if (!j.inSorted(str, strArr)) {
                    if (!str.equals(CmcdConfiguration.KEY_BITRATE)) {
                        return f(oVar, aVar);
                    }
                    aVar.e(this);
                    aVar.processStartTag(CmcdConfiguration.KEY_BITRATE);
                    return false;
                }
                if (aVar.j("name")) {
                    return true;
                }
                if (!aVar.j(str)) {
                    aVar.e(this);
                    return false;
                }
                if (!b.c.v(aVar, str)) {
                    aVar.e(this);
                }
                aVar.w(str);
                aVar.c();
                return true;
            }
            m mVar = (m) oVar;
            String str2 = mVar.f17377c;
            if (str2.equals(CmcdData.OBJECT_TYPE_AUDIO_ONLY)) {
                if (aVar.g(CmcdData.OBJECT_TYPE_AUDIO_ONLY) != null) {
                    aVar.e(this);
                    aVar.processEndTag(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
                    org.jsoup.nodes.b h7 = aVar.h(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
                    if (h7 != null) {
                        aVar.A(h7);
                        aVar.B(h7);
                    }
                }
                aVar.z();
                aVar.y(aVar.n(mVar));
                return true;
            }
            if (j.inSorted(str2, k6.b.f17334i)) {
                aVar.z();
                aVar.q(mVar);
                aVar.f19335s = false;
                return true;
            }
            if (j.inSorted(str2, k6.b.f17327b)) {
                if (aVar.i("p")) {
                    aVar.processEndTag("p");
                }
                aVar.n(mVar);
                return true;
            }
            if (str2.equals("span")) {
                aVar.z();
                aVar.n(mVar);
                return true;
            }
            boolean equals2 = str2.equals("li");
            String[] strArr8 = k6.b.f17330e;
            if (equals2) {
                aVar.f19335s = false;
                ArrayList arrayList4 = aVar.f19360d;
                int size3 = arrayList4.size() - 1;
                while (true) {
                    if (size3 <= 0) {
                        break;
                    }
                    org.jsoup.nodes.b bVar9 = (org.jsoup.nodes.b) arrayList4.get(size3);
                    if (bVar9.nodeName().equals("li")) {
                        aVar.processEndTag("li");
                        break;
                    }
                    if (j.inSorted(bVar9.nodeName(), strArr4) && !j.inSorted(bVar9.nodeName(), strArr8)) {
                        break;
                    }
                    size3--;
                }
                if (aVar.i("p")) {
                    aVar.processEndTag("p");
                }
                aVar.n(mVar);
                return true;
            }
            if (str2.equals("html")) {
                aVar.e(this);
                org.jsoup.nodes.b bVar10 = (org.jsoup.nodes.b) aVar.f19360d.get(0);
                Iterator<j6.a> it = mVar.f17384j.iterator();
                while (it.hasNext()) {
                    j6.a next = it.next();
                    if (!bVar10.hasAttr(next.getKey())) {
                        bVar10.attributes().put(next);
                    }
                }
                return true;
            }
            if (j.inSorted(str2, k6.b.f17326a)) {
                AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.f19225j;
                aVar.f19362f = oVar;
                return anonymousClass4.e(oVar, aVar);
            }
            if (str2.equals("body")) {
                aVar.e(this);
                ArrayList arrayList5 = aVar.f19360d;
                if (arrayList5.size() == 1) {
                    return false;
                }
                if (arrayList5.size() > 2 && !((org.jsoup.nodes.b) arrayList5.get(1)).nodeName().equals("body")) {
                    return false;
                }
                aVar.f19335s = false;
                org.jsoup.nodes.b bVar11 = (org.jsoup.nodes.b) arrayList5.get(1);
                Iterator<j6.a> it2 = mVar.f17384j.iterator();
                while (it2.hasNext()) {
                    j6.a next2 = it2.next();
                    if (!bVar11.hasAttr(next2.getKey())) {
                        bVar11.attributes().put(next2);
                    }
                }
            } else {
                if (str2.equals("frameset")) {
                    aVar.e(this);
                    ArrayList arrayList6 = aVar.f19360d;
                    if (arrayList6.size() == 1) {
                        return false;
                    }
                    if ((arrayList6.size() > 2 && !((org.jsoup.nodes.b) arrayList6.get(1)).nodeName().equals("body")) || !aVar.f19335s) {
                        return false;
                    }
                    org.jsoup.nodes.b bVar12 = (org.jsoup.nodes.b) arrayList6.get(1);
                    if (bVar12.parent() != null) {
                        bVar12.remove();
                    }
                    while (arrayList6.size() > 1) {
                        arrayList6.remove(arrayList6.size() - 1);
                    }
                    aVar.n(mVar);
                    aVar.f19327k = HtmlTreeBuilderState.f19216B;
                    return true;
                }
                if (j.inSorted(str2, strArr2)) {
                    if (aVar.i("p")) {
                        aVar.processEndTag("p");
                    }
                    if (j.inSorted(aVar.currentElement().nodeName(), strArr2)) {
                        aVar.e(this);
                        aVar.v();
                    }
                    aVar.n(mVar);
                    return true;
                }
                if (j.inSorted(str2, k6.b.f17329d)) {
                    if (aVar.i("p")) {
                        aVar.processEndTag("p");
                    }
                    aVar.n(mVar);
                    aVar.f19357a.f(StringUtils.LF);
                    aVar.f19335s = false;
                    return true;
                }
                if (str2.equals("form")) {
                    if (aVar.f19331o != null) {
                        aVar.e(this);
                        return false;
                    }
                    if (aVar.i("p")) {
                        aVar.processEndTag("p");
                    }
                    aVar.r(mVar, true);
                    return true;
                }
                if (j.inSorted(str2, strArr3)) {
                    aVar.f19335s = false;
                    ArrayList arrayList7 = aVar.f19360d;
                    int size4 = arrayList7.size() - 1;
                    while (true) {
                        if (size4 <= 0) {
                            break;
                        }
                        org.jsoup.nodes.b bVar13 = (org.jsoup.nodes.b) arrayList7.get(size4);
                        if (j.inSorted(bVar13.nodeName(), strArr3)) {
                            aVar.processEndTag(bVar13.nodeName());
                            break;
                        }
                        if (j.inSorted(bVar13.nodeName(), strArr4) && !j.inSorted(bVar13.nodeName(), strArr8)) {
                            break;
                        }
                        size4--;
                    }
                    if (aVar.i("p")) {
                        aVar.processEndTag("p");
                    }
                    aVar.n(mVar);
                    return true;
                }
                if (str2.equals("plaintext")) {
                    if (aVar.i("p")) {
                        aVar.processEndTag("p");
                    }
                    aVar.n(mVar);
                    aVar.f19358b.f19342c = TokeniserState.f19298p;
                    return true;
                }
                if (str2.equals("button")) {
                    if (aVar.i("button")) {
                        aVar.e(this);
                        aVar.processEndTag("button");
                        aVar.process(mVar);
                        return true;
                    }
                    aVar.z();
                    aVar.n(mVar);
                    aVar.f19335s = false;
                    return true;
                }
                if (j.inSorted(str2, k6.b.f17332g)) {
                    aVar.z();
                    aVar.y(aVar.n(mVar));
                    return true;
                }
                if (str2.equals("nobr")) {
                    aVar.z();
                    if (aVar.j("nobr")) {
                        aVar.e(this);
                        aVar.processEndTag("nobr");
                        aVar.z();
                    }
                    aVar.y(aVar.n(mVar));
                    return true;
                }
                if (j.inSorted(str2, strArr)) {
                    aVar.z();
                    aVar.n(mVar);
                    aVar.f19332p.add(null);
                    aVar.f19335s = false;
                    return true;
                }
                boolean equals3 = str2.equals("table");
                AnonymousClass9 anonymousClass9 = HtmlTreeBuilderState.f19230r;
                if (equals3) {
                    if (aVar.f19359c.quirksMode() != Document$QuirksMode.f19187e && aVar.i("p")) {
                        aVar.processEndTag("p");
                    }
                    aVar.n(mVar);
                    aVar.f19335s = false;
                    aVar.f19327k = anonymousClass9;
                    return true;
                }
                if (str2.equals("input")) {
                    aVar.z();
                    if (!aVar.q(mVar).attr("type").equalsIgnoreCase("hidden")) {
                        aVar.f19335s = false;
                        return true;
                    }
                } else {
                    if (j.inSorted(str2, k6.b.f17335j)) {
                        aVar.q(mVar);
                        return true;
                    }
                    if (str2.equals("hr")) {
                        if (aVar.i("p")) {
                            aVar.processEndTag("p");
                        }
                        aVar.q(mVar);
                        aVar.f19335s = false;
                        return true;
                    }
                    if (str2.equals(MimeTypes.BASE_TYPE_IMAGE)) {
                        if (aVar.h("svg") == null) {
                            mVar.n("img");
                            return aVar.process(mVar);
                        }
                        aVar.n(mVar);
                        return true;
                    }
                    if (str2.equals("isindex")) {
                        aVar.e(this);
                        if (aVar.f19331o != null) {
                            return false;
                        }
                        aVar.processStartTag("form");
                        if (mVar.f17384j.hasKey("action")) {
                            aVar.f19331o.attr("action", mVar.f17384j.get("action"));
                        }
                        aVar.processStartTag("hr");
                        aVar.processStartTag("label");
                        String str3 = mVar.f17384j.hasKey("prompt") ? mVar.f17384j.get("prompt") : "This is a searchable index. Enter search keywords: ";
                        h hVar2 = new h();
                        hVar2.f17368b = str3;
                        aVar.process(hVar2);
                        j6.c cVar = new j6.c();
                        Iterator<j6.a> it3 = mVar.f17384j.iterator();
                        while (it3.hasNext()) {
                            j6.a next3 = it3.next();
                            if (!j.inSorted(next3.getKey(), k6.b.f17336k)) {
                                cVar.put(next3);
                            }
                        }
                        cVar.put("name", "isindex");
                        aVar.processStartTag("input", cVar);
                        aVar.processEndTag("label");
                        aVar.processStartTag("hr");
                        aVar.processEndTag("form");
                        return true;
                    }
                    if (str2.equals("textarea")) {
                        aVar.n(mVar);
                        aVar.f19358b.f19342c = TokeniserState.f19284f;
                        aVar.f19328l = aVar.f19327k;
                        aVar.f19335s = false;
                        aVar.f19327k = HtmlTreeBuilderState.f19229q;
                        return true;
                    }
                    if (str2.equals("xmp")) {
                        if (aVar.i("p")) {
                            aVar.processEndTag("p");
                        }
                        aVar.z();
                        aVar.f19335s = false;
                        HtmlTreeBuilderState.d(mVar, aVar);
                        return true;
                    }
                    if (str2.equals("iframe")) {
                        aVar.f19335s = false;
                        HtmlTreeBuilderState.d(mVar, aVar);
                        return true;
                    }
                    if (str2.equals("noembed")) {
                        HtmlTreeBuilderState.d(mVar, aVar);
                        return true;
                    }
                    if (str2.equals("select")) {
                        aVar.z();
                        aVar.n(mVar);
                        aVar.f19335s = false;
                        HtmlTreeBuilderState htmlTreeBuilderState = aVar.f19327k;
                        if (htmlTreeBuilderState.equals(anonymousClass9) || htmlTreeBuilderState.equals(HtmlTreeBuilderState.f19232t) || htmlTreeBuilderState.equals(HtmlTreeBuilderState.f19234v) || htmlTreeBuilderState.equals(HtmlTreeBuilderState.f19235w) || htmlTreeBuilderState.equals(HtmlTreeBuilderState.f19236x)) {
                            aVar.f19327k = HtmlTreeBuilderState.f19238z;
                            return true;
                        }
                        aVar.f19327k = HtmlTreeBuilderState.f19237y;
                        return true;
                    }
                    if (j.inSorted(str2, k6.b.f17337l)) {
                        if (b.c.v(aVar, "option")) {
                            aVar.processEndTag("option");
                        }
                        aVar.z();
                        aVar.n(mVar);
                        return true;
                    }
                    if (!j.inSorted(str2, k6.b.f17338m)) {
                        if (str2.equals("math")) {
                            aVar.z();
                            aVar.n(mVar);
                            return true;
                        }
                        if (str2.equals("svg")) {
                            aVar.z();
                            aVar.n(mVar);
                            return true;
                        }
                        if (j.inSorted(str2, k6.b.f17339n)) {
                            aVar.e(this);
                            return false;
                        }
                        aVar.z();
                        aVar.n(mVar);
                        return true;
                    }
                    if (aVar.j("ruby")) {
                        if (!b.c.v(aVar, "ruby")) {
                            aVar.e(this);
                            for (int size5 = aVar.f19360d.size() - 1; size5 >= 0 && !((org.jsoup.nodes.b) aVar.f19360d.get(size5)).nodeName().equals("ruby"); size5--) {
                                aVar.f19360d.remove(size5);
                            }
                        }
                        aVar.n(mVar);
                        return true;
                    }
                }
            }
            return true;
        }

        public final boolean f(o oVar, a aVar) {
            d dVar = aVar.f19364h;
            oVar.getClass();
            String a7 = dVar.a(((l) oVar).m());
            ArrayList arrayList = aVar.f19360d;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) arrayList.get(size);
                if (bVar.nodeName().equals(a7)) {
                    aVar.f(a7);
                    if (!a7.equals(aVar.currentElement().nodeName())) {
                        aVar.e(this);
                    }
                    aVar.w(a7);
                    return true;
                }
                if (j.inSorted(bVar.nodeName(), a.f19321B)) {
                    aVar.e(this);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$9, reason: invalid class name */
    public enum AnonymousClass9 extends HtmlTreeBuilderState {
        public AnonymousClass9() {
            super("InTable", 8);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean e(o oVar, a aVar) {
            if (oVar.f17385a == Token$TokenType.f19244m) {
                aVar.f19333q = new ArrayList();
                aVar.f19328l = aVar.f19327k;
                aVar.f19327k = HtmlTreeBuilderState.f19231s;
                return aVar.process(oVar);
            }
            if (oVar.a()) {
                aVar.p((i) oVar);
                return true;
            }
            if (oVar.b()) {
                aVar.e(this);
                return false;
            }
            if (oVar.e()) {
                m mVar = (m) oVar;
                String str = mVar.f17377c;
                if (str.equals("caption")) {
                    aVar.d("table");
                    aVar.f19332p.add(null);
                    aVar.n(mVar);
                    aVar.f19327k = HtmlTreeBuilderState.f19232t;
                    return true;
                }
                if (str.equals("colgroup")) {
                    aVar.d("table");
                    aVar.n(mVar);
                    aVar.f19327k = HtmlTreeBuilderState.f19233u;
                    return true;
                }
                if (str.equals("col")) {
                    aVar.processStartTag("colgroup");
                    return aVar.process(oVar);
                }
                if (j.in(str, "tbody", "tfoot", "thead")) {
                    aVar.d("table");
                    aVar.n(mVar);
                    aVar.f19327k = HtmlTreeBuilderState.f19234v;
                    return true;
                }
                if (j.in(str, "td", "th", "tr")) {
                    aVar.processStartTag("tbody");
                    return aVar.process(oVar);
                }
                if (!str.equals("table")) {
                    if (j.in(str, "style", "script")) {
                        AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.f19225j;
                        aVar.f19362f = oVar;
                        return anonymousClass4.e(oVar, aVar);
                    }
                    if (str.equals("input")) {
                        if (!mVar.f17384j.get("type").equalsIgnoreCase("hidden")) {
                            return f(oVar, aVar);
                        }
                        aVar.q(mVar);
                        return true;
                    }
                    if (!str.equals("form")) {
                        return f(oVar, aVar);
                    }
                    aVar.e(this);
                    if (aVar.f19331o != null) {
                        return false;
                    }
                    aVar.r(mVar, false);
                    return true;
                }
                aVar.e(this);
                if (aVar.processEndTag("table")) {
                    return aVar.process(oVar);
                }
            } else {
                if (oVar.d()) {
                    String str2 = ((l) oVar).f17377c;
                    if (!str2.equals("table")) {
                        if (!j.in(str2, "body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                            return f(oVar, aVar);
                        }
                        aVar.e(this);
                        return false;
                    }
                    if (!aVar.m(str2)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.w("table");
                    aVar.C();
                    return true;
                }
                if (!oVar.c()) {
                    return f(oVar, aVar);
                }
                if (b.c.v(aVar, "html")) {
                    aVar.e(this);
                }
            }
            return true;
        }

        public final boolean f(o oVar, a aVar) {
            aVar.e(this);
            boolean in = j.in(aVar.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr");
            AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.f19228p;
            if (!in) {
                aVar.f19362f = oVar;
                return anonymousClass7.e(oVar, aVar);
            }
            aVar.f19336t = true;
            aVar.f19362f = oVar;
            boolean e3 = anonymousClass7.e(oVar, aVar);
            aVar.f19336t = false;
            return e3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.HtmlTreeBuilderState$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.jsoup.parser.HtmlTreeBuilderState$11] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.jsoup.parser.HtmlTreeBuilderState$12] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.jsoup.parser.HtmlTreeBuilderState$13] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.jsoup.parser.HtmlTreeBuilderState$14] */
    /* JADX WARN: Type inference failed for: r14v0, types: [org.jsoup.parser.HtmlTreeBuilderState$15] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.jsoup.parser.HtmlTreeBuilderState$17] */
    /* JADX WARN: Type inference failed for: r17v0, types: [org.jsoup.parser.HtmlTreeBuilderState$18] */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.jsoup.parser.HtmlTreeBuilderState$19] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.jsoup.parser.HtmlTreeBuilderState$20] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.HtmlTreeBuilderState$2] */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.jsoup.parser.HtmlTreeBuilderState$21] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.jsoup.parser.HtmlTreeBuilderState$22] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.jsoup.parser.HtmlTreeBuilderState$3] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.HtmlTreeBuilderState$5] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.jsoup.parser.HtmlTreeBuilderState$6] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.jsoup.parser.HtmlTreeBuilderState$8] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.jsoup.parser.HtmlTreeBuilderState$10] */
    static {
        ?? r02 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (HtmlTreeBuilderState.b(oVar)) {
                    return true;
                }
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                boolean b7 = oVar.b();
                AnonymousClass2 anonymousClass2 = HtmlTreeBuilderState.f19223e;
                if (!b7) {
                    aVar.f19327k = anonymousClass2;
                    return aVar.process(oVar);
                }
                k6.j jVar = (k6.j) oVar;
                j6.i iVar = new j6.i(aVar.f19364h.a(jVar.f17371b.toString()), jVar.f17373d.toString(), jVar.getSystemIdentifier());
                iVar.setPubSysKey(jVar.f17372c);
                aVar.f19359c.appendChild(iVar);
                if (jVar.isForceQuirks()) {
                    aVar.f19359c.quirksMode(Document$QuirksMode.f19187e);
                }
                aVar.f19327k = anonymousClass2;
                return true;
            }
        };
        f19222b = r02;
        ?? r12 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.b()) {
                    aVar.e(this);
                    return false;
                }
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                if (HtmlTreeBuilderState.b(oVar)) {
                    return true;
                }
                boolean e3 = oVar.e();
                AnonymousClass3 anonymousClass3 = HtmlTreeBuilderState.f19224f;
                if (e3) {
                    m mVar = (m) oVar;
                    if (mVar.f17377c.equals("html")) {
                        aVar.n(mVar);
                        aVar.f19327k = anonymousClass3;
                        return true;
                    }
                }
                if (oVar.d() && j.in(((l) oVar).f17377c, "head", "body", "html", CmcdConfiguration.KEY_BITRATE)) {
                    org.jsoup.nodes.b bVar = new org.jsoup.nodes.b(f.valueOf("html", aVar.f19364h), aVar.f19361e);
                    aVar.t(bVar);
                    aVar.f19360d.add(bVar);
                    aVar.f19327k = anonymousClass3;
                    return aVar.process(oVar);
                }
                if (oVar.d()) {
                    aVar.e(this);
                    return false;
                }
                org.jsoup.nodes.b bVar2 = new org.jsoup.nodes.b(f.valueOf("html", aVar.f19364h), aVar.f19361e);
                aVar.t(bVar2);
                aVar.f19360d.add(bVar2);
                aVar.f19327k = anonymousClass3;
                return aVar.process(oVar);
            }
        };
        f19223e = r12;
        ?? r22 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (HtmlTreeBuilderState.b(oVar)) {
                    return true;
                }
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                if (oVar.b()) {
                    aVar.e(this);
                    return false;
                }
                if (oVar.e() && ((m) oVar).f17377c.equals("html")) {
                    return HtmlTreeBuilderState.f19228p.e(oVar, aVar);
                }
                if (oVar.e()) {
                    m mVar = (m) oVar;
                    if (mVar.f17377c.equals("head")) {
                        aVar.f19330n = aVar.n(mVar);
                        aVar.f19327k = HtmlTreeBuilderState.f19225j;
                        return true;
                    }
                }
                if (oVar.d() && j.in(((l) oVar).f17377c, "head", "body", "html", CmcdConfiguration.KEY_BITRATE)) {
                    aVar.processStartTag("head");
                    return aVar.process(oVar);
                }
                if (oVar.d()) {
                    aVar.e(this);
                    return false;
                }
                aVar.processStartTag("head");
                return aVar.process(oVar);
            }
        };
        f19224f = r22;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        f19225j = anonymousClass4;
        ?? r42 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.b()) {
                    aVar.e(this);
                    return true;
                }
                if (oVar.e() && ((m) oVar).f17377c.equals("html")) {
                    AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.f19228p;
                    aVar.f19362f = oVar;
                    return anonymousClass7.e(oVar, aVar);
                }
                boolean d7 = oVar.d();
                AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.f19225j;
                if (d7 && ((l) oVar).f17377c.equals("noscript")) {
                    aVar.v();
                    aVar.f19327k = anonymousClass42;
                    return true;
                }
                if (HtmlTreeBuilderState.b(oVar) || oVar.a() || (oVar.e() && j.in(((m) oVar).f17377c, "basefont", "bgsound", "link", "meta", "noframes", "style"))) {
                    aVar.f19362f = oVar;
                    return anonymousClass42.e(oVar, aVar);
                }
                if (oVar.d() && ((l) oVar).f17377c.equals(CmcdConfiguration.KEY_BITRATE)) {
                    aVar.e(this);
                    h hVar = new h();
                    hVar.f17368b = oVar.toString();
                    aVar.o(hVar);
                    return true;
                }
                if ((oVar.e() && j.in(((m) oVar).f17377c, "head", "noscript")) || oVar.d()) {
                    aVar.e(this);
                    return false;
                }
                aVar.e(this);
                h hVar2 = new h();
                hVar2.f17368b = oVar.toString();
                aVar.o(hVar2);
                return true;
            }
        };
        f19226m = r42;
        ?? r52 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (HtmlTreeBuilderState.b(oVar)) {
                    aVar.o((h) oVar);
                } else if (oVar.a()) {
                    aVar.p((i) oVar);
                } else if (oVar.b()) {
                    aVar.e(this);
                } else if (oVar.e()) {
                    m mVar = (m) oVar;
                    String str = mVar.f17377c;
                    boolean equals = str.equals("html");
                    AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.f19228p;
                    if (equals) {
                        aVar.f19362f = oVar;
                        return anonymousClass7.e(oVar, aVar);
                    }
                    if (str.equals("body")) {
                        aVar.n(mVar);
                        aVar.f19335s = false;
                        aVar.f19327k = anonymousClass7;
                    } else if (str.equals("frameset")) {
                        aVar.n(mVar);
                        aVar.f19327k = HtmlTreeBuilderState.f19216B;
                    } else if (j.in(str, "base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "title")) {
                        aVar.e(this);
                        org.jsoup.nodes.b bVar = aVar.f19330n;
                        aVar.f19360d.add(bVar);
                        aVar.x(oVar, HtmlTreeBuilderState.f19225j);
                        aVar.B(bVar);
                    } else {
                        if (str.equals("head")) {
                            aVar.e(this);
                            return false;
                        }
                        aVar.processStartTag("body");
                        aVar.f19335s = true;
                        aVar.process(oVar);
                    }
                } else if (!oVar.d()) {
                    aVar.processStartTag("body");
                    aVar.f19335s = true;
                    aVar.process(oVar);
                } else {
                    if (!j.in(((l) oVar).f17377c, "body", "html")) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.processStartTag("body");
                    aVar.f19335s = true;
                    aVar.process(oVar);
                }
                return true;
            }
        };
        f19227n = r52;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        f19228p = anonymousClass7;
        ?? r7 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.f17385a == Token$TokenType.f19244m) {
                    aVar.o((h) oVar);
                    return true;
                }
                if (oVar.c()) {
                    aVar.e(this);
                    aVar.v();
                    aVar.f19327k = aVar.f19328l;
                    return aVar.process(oVar);
                }
                if (!oVar.d()) {
                    return true;
                }
                aVar.v();
                aVar.f19327k = aVar.f19328l;
                return true;
            }
        };
        f19229q = r7;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        f19230r = anonymousClass9;
        ?? r9 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.f17385a.ordinal() == 4) {
                    h hVar = (h) oVar;
                    if (hVar.f17368b.equals(HtmlTreeBuilderState.f19220F)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.f19333q.add(hVar.f17368b);
                    return true;
                }
                if (aVar.f19333q.size() > 0) {
                    Iterator it = aVar.f19333q.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (j.isBlank(str)) {
                            h hVar2 = new h();
                            hVar2.f17368b = str;
                            aVar.o(hVar2);
                        } else {
                            aVar.e(this);
                            boolean in = j.in(aVar.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr");
                            HtmlTreeBuilderState htmlTreeBuilderState = HtmlTreeBuilderState.f19228p;
                            if (in) {
                                aVar.f19336t = true;
                                h hVar3 = new h();
                                hVar3.f17368b = str;
                                aVar.x(hVar3, htmlTreeBuilderState);
                                aVar.f19336t = false;
                            } else {
                                h hVar4 = new h();
                                hVar4.f17368b = str;
                                aVar.x(hVar4, htmlTreeBuilderState);
                            }
                        }
                    }
                    aVar.f19333q = new ArrayList();
                }
                aVar.f19327k = aVar.f19328l;
                return aVar.process(oVar);
            }
        };
        f19231s = r9;
        ?? r10 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.d()) {
                    l lVar = (l) oVar;
                    if (lVar.f17377c.equals("caption")) {
                        if (!aVar.m(lVar.f17377c)) {
                            aVar.e(this);
                            return false;
                        }
                        if (!b.c.v(aVar, "caption")) {
                            aVar.e(this);
                        }
                        aVar.w("caption");
                        aVar.c();
                        aVar.f19327k = HtmlTreeBuilderState.f19230r;
                        return true;
                    }
                }
                if ((oVar.e() && j.in(((m) oVar).f17377c, "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (oVar.d() && ((l) oVar).f17377c.equals("table"))) {
                    aVar.e(this);
                    if (aVar.processEndTag("caption")) {
                        return aVar.process(oVar);
                    }
                    return true;
                }
                if (oVar.d() && j.in(((l) oVar).f17377c, "body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    aVar.e(this);
                    return false;
                }
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                aVar.f19362f = oVar;
                return anonymousClass72.e(oVar, aVar);
            }
        };
        f19232t = r10;
        ?? r11 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
            public static boolean f(o oVar, a aVar) {
                if (aVar.processEndTag("colgroup")) {
                    return aVar.process(oVar);
                }
                return true;
            }

            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (HtmlTreeBuilderState.b(oVar)) {
                    aVar.o((h) oVar);
                    return true;
                }
                int ordinal = oVar.f17385a.ordinal();
                if (ordinal == 0) {
                    aVar.e(this);
                    return true;
                }
                if (ordinal == 1) {
                    m mVar = (m) oVar;
                    String str = mVar.f17377c;
                    str.getClass();
                    if (str.equals("col")) {
                        aVar.q(mVar);
                        return true;
                    }
                    if (!str.equals("html")) {
                        return f(oVar, aVar);
                    }
                    AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        aVar.p((i) oVar);
                        return true;
                    }
                    if (ordinal != 5) {
                        return f(oVar, aVar);
                    }
                    if (b.c.v(aVar, "html")) {
                        return true;
                    }
                    return f(oVar, aVar);
                }
                if (!((l) oVar).f17377c.equals("colgroup")) {
                    return f(oVar, aVar);
                }
                if (b.c.v(aVar, "html")) {
                    aVar.e(this);
                    return false;
                }
                aVar.v();
                aVar.f19327k = HtmlTreeBuilderState.f19230r;
                return true;
            }
        };
        f19233u = r11;
        ?? r122 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                int ordinal = oVar.f17385a.ordinal();
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.f19230r;
                if (ordinal == 1) {
                    m mVar = (m) oVar;
                    String str = mVar.f17377c;
                    if (str.equals("template")) {
                        aVar.n(mVar);
                        return true;
                    }
                    if (str.equals("tr")) {
                        aVar.d("tbody", "tfoot", "thead", "template");
                        aVar.n(mVar);
                        aVar.f19327k = HtmlTreeBuilderState.f19235w;
                        return true;
                    }
                    if (j.in(str, "th", "td")) {
                        aVar.e(this);
                        aVar.processStartTag("tr");
                        return aVar.process(mVar);
                    }
                    if (j.in(str, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                        return f(oVar, aVar);
                    }
                    aVar.f19362f = oVar;
                    return anonymousClass92.e(oVar, aVar);
                }
                if (ordinal != 2) {
                    aVar.f19362f = oVar;
                    return anonymousClass92.e(oVar, aVar);
                }
                String str2 = ((l) oVar).f17377c;
                if (j.in(str2, "tbody", "tfoot", "thead")) {
                    if (!aVar.m(str2)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.d("tbody", "tfoot", "thead", "template");
                    aVar.v();
                    aVar.f19327k = anonymousClass92;
                    return true;
                }
                if (str2.equals("table")) {
                    return f(oVar, aVar);
                }
                if (j.in(str2, "body", "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                    aVar.e(this);
                    return false;
                }
                aVar.f19362f = oVar;
                return anonymousClass92.e(oVar, aVar);
            }

            public final boolean f(o oVar, a aVar) {
                if (!aVar.m("tbody") && !aVar.m("thead") && !aVar.j("tfoot")) {
                    aVar.e(this);
                    return false;
                }
                aVar.d("tbody", "tfoot", "thead", "template");
                aVar.processEndTag(aVar.currentElement().nodeName());
                return aVar.process(oVar);
            }
        };
        f19234v = r122;
        ?? r13 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                boolean e3 = oVar.e();
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.f19230r;
                if (e3) {
                    m mVar = (m) oVar;
                    String str = mVar.f17377c;
                    if (str.equals("template")) {
                        aVar.n(mVar);
                        return true;
                    }
                    if (j.in(str, "th", "td")) {
                        aVar.d("tr", "template");
                        aVar.n(mVar);
                        aVar.f19327k = HtmlTreeBuilderState.f19236x;
                        aVar.f19332p.add(null);
                        return true;
                    }
                    if (!j.in(str, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr")) {
                        aVar.f19362f = oVar;
                        return anonymousClass92.e(oVar, aVar);
                    }
                    if (aVar.processEndTag("tr")) {
                        return aVar.process(oVar);
                    }
                    return false;
                }
                if (!oVar.d()) {
                    aVar.f19362f = oVar;
                    return anonymousClass92.e(oVar, aVar);
                }
                String str2 = ((l) oVar).f17377c;
                if (str2.equals("tr")) {
                    if (!aVar.m(str2)) {
                        aVar.e(this);
                        return false;
                    }
                    aVar.d("tr", "template");
                    aVar.v();
                    aVar.f19327k = HtmlTreeBuilderState.f19234v;
                    return true;
                }
                if (str2.equals("table")) {
                    if (aVar.processEndTag("tr")) {
                        return aVar.process(oVar);
                    }
                    return false;
                }
                if (j.in(str2, "tbody", "tfoot", "thead")) {
                    if (aVar.m(str2)) {
                        aVar.processEndTag("tr");
                        return aVar.process(oVar);
                    }
                    aVar.e(this);
                    return false;
                }
                if (j.in(str2, "body", "caption", "col", "colgroup", "html", "td", "th")) {
                    aVar.e(this);
                    return false;
                }
                aVar.f19362f = oVar;
                return anonymousClass92.e(oVar, aVar);
            }
        };
        f19235w = r13;
        ?? r14 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                boolean d7 = oVar.d();
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                if (!d7) {
                    if (!oVar.e() || !j.in(((m) oVar).f17377c, "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                        aVar.f19362f = oVar;
                        return anonymousClass72.e(oVar, aVar);
                    }
                    if (!aVar.m("td") && !aVar.m("th")) {
                        aVar.e(this);
                        return false;
                    }
                    if (aVar.m("td")) {
                        aVar.processEndTag("td");
                    } else {
                        aVar.processEndTag("th");
                    }
                    return aVar.process(oVar);
                }
                String str = ((l) oVar).f17377c;
                if (j.in(str, "td", "th")) {
                    boolean m7 = aVar.m(str);
                    AnonymousClass14 anonymousClass14 = HtmlTreeBuilderState.f19235w;
                    if (!m7) {
                        aVar.e(this);
                        aVar.f19327k = anonymousClass14;
                        return false;
                    }
                    if (!b.c.v(aVar, str)) {
                        aVar.e(this);
                    }
                    aVar.w(str);
                    aVar.c();
                    aVar.f19327k = anonymousClass14;
                    return true;
                }
                if (j.in(str, "body", "caption", "col", "colgroup", "html")) {
                    aVar.e(this);
                    return false;
                }
                if (!j.in(str, "table", "tbody", "tfoot", "thead", "tr")) {
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (!aVar.m(str)) {
                    aVar.e(this);
                    return false;
                }
                if (aVar.m("td")) {
                    aVar.processEndTag("td");
                } else {
                    aVar.processEndTag("th");
                }
                return aVar.process(oVar);
            }
        };
        f19236x = r14;
        AnonymousClass16 anonymousClass16 = new AnonymousClass16();
        f19237y = anonymousClass16;
        ?? r16 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.e() && j.in(((m) oVar).f17377c, "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                    aVar.e(this);
                    aVar.processEndTag("select");
                    return aVar.process(oVar);
                }
                if (oVar.d()) {
                    l lVar = (l) oVar;
                    if (j.in(lVar.f17377c, "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                        aVar.e(this);
                        if (!aVar.m(lVar.f17377c)) {
                            return false;
                        }
                        aVar.processEndTag("select");
                        return aVar.process(oVar);
                    }
                }
                AnonymousClass16 anonymousClass162 = HtmlTreeBuilderState.f19237y;
                aVar.f19362f = oVar;
                return anonymousClass162.e(oVar, aVar);
            }
        };
        f19238z = r16;
        ?? r17 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                boolean b7 = HtmlTreeBuilderState.b(oVar);
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                if (b7) {
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                if (oVar.b()) {
                    aVar.e(this);
                    return false;
                }
                if (oVar.e() && ((m) oVar).f17377c.equals("html")) {
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (oVar.d() && ((l) oVar).f17377c.equals("html")) {
                    aVar.f19327k = HtmlTreeBuilderState.f19218D;
                    return true;
                }
                if (oVar.c()) {
                    return true;
                }
                aVar.e(this);
                aVar.f19327k = anonymousClass72;
                return aVar.process(oVar);
            }
        };
        f19215A = r17;
        ?? r18 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                m mVar;
                if (HtmlTreeBuilderState.b(oVar)) {
                    aVar.o((h) oVar);
                    return true;
                }
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                if (oVar.b()) {
                    aVar.e(this);
                    return false;
                }
                if (!oVar.e()) {
                    if (oVar.d() && ((l) oVar).f17377c.equals("frameset")) {
                        if (b.c.v(aVar, "html")) {
                            aVar.e(this);
                            return false;
                        }
                        aVar.v();
                        if (!aVar.currentElement().nodeName().equals("frameset")) {
                            aVar.f19327k = HtmlTreeBuilderState.f19217C;
                            return true;
                        }
                    } else {
                        if (!oVar.c()) {
                            aVar.e(this);
                            return false;
                        }
                        if (!b.c.v(aVar, "html")) {
                            aVar.e(this);
                        }
                    }
                    return true;
                }
                mVar = (m) oVar;
                String str = mVar.f17377c;
                str.getClass();
                switch (str) {
                    case "frameset":
                        aVar.n(mVar);
                        break;
                    case "html":
                        AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                        aVar.f19362f = mVar;
                        break;
                    case "frame":
                        aVar.q(mVar);
                        break;
                    case "noframes":
                        AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.f19225j;
                        aVar.f19362f = mVar;
                        break;
                    default:
                        aVar.e(this);
                        break;
                }
                return true;
            }
        };
        f19216B = r18;
        ?? r19 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (HtmlTreeBuilderState.b(oVar)) {
                    aVar.o((h) oVar);
                    return true;
                }
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                if (oVar.b()) {
                    aVar.e(this);
                    return false;
                }
                if (oVar.e() && ((m) oVar).f17377c.equals("html")) {
                    AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (oVar.d() && ((l) oVar).f17377c.equals("html")) {
                    aVar.f19327k = HtmlTreeBuilderState.f19219E;
                    return true;
                }
                if (oVar.e() && ((m) oVar).f17377c.equals("noframes")) {
                    AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.f19225j;
                    aVar.f19362f = oVar;
                    return anonymousClass42.e(oVar, aVar);
                }
                if (oVar.c()) {
                    return true;
                }
                aVar.e(this);
                return false;
            }
        };
        f19217C = r19;
        ?? r20 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                boolean b7 = oVar.b();
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                if (b7 || HtmlTreeBuilderState.b(oVar) || (oVar.e() && ((m) oVar).f17377c.equals("html"))) {
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (oVar.c()) {
                    return true;
                }
                aVar.e(this);
                aVar.f19327k = anonymousClass72;
                return aVar.process(oVar);
            }
        };
        f19218D = r20;
        ?? r21 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                if (oVar.a()) {
                    aVar.p((i) oVar);
                    return true;
                }
                if (oVar.b() || HtmlTreeBuilderState.b(oVar) || (oVar.e() && ((m) oVar).f17377c.equals("html"))) {
                    AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.f19228p;
                    aVar.f19362f = oVar;
                    return anonymousClass72.e(oVar, aVar);
                }
                if (oVar.c()) {
                    return true;
                }
                if (!oVar.e() || !((m) oVar).f17377c.equals("noframes")) {
                    aVar.e(this);
                    return false;
                }
                AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.f19225j;
                aVar.f19362f = oVar;
                return anonymousClass42.e(oVar, aVar);
            }
        };
        f19219E = r21;
        f19221G = new HtmlTreeBuilderState[]{r02, r12, r22, anonymousClass4, r42, r52, anonymousClass7, r7, anonymousClass9, r9, r10, r11, r122, r13, r14, anonymousClass16, r16, r17, r18, r19, r20, r21, new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean e(o oVar, a aVar) {
                return true;
            }
        }};
        f19220F = String.valueOf((char) 0);
    }

    public static boolean b(o oVar) {
        if (oVar.f17385a == Token$TokenType.f19244m) {
            return j.isBlank(((h) oVar).f17368b);
        }
        return false;
    }

    public static void d(m mVar, a aVar) {
        aVar.f19358b.f19342c = TokeniserState.f19293m;
        aVar.f19328l = aVar.f19327k;
        aVar.f19327k = f19229q;
        aVar.n(mVar);
    }

    public static HtmlTreeBuilderState valueOf(String str) {
        return (HtmlTreeBuilderState) Enum.valueOf(HtmlTreeBuilderState.class, str);
    }

    public static HtmlTreeBuilderState[] values() {
        return (HtmlTreeBuilderState[]) f19221G.clone();
    }

    public abstract boolean e(o oVar, a aVar);
}
