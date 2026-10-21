package k6;

import j6.r;
import j6.s;
import java.io.Reader;
import org.jsoup.nodes.Document$OutputSettings$Syntax;
import org.jsoup.parser.ParseErrorList;

/* loaded from: classes2.dex */
public final class q extends org.jsoup.parser.c {
    @Override // org.jsoup.parser.c
    public final d a() {
        return d.f17346d;
    }

    @Override // org.jsoup.parser.c
    public void initialiseParse(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        super.initialiseParse(reader, str, parseErrorList, dVar);
        this.f19360d.add(this.f19359c);
        this.f19359c.outputSettings().syntax(Document$OutputSettings$Syntax.f19184e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [j6.m, j6.s] */
    @Override // org.jsoup.parser.c
    public boolean process(o oVar) {
        org.jsoup.nodes.b bVar;
        int ordinal = oVar.f17385a.ordinal();
        if (ordinal == 0) {
            j jVar = (j) oVar;
            j6.i iVar = new j6.i(this.f19364h.a(jVar.f17371b.toString()), jVar.f17373d.toString(), jVar.getSystemIdentifier());
            iVar.setPubSysKey(jVar.f17372c);
            currentElement().appendChild(iVar);
            return true;
        }
        if (ordinal == 1) {
            m mVar = (m) oVar;
            f valueOf = f.valueOf(mVar.m(), this.f19364h);
            String str = this.f19361e;
            d dVar = this.f19364h;
            j6.c cVar = mVar.f17384j;
            if (!dVar.f17348b) {
                cVar.normalize();
            }
            org.jsoup.nodes.b bVar2 = new org.jsoup.nodes.b(valueOf, str, cVar);
            currentElement().appendChild(bVar2);
            if (!mVar.f17383i) {
                this.f19360d.add(bVar2);
                return true;
            }
            if (!valueOf.isKnownTag()) {
                valueOf.f17364f = true;
            }
        } else if (ordinal == 2) {
            String a7 = this.f19364h.a(((l) oVar).f17376b);
            int size = this.f19360d.size() - 1;
            while (true) {
                if (size < 0) {
                    bVar = null;
                    break;
                }
                bVar = (org.jsoup.nodes.b) this.f19360d.get(size);
                if (bVar.nodeName().equals(a7)) {
                    break;
                }
                size--;
            }
            if (bVar != null) {
                for (int size2 = this.f19360d.size() - 1; size2 >= 0; size2--) {
                    org.jsoup.nodes.b bVar3 = (org.jsoup.nodes.b) this.f19360d.get(size2);
                    this.f19360d.remove(size2);
                    if (bVar3 == bVar) {
                        break;
                    }
                }
            }
        } else {
            if (ordinal == 3) {
                i iVar2 = (i) oVar;
                j6.f fVar = new j6.f(iVar2.f17369b.toString());
                if (iVar2.f17370c) {
                    String data = fVar.getData();
                    if (data.length() > 1 && (data.startsWith("!") || data.startsWith("?"))) {
                        j6.h parse = g6.e.parse("<" + data.substring(1, data.length() - 1) + ">", this.f19361e, e.xmlParser());
                        if (parse.childNodeSize() > 0) {
                            org.jsoup.nodes.b child = parse.child(0);
                            ?? sVar = new s(this.f19364h.a(child.tagName()), data.startsWith("!"));
                            sVar.attributes().addAll(child.attributes());
                            fVar = sVar;
                        }
                    }
                }
                currentElement().appendChild(fVar);
                return true;
            }
            if (ordinal == 4) {
                h hVar = (h) oVar;
                String str2 = hVar.f17368b;
                currentElement().appendChild(hVar instanceof g ? new j6.e(str2) : new r(str2));
                return true;
            }
            if (ordinal != 5) {
                h6.k.fail("Unexpected token type: " + oVar.f17385a);
                return true;
            }
        }
        return true;
    }
}
