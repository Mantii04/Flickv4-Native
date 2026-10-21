package l6;

/* loaded from: classes2.dex */
public abstract class U {
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
    
        if (r5 == r3) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
    
        if (r5 != r9) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0052, code lost:
    
        if (r1 != r11) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0055, code lost:
    
        r3 = r1.nextSibling();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
    
        if (r5 != r8) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005b, code lost:
    
        r1.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005e, code lost:
    
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0054, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004b, code lost:
    
        r5 = r4.tail(r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x004f, code lost:
    
        if (r5 != r6) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0051, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.jsoup.select.NodeFilter$FilterResult filter(l6.T r10, j6.p r11) {
        /*
            r0 = 0
            r1 = r11
            r2 = r0
        L3:
            org.jsoup.select.NodeFilter$FilterResult r3 = org.jsoup.select.NodeFilter$FilterResult.f19367b
            if (r1 == 0) goto L60
            r4 = r10
            l6.b r4 = (l6.C1232b) r4
            org.jsoup.select.NodeFilter$FilterResult r5 = r4.head(r1, r2)
            org.jsoup.select.NodeFilter$FilterResult r6 = org.jsoup.select.NodeFilter$FilterResult.f19370j
            if (r5 != r6) goto L13
            return r5
        L13:
            if (r5 != r3) goto L22
            int r7 = r1.childNodeSize()
            if (r7 <= 0) goto L22
            j6.p r1 = r1.childNode(r0)
            int r2 = r2 + 1
            goto L3
        L22:
            j6.p r7 = r1.nextSibling()
            org.jsoup.select.NodeFilter$FilterResult r8 = org.jsoup.select.NodeFilter$FilterResult.f19369f
            org.jsoup.select.NodeFilter$FilterResult r9 = org.jsoup.select.NodeFilter$FilterResult.f19368e
            if (r7 != 0) goto L47
            if (r2 <= 0) goto L47
            if (r5 == r3) goto L32
            if (r5 != r9) goto L39
        L32:
            org.jsoup.select.NodeFilter$FilterResult r5 = r4.tail(r1, r2)
            if (r5 != r6) goto L39
            return r5
        L39:
            j6.p r7 = r1.parentNode()
            int r2 = r2 + (-1)
            if (r5 != r8) goto L44
            r1.remove()
        L44:
            r5 = r3
            r1 = r7
            goto L22
        L47:
            if (r5 == r3) goto L4b
            if (r5 != r9) goto L52
        L4b:
            org.jsoup.select.NodeFilter$FilterResult r5 = r4.tail(r1, r2)
            if (r5 != r6) goto L52
            return r5
        L52:
            if (r1 != r11) goto L55
            return r5
        L55:
            j6.p r3 = r1.nextSibling()
            if (r5 != r8) goto L5e
            r1.remove()
        L5e:
            r1 = r3
            goto L3
        L60:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: l6.U.filter(l6.T, j6.p):org.jsoup.select.NodeFilter$FilterResult");
    }

    public static void traverse(V v6, j6.p pVar) {
        j6.p pVar2 = pVar;
        int i2 = 0;
        while (pVar2 != null) {
            v6.head(pVar2, i2);
            if (pVar2.childNodeSize() > 0) {
                pVar2 = pVar2.childNode(0);
                i2++;
            } else {
                while (pVar2.nextSibling() == null && i2 > 0) {
                    v6.tail(pVar2, i2);
                    pVar2 = pVar2.parentNode();
                    i2--;
                }
                v6.tail(pVar2, i2);
                if (pVar2 == pVar) {
                    return;
                } else {
                    pVar2 = pVar2.nextSibling();
                }
            }
        }
    }
}
