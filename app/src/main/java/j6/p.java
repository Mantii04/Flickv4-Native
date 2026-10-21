package j6;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import l6.U;
import l6.V;

/* loaded from: classes2.dex */
public abstract class p implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public p f17024b;

    /* renamed from: e, reason: collision with root package name */
    public int f17025e;

    public abstract void a(Appendable appendable, int i2, org.jsoup.nodes.a aVar);

    public String absUrl(String str) {
        h6.k.notEmpty(str);
        return !hasAttr(str) ? "" : h6.j.resolve(baseUri(), attr(str));
    }

    public void addChildren(int i2, p... pVarArr) {
        h6.k.noNullElements(pVarArr);
        List<p> ensureChildNodes = ensureChildNodes();
        for (p pVar : pVarArr) {
            reparentChild(pVar);
        }
        ensureChildNodes.addAll(i2, Arrays.asList(pVarArr));
        List<p> ensureChildNodes2 = ensureChildNodes();
        while (i2 < ensureChildNodes2.size()) {
            ensureChildNodes2.get(i2).setSiblingIndex(i2);
            i2++;
        }
    }

    public String attr(String str) {
        h6.k.notNull(str);
        if (!hasAttributes()) {
            return "";
        }
        String ignoreCase = attributes().getIgnoreCase(str);
        return ignoreCase.length() > 0 ? ignoreCase : str.startsWith("abs:") ? absUrl(str.substring(4)) : "";
    }

    public abstract c attributes();

    public abstract void b(Appendable appendable, int i2, org.jsoup.nodes.a aVar);

    public abstract String baseUri();

    public p before(p pVar) {
        h6.k.notNull(pVar);
        h6.k.notNull(this.f17024b);
        this.f17024b.addChildren(this.f17025e, pVar);
        return this;
    }

    public p childNode(int i2) {
        return ensureChildNodes().get(i2);
    }

    public abstract int childNodeSize();

    public List<p> childNodes() {
        return Collections.unmodifiableList(ensureChildNodes());
    }

    public p doClone(p pVar) {
        try {
            p pVar2 = (p) super.clone();
            pVar2.f17024b = pVar;
            pVar2.f17025e = pVar == null ? 0 : this.f17025e;
            return pVar2;
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }

    public abstract void doSetBaseUri(String str);

    public abstract List<p> ensureChildNodes();

    public boolean equals(Object obj) {
        return this == obj;
    }

    public boolean hasAttr(String str) {
        h6.k.notNull(str);
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if (attributes().hasKeyIgnoreCase(substring) && !absUrl(substring).equals("")) {
                return true;
            }
        }
        return attributes().hasKeyIgnoreCase(str);
    }

    public abstract boolean hasAttributes();

    public boolean hasParent() {
        return this.f17024b != null;
    }

    public void indent(Appendable appendable, int i2, org.jsoup.nodes.a aVar) throws IOException {
        appendable.append('\n').append(h6.j.padding(aVar.indentAmount() * i2));
    }

    public p nextSibling() {
        p pVar = this.f17024b;
        if (pVar == null) {
            return null;
        }
        List<p> ensureChildNodes = pVar.ensureChildNodes();
        int i2 = this.f17025e + 1;
        if (ensureChildNodes.size() > i2) {
            return ensureChildNodes.get(i2);
        }
        return null;
    }

    public abstract String nodeName();

    public String outerHtml() {
        StringBuilder sb = new StringBuilder(128);
        outerHtml(sb);
        return sb.toString();
    }

    public h ownerDocument() {
        p root = root();
        if (root instanceof h) {
            return (h) root;
        }
        return null;
    }

    public p parent() {
        return this.f17024b;
    }

    public final p parentNode() {
        return this.f17024b;
    }

    public void remove() {
        h6.k.notNull(this.f17024b);
        this.f17024b.removeChild(this);
    }

    public void removeChild(p pVar) {
        h6.k.isTrue(pVar.f17024b == this);
        int i2 = pVar.f17025e;
        ensureChildNodes().remove(i2);
        List<p> ensureChildNodes = ensureChildNodes();
        while (i2 < ensureChildNodes.size()) {
            ensureChildNodes.get(i2).setSiblingIndex(i2);
            i2++;
        }
        pVar.f17024b = null;
    }

    public void reparentChild(p pVar) {
        pVar.setParentNode(this);
    }

    public void replaceChild(p pVar, p pVar2) {
        h6.k.isTrue(pVar.f17024b == this);
        h6.k.notNull(pVar2);
        p pVar3 = pVar2.f17024b;
        if (pVar3 != null) {
            pVar3.removeChild(pVar2);
        }
        int i2 = pVar.f17025e;
        ensureChildNodes().set(i2, pVar2);
        pVar2.f17024b = this;
        pVar2.setSiblingIndex(i2);
        pVar.f17024b = null;
    }

    public void replaceWith(p pVar) {
        h6.k.notNull(pVar);
        h6.k.notNull(this.f17024b);
        this.f17024b.replaceChild(this, pVar);
    }

    public p root() {
        p pVar = this;
        while (true) {
            p pVar2 = pVar.f17024b;
            if (pVar2 == null) {
                return pVar;
            }
            pVar = pVar2;
        }
    }

    public void setBaseUri(String str) {
        h6.k.notNull(str);
        traverse(new n(str));
    }

    public void setParentNode(p pVar) {
        h6.k.notNull(pVar);
        p pVar2 = this.f17024b;
        if (pVar2 != null) {
            pVar2.removeChild(this);
        }
        this.f17024b = pVar;
    }

    public void setSiblingIndex(int i2) {
        this.f17025e = i2;
    }

    public int siblingIndex() {
        return this.f17025e;
    }

    public List<p> siblingNodes() {
        p pVar = this.f17024b;
        if (pVar == null) {
            return Collections.EMPTY_LIST;
        }
        List<p> ensureChildNodes = pVar.ensureChildNodes();
        ArrayList arrayList = new ArrayList(ensureChildNodes.size() - 1);
        for (p pVar2 : ensureChildNodes) {
            if (pVar2 != this) {
                arrayList.add(pVar2);
            }
        }
        return arrayList;
    }

    public String toString() {
        return outerHtml();
    }

    public p traverse(V v6) {
        h6.k.notNull(v6);
        U.traverse(v6, this);
        return this;
    }

    @Override // 
    /* renamed from: clone */
    public p mo102clone() {
        p doClone = doClone(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(doClone);
        while (!linkedList.isEmpty()) {
            p pVar = (p) linkedList.remove();
            int childNodeSize = pVar.childNodeSize();
            for (int i2 = 0; i2 < childNodeSize; i2++) {
                List<p> ensureChildNodes = pVar.ensureChildNodes();
                p doClone2 = ensureChildNodes.get(i2).doClone(pVar);
                ensureChildNodes.set(i2, doClone2);
                linkedList.add(doClone2);
            }
        }
        return doClone;
    }

    public void outerHtml(Appendable appendable) {
        h ownerDocument = ownerDocument();
        if (ownerDocument == null) {
            ownerDocument = new h("");
        }
        org.jsoup.nodes.a outputSettings = ownerDocument.outputSettings();
        o oVar = new o();
        oVar.f17022a = appendable;
        oVar.f17023b = outputSettings;
        outputSettings.a();
        U.traverse(oVar, this);
    }

    public p attr(String str, String str2) {
        c attributes = attributes();
        int d7 = attributes.d(str);
        if (d7 != -1) {
            attributes.f17012f[d7] = str2;
            if (!attributes.f17011e[d7].equals(str)) {
                attributes.f17011e[d7] = str;
            }
            return this;
        }
        attributes.a(attributes.f17010b + 1);
        String[] strArr = attributes.f17011e;
        int i2 = attributes.f17010b;
        strArr[i2] = str;
        attributes.f17012f[i2] = str2;
        attributes.f17010b = i2 + 1;
        return this;
    }
}
