package k6;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final String f17386a;

    /* renamed from: b, reason: collision with root package name */
    public int f17387b = 0;

    public p(String str) {
        h6.k.notNull(str);
        this.f17386a = str;
    }

    public static String unescape(String str) {
        StringBuilder stringBuilder = h6.j.stringBuilder();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i2 = 0;
        char c7 = 0;
        while (i2 < length) {
            char c8 = charArray[i2];
            if (c8 != '\\') {
                stringBuilder.append(c8);
            } else if (c7 != 0 && c7 == '\\') {
                stringBuilder.append(c8);
            }
            i2++;
            c7 = c8;
        }
        return stringBuilder.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006c A[EDGE_INSN: B:14:0x006c->B:15:0x006c BREAK  A[LOOP:0: B:2:0x0007->B:22:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[LOOP:0: B:2:0x0007->B:22:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String chompBalanced(char r11, char r12) {
        /*
            r10 = this;
            r0 = -1
            r1 = 0
            r5 = r0
            r6 = r5
            r2 = r1
            r3 = r2
            r4 = r3
        L7:
            boolean r7 = r10.isEmpty()
            if (r7 == 0) goto Le
            goto L6c
        Le:
            char r7 = r10.consume()
            java.lang.Character r8 = java.lang.Character.valueOf(r7)
            if (r1 == 0) goto L1c
            r9 = 92
            if (r1 == r9) goto L63
        L1c:
            r9 = 39
            java.lang.Character r9 = java.lang.Character.valueOf(r9)
            boolean r9 = r8.equals(r9)
            if (r9 == 0) goto L2f
            if (r7 == r11) goto L2f
            if (r2 != 0) goto L2f
            r3 = r3 ^ 1
            goto L41
        L2f:
            r9 = 34
            java.lang.Character r9 = java.lang.Character.valueOf(r9)
            boolean r9 = r8.equals(r9)
            if (r9 == 0) goto L41
            if (r7 == r11) goto L41
            if (r3 != 0) goto L41
            r2 = r2 ^ 1
        L41:
            if (r3 != 0) goto L6a
            if (r2 == 0) goto L46
            goto L6a
        L46:
            java.lang.Character r9 = java.lang.Character.valueOf(r11)
            boolean r9 = r8.equals(r9)
            if (r9 == 0) goto L57
            int r4 = r4 + 1
            if (r5 != r0) goto L63
            int r5 = r10.f17387b
            goto L63
        L57:
            java.lang.Character r9 = java.lang.Character.valueOf(r12)
            boolean r8 = r8.equals(r9)
            if (r8 == 0) goto L63
            int r4 = r4 + (-1)
        L63:
            if (r4 <= 0) goto L69
            if (r1 == 0) goto L69
            int r6 = r10.f17387b
        L69:
            r1 = r7
        L6a:
            if (r4 > 0) goto L7
        L6c:
            if (r6 < 0) goto L75
            java.lang.String r11 = r10.f17386a
            java.lang.String r11 = r11.substring(r5, r6)
            goto L77
        L75:
            java.lang.String r11 = ""
        L77:
            if (r4 <= 0) goto L8f
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r0 = "Did not find balanced marker at '"
            r12.<init>(r0)
            r12.append(r11)
            java.lang.String r0 = "'"
            r12.append(r0)
            java.lang.String r12 = r12.toString()
            h6.k.fail(r12)
        L8f:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: k6.p.chompBalanced(char, char):java.lang.String");
    }

    public String chompTo(String str) {
        String consumeTo = consumeTo(str);
        matchChomp(str);
        return consumeTo;
    }

    public char consume() {
        int i2 = this.f17387b;
        this.f17387b = i2 + 1;
        return this.f17386a.charAt(i2);
    }

    public String consumeCssIdentifier() {
        int i2 = this.f17387b;
        while (!isEmpty() && (matchesWord() || matchesAny('-', '_'))) {
            this.f17387b++;
        }
        return this.f17386a.substring(i2, this.f17387b);
    }

    public String consumeElementSelector() {
        int i2 = this.f17387b;
        while (!isEmpty() && (matchesWord() || matchesAny("*|", "|", "_", "-"))) {
            this.f17387b++;
        }
        return this.f17386a.substring(i2, this.f17387b);
    }

    public String consumeTo(String str) {
        int i2 = this.f17387b;
        String str2 = this.f17386a;
        int indexOf = str2.indexOf(str, i2);
        if (indexOf == -1) {
            return remainder();
        }
        String substring = str2.substring(this.f17387b, indexOf);
        this.f17387b = substring.length() + this.f17387b;
        return substring;
    }

    public String consumeToAny(String... strArr) {
        int i2 = this.f17387b;
        while (!isEmpty() && !matchesAny(strArr)) {
            this.f17387b++;
        }
        return this.f17386a.substring(i2, this.f17387b);
    }

    public boolean consumeWhitespace() {
        boolean z6 = false;
        while (matchesWhitespace()) {
            this.f17387b++;
            z6 = true;
        }
        return z6;
    }

    public boolean isEmpty() {
        return this.f17386a.length() - this.f17387b == 0;
    }

    public boolean matchChomp(String str) {
        if (!matches(str)) {
            return false;
        }
        this.f17387b = str.length() + this.f17387b;
        return true;
    }

    public boolean matches(String str) {
        return this.f17386a.regionMatches(true, this.f17387b, str, 0, str.length());
    }

    public boolean matchesAny(String... strArr) {
        for (String str : strArr) {
            if (matches(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesWhitespace() {
        return !isEmpty() && h6.j.isWhitespace(this.f17386a.charAt(this.f17387b));
    }

    public boolean matchesWord() {
        return !isEmpty() && Character.isLetterOrDigit(this.f17386a.charAt(this.f17387b));
    }

    public String remainder() {
        int i2 = this.f17387b;
        String str = this.f17386a;
        String substring = str.substring(i2, str.length());
        this.f17387b = str.length();
        return substring;
    }

    public String toString() {
        return this.f17386a.substring(this.f17387b);
    }

    public void consume(String str) {
        if (!matches(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        int length2 = this.f17386a.length();
        int i2 = this.f17387b;
        if (length > length2 - i2) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.f17387b = i2 + length;
    }

    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        for (char c7 : cArr) {
            if (this.f17386a.charAt(this.f17387b) == c7) {
                return true;
            }
        }
        return false;
    }
}
