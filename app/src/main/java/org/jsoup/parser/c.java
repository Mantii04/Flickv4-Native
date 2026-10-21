package org.jsoup.parser;

import h6.k;
import j6.h;
import java.io.Reader;
import java.util.ArrayList;
import k6.d;
import k6.l;
import k6.m;
import k6.o;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public k6.a f19357a;

    /* renamed from: b, reason: collision with root package name */
    public b f19358b;

    /* renamed from: c, reason: collision with root package name */
    public h f19359c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f19360d;

    /* renamed from: e, reason: collision with root package name */
    public String f19361e;

    /* renamed from: f, reason: collision with root package name */
    public o f19362f;

    /* renamed from: g, reason: collision with root package name */
    public ParseErrorList f19363g;

    /* renamed from: h, reason: collision with root package name */
    public d f19364h;

    /* renamed from: i, reason: collision with root package name */
    public final m f19365i = new m();

    /* renamed from: j, reason: collision with root package name */
    public final l f19366j = new l();

    public abstract d a();

    public org.jsoup.nodes.b currentElement() {
        int size = this.f19360d.size();
        if (size > 0) {
            return (org.jsoup.nodes.b) this.f19360d.get(size - 1);
        }
        return null;
    }

    public void initialiseParse(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        k.notNull(reader, "String input must not be null");
        k.notNull(str, "BaseURI must not be null");
        this.f19359c = new h(str);
        this.f19364h = dVar;
        this.f19357a = new k6.a(reader);
        this.f19363g = parseErrorList;
        this.f19362f = null;
        this.f19358b = new b(this.f19357a, parseErrorList);
        this.f19360d = new ArrayList(32);
        this.f19361e = str;
    }

    public abstract boolean process(o oVar);

    public boolean processEndTag(String str) {
        o oVar = this.f19362f;
        l lVar = this.f19366j;
        if (oVar == lVar) {
            l lVar2 = new l();
            lVar2.n(str);
            return process(lVar2);
        }
        lVar.f();
        lVar.n(str);
        return process(lVar);
    }

    public boolean processStartTag(String str) {
        o oVar = this.f19362f;
        m mVar = this.f19365i;
        if (oVar == mVar) {
            m mVar2 = new m();
            mVar2.n(str);
            return process(mVar2);
        }
        mVar.f();
        mVar.n(str);
        return process(mVar);
    }

    public void runParser() {
        o oVar;
        do {
            b bVar = this.f19358b;
            while (!bVar.f19344e) {
                bVar.f19342c.f(bVar, bVar.f19340a);
            }
            StringBuilder sb = bVar.f19346g;
            int length = sb.length();
            k6.h hVar = bVar.f19351l;
            if (length > 0) {
                String sb2 = sb.toString();
                sb.delete(0, sb.length());
                bVar.f19345f = null;
                hVar.f17368b = sb2;
                oVar = hVar;
            } else {
                String str = bVar.f19345f;
                if (str != null) {
                    hVar.f17368b = str;
                    bVar.f19345f = null;
                    oVar = hVar;
                } else {
                    bVar.f19344e = false;
                    oVar = bVar.f19343d;
                }
            }
            process(oVar);
            oVar.f();
        } while (oVar.f17385a != Token$TokenType.f19245n);
    }

    public boolean processStartTag(String str, j6.c cVar) {
        o oVar = this.f19362f;
        m mVar = this.f19365i;
        if (oVar == mVar) {
            m mVar2 = new m();
            mVar2.f17376b = str;
            mVar2.f17384j = cVar;
            mVar2.f17377c = i6.b.lowerCase(str);
            return process(mVar2);
        }
        mVar.f();
        mVar.f17376b = str;
        mVar.f17384j = cVar;
        mVar.f17377c = i6.b.lowerCase(str);
        return process(mVar);
    }
}
