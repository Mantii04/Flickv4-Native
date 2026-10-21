package j6;

/* loaded from: classes2.dex */
public class r extends m {
    public r(String str) {
        this.f17020f = str;
    }

    public static boolean e(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        if (isBlank() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        indent(r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
    
        if (isBlank() == false) goto L18;
     */
    @Override // j6.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.Appendable r3, int r4, org.jsoup.nodes.a r5) {
        /*
            r2 = this;
            boolean r0 = r5.prettyPrint()
            if (r0 == 0) goto L3d
            int r0 = r2.siblingIndex()
            if (r0 != 0) goto L24
            j6.p r0 = r2.f17024b
            boolean r1 = r0 instanceof org.jsoup.nodes.b
            if (r1 == 0) goto L24
            org.jsoup.nodes.b r0 = (org.jsoup.nodes.b) r0
            k6.f r0 = r0.tag()
            boolean r0 = r0.formatAsBlock()
            if (r0 == 0) goto L24
            boolean r0 = r2.isBlank()
            if (r0 == 0) goto L3a
        L24:
            boolean r0 = r5.outline()
            if (r0 == 0) goto L3d
            java.util.List r0 = r2.siblingNodes()
            int r0 = r0.size()
            if (r0 <= 0) goto L3d
            boolean r0 = r2.isBlank()
            if (r0 != 0) goto L3d
        L3a:
            r2.indent(r3, r4, r5)
        L3d:
            boolean r4 = r5.prettyPrint()
            r0 = 0
            if (r4 == 0) goto L58
            j6.p r4 = r2.parent()
            boolean r4 = r4 instanceof org.jsoup.nodes.b
            if (r4 == 0) goto L58
            j6.p r4 = r2.parent()
            boolean r4 = org.jsoup.nodes.b.e(r4)
            if (r4 != 0) goto L58
            r4 = 1
            goto L59
        L58:
            r4 = r0
        L59:
            java.lang.String r1 = r2.c()
            j6.k.b(r3, r1, r5, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j6.r.a(java.lang.Appendable, int, org.jsoup.nodes.a):void");
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    public String getWholeText() {
        return c();
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public boolean isBlank() {
        return h6.j.isBlank(c());
    }

    @Override // j6.p
    public String nodeName() {
        return "#text";
    }

    @Override // j6.p
    public String toString() {
        return outerHtml();
    }

    @Override // j6.p
    public void b(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
    }
}
