package org.jsoup.nodes;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import h6.j;
import h6.k;
import j6.c;
import j6.e;
import j6.g;
import j6.h;
import j6.p;
import j6.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import k6.f;
import l6.AbstractC1233c;
import l6.C1237g;
import l6.C1247q;
import l6.C1251v;
import l6.P;
import l6.U;
import l6.X;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class b extends p {

    /* renamed from: q, reason: collision with root package name */
    public static final List f19209q = Collections.EMPTY_LIST;

    /* renamed from: f, reason: collision with root package name */
    public final f f19210f;

    /* renamed from: j, reason: collision with root package name */
    public WeakReference f19211j;

    /* renamed from: m, reason: collision with root package name */
    public List f19212m;

    /* renamed from: n, reason: collision with root package name */
    public c f19213n;

    /* renamed from: p, reason: collision with root package name */
    public String f19214p;

    static {
        Pattern.compile("\\s+");
    }

    public b(f fVar, String str, c cVar) {
        k.notNull(fVar);
        k.notNull(str);
        this.f19212m = f19209q;
        this.f19214p = str;
        this.f19213n = cVar;
        this.f19210f = fVar;
    }

    public static int d(b bVar, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (list.get(i2) == bVar) {
                return i2;
            }
        }
        return 0;
    }

    public static boolean e(p pVar) {
        if (pVar != null && (pVar instanceof b)) {
            b bVar = (b) pVar;
            int i2 = 0;
            while (!bVar.f19210f.preserveWhitespace()) {
                bVar = bVar.parent();
                i2++;
                if (i2 < 6 && bVar != null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // j6.p
    public void a(Appendable appendable, int i2, a aVar) {
        boolean prettyPrint = aVar.prettyPrint();
        f fVar = this.f19210f;
        if (prettyPrint && (fVar.formatAsBlock() || ((parent() != null && parent().tag().formatAsBlock()) || aVar.outline()))) {
            if (!(appendable instanceof StringBuilder)) {
                indent(appendable, i2, aVar);
            } else if (((StringBuilder) appendable).length() > 0) {
                indent(appendable, i2, aVar);
            }
        }
        appendable.append('<').append(tagName());
        c cVar = this.f19213n;
        if (cVar != null) {
            cVar.b(appendable, aVar);
        }
        if (!this.f19212m.isEmpty() || !fVar.isSelfClosing()) {
            appendable.append('>');
        } else if (aVar.syntax() == Document$OutputSettings$Syntax.f19183b && fVar.isEmpty()) {
            appendable.append('>');
        } else {
            appendable.append(" />");
        }
    }

    public b appendChild(p pVar) {
        k.notNull(pVar);
        reparentChild(pVar);
        ensureChildNodes();
        this.f19212m.add(pVar);
        pVar.setSiblingIndex(this.f19212m.size() - 1);
        return this;
    }

    @Override // j6.p
    public b attr(String str, String str2) {
        attr(str, str2);
        return this;
    }

    @Override // j6.p
    public c attributes() {
        if (!hasAttributes()) {
            this.f19213n = new c();
        }
        return this.f19213n;
    }

    @Override // j6.p
    public void b(Appendable appendable, int i2, a aVar) {
        boolean isEmpty = this.f19212m.isEmpty();
        f fVar = this.f19210f;
        if (isEmpty && fVar.isSelfClosing()) {
            return;
        }
        if (aVar.prettyPrint() && !this.f19212m.isEmpty() && (fVar.formatAsBlock() || (aVar.outline() && (this.f19212m.size() > 1 || (this.f19212m.size() == 1 && !(this.f19212m.get(0) instanceof r)))))) {
            indent(appendable, i2, aVar);
        }
        appendable.append("</").append(tagName()).append('>');
    }

    @Override // j6.p
    public String baseUri() {
        return this.f19214p;
    }

    @Override // j6.p
    public b before(p pVar) {
        return (b) before(pVar);
    }

    public final List c() {
        List list;
        WeakReference weakReference = this.f19211j;
        if (weakReference != null && (list = (List) weakReference.get()) != null) {
            return list;
        }
        int size = this.f19212m.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            p pVar = (p) this.f19212m.get(i2);
            if (pVar instanceof b) {
                arrayList.add((b) pVar);
            }
        }
        this.f19211j = new WeakReference(arrayList);
        return arrayList;
    }

    public b child(int i2) {
        return (b) c().get(i2);
    }

    @Override // j6.p
    public int childNodeSize() {
        return this.f19212m.size();
    }

    public Elements children() {
        return new Elements((List<b>) c());
    }

    public String data() {
        StringBuilder sb = new StringBuilder();
        for (p pVar : this.f19212m) {
            if (pVar instanceof g) {
                sb.append(((g) pVar).getWholeData());
            } else if (pVar instanceof j6.f) {
                sb.append(((j6.f) pVar).getData());
            } else if (pVar instanceof b) {
                sb.append(((b) pVar).data());
            } else if (pVar instanceof e) {
                sb.append(((e) pVar).getWholeText());
            }
        }
        return sb.toString();
    }

    @Override // j6.p
    public void doSetBaseUri(String str) {
        this.f19214p = str;
    }

    public int elementSiblingIndex() {
        if (parent() == null) {
            return 0;
        }
        return d(this, parent().c());
    }

    @Override // j6.p
    public List<p> ensureChildNodes() {
        if (this.f19212m == f19209q) {
            this.f19212m = new Element$NodeList(this, 4);
        }
        return this.f19212m;
    }

    public Elements getAllElements() {
        return AbstractC1233c.collect(new C1237g(), this);
    }

    public b getElementById(String str) {
        k.notEmpty(str);
        Elements collect = AbstractC1233c.collect(new C1251v(str), this);
        if (collect.size() > 0) {
            return collect.get(0);
        }
        return null;
    }

    public Elements getElementsByClass(String str) {
        k.notEmpty(str);
        return AbstractC1233c.collect(new C1247q(str), this);
    }

    public Elements getElementsByTag(String str) {
        k.notEmpty(str);
        return AbstractC1233c.collect(new P(i6.b.normalize(str)), this);
    }

    @Override // j6.p
    public boolean hasAttributes() {
        return this.f19213n != null;
    }

    public boolean hasClass(String str) {
        String str2;
        String ignoreCase = attributes().getIgnoreCase("class");
        int length = ignoreCase.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(ignoreCase);
            }
            boolean z6 = false;
            int i2 = 0;
            int i7 = 0;
            while (i7 < length) {
                if (!Character.isWhitespace(ignoreCase.charAt(i7))) {
                    str2 = str;
                    if (!z6) {
                        i2 = i7;
                        z6 = true;
                    }
                } else if (z6) {
                    if (i7 - i2 == length2) {
                        str2 = str;
                        if (ignoreCase.regionMatches(true, i2, str2, 0, length2)) {
                            return true;
                        }
                    } else {
                        str2 = str;
                    }
                    z6 = false;
                } else {
                    str2 = str;
                }
                i7++;
                str = str2;
            }
            String str3 = str;
            if (z6 && length - i2 == length2) {
                return ignoreCase.regionMatches(true, i2, str3, 0, length2);
            }
        }
        return false;
    }

    public String html() {
        StringBuilder stringBuilder = j.stringBuilder();
        Iterator it = this.f19212m.iterator();
        while (it.hasNext()) {
            ((p) it.next()).outerHtml(stringBuilder);
        }
        h ownerDocument = ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new h("");
        }
        boolean prettyPrint = ownerDocument.outputSettings().prettyPrint();
        String sb = stringBuilder.toString();
        return prettyPrint ? sb.trim() : sb;
    }

    public String id() {
        return attributes().getIgnoreCase("id");
    }

    public boolean isBlock() {
        return this.f19210f.isBlock();
    }

    public b nextElementSibling() {
        if (this.f17024b == null) {
            return null;
        }
        List c7 = parent().c();
        int d7 = d(this, c7);
        k.notNull(Integer.valueOf(d7));
        int i2 = d7 + 1;
        if (c7.size() > i2) {
            return (b) c7.get(i2);
        }
        return null;
    }

    @Override // j6.p
    public String nodeName() {
        return this.f19210f.getName();
    }

    public String ownText() {
        StringBuilder sb = new StringBuilder();
        for (p pVar : this.f19212m) {
            if (pVar instanceof r) {
                r rVar = (r) pVar;
                String wholeText = rVar.getWholeText();
                if (e(rVar.f17024b) || (rVar instanceof e)) {
                    sb.append(wholeText);
                } else {
                    j.appendNormalisedWhitespace(sb, wholeText, r.e(sb));
                }
            } else if ((pVar instanceof b) && ((b) pVar).f19210f.getName().equals(CmcdConfiguration.KEY_BITRATE) && !r.e(sb)) {
                sb.append(StringUtils.SPACE);
            }
        }
        return sb.toString().trim();
    }

    @Override // j6.p
    public final b parent() {
        return (b) this.f17024b;
    }

    public b previousElementSibling() {
        if (this.f17024b == null) {
            return null;
        }
        List c7 = parent().c();
        int d7 = d(this, c7);
        k.notNull(Integer.valueOf(d7));
        if (d7 > 0) {
            return (b) c7.get(d7 - 1);
        }
        return null;
    }

    public Elements select(String str) {
        return X.select(str, this);
    }

    public b selectFirst(String str) {
        return X.selectFirst(str, this);
    }

    public Elements siblingElements() {
        if (this.f17024b == null) {
            return new Elements(0);
        }
        List<b> c7 = parent().c();
        Elements elements = new Elements(c7.size() - 1);
        for (b bVar : c7) {
            if (bVar != this) {
                elements.add(bVar);
            }
        }
        return elements;
    }

    public f tag() {
        return this.f19210f;
    }

    public String tagName() {
        return this.f19210f.getName();
    }

    public String text() {
        StringBuilder sb = new StringBuilder();
        U.traverse(new j6.j(sb), this);
        return sb.toString().trim();
    }

    public List<r> textNodes() {
        ArrayList arrayList = new ArrayList();
        for (p pVar : this.f19212m) {
            if (pVar instanceof r) {
                arrayList.add((r) pVar);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // j6.p
    public String toString() {
        return outerHtml();
    }

    @Override // j6.p
    public b doClone(p pVar) {
        b bVar = (b) super.doClone(pVar);
        c cVar = this.f19213n;
        bVar.f19213n = cVar != null ? cVar.m101clone() : null;
        bVar.f19214p = this.f19214p;
        Element$NodeList element$NodeList = new Element$NodeList(bVar, this.f19212m.size());
        bVar.f19212m = element$NodeList;
        element$NodeList.addAll(this.f19212m);
        return bVar;
    }

    @Override // j6.p
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public b mo102clone() {
        return (b) super.mo102clone();
    }

    public b(f fVar, String str) {
        this(fVar, str, null);
    }
}
