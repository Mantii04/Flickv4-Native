package h6;

import java.net.URL;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.Connection$Method;

/* loaded from: classes2.dex */
public abstract class c implements g6.a {

    /* renamed from: a, reason: collision with root package name */
    public URL f16627a;

    /* renamed from: b, reason: collision with root package name */
    public Connection$Method f16628b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f16629c = new LinkedHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f16630d = new LinkedHashMap();

    public final List a(String str) {
        k.notNull(str);
        for (Map.Entry entry : this.f16629c.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                return (List) entry.getValue();
            }
        }
        return Collections.EMPTY_LIST;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0084, code lost:
    
        r10 = new java.lang.String(r9, "UTF-8");
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004e A[Catch: UnsupportedEncodingException -> 0x0085, TryCatch #0 {UnsupportedEncodingException -> 0x0085, blocks: (B:8:0x001b, B:10:0x0027, B:12:0x002f, B:15:0x003a, B:18:0x0046, B:21:0x004b, B:23:0x004e, B:27:0x007b, B:28:0x0055, B:30:0x005b, B:33:0x0071, B:42:0x005e, B:44:0x0064, B:45:0x0067, B:47:0x006d, B:50:0x007d), top: B:7:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007d A[EDGE_INSN: B:49:0x007d->B:50:0x007d BREAK  A[LOOP:0: B:22:0x004c->B:27:0x007b], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g6.a addHeader(java.lang.String r9, java.lang.String r10) {
        /*
            r8 = this;
            h6.k.notEmpty(r9)
            if (r10 != 0) goto L7
            java.lang.String r10 = ""
        L7:
            java.util.List r0 = r8.headers(r9)
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L1b
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.LinkedHashMap r1 = r8.f16629c
            r1.put(r9, r0)
        L1b:
            java.lang.String r9 = "ISO-8859-1"
            byte[] r9 = r10.getBytes(r9)     // Catch: java.io.UnsupportedEncodingException -> L85
            int r1 = r9.length     // Catch: java.io.UnsupportedEncodingException -> L85
            r2 = 3
            r3 = 1
            r4 = 0
            if (r1 < r2) goto L4a
            r1 = r9[r4]     // Catch: java.io.UnsupportedEncodingException -> L85
            r1 = r1 & 255(0xff, float:3.57E-43)
            r5 = 239(0xef, float:3.35E-43)
            if (r1 != r5) goto L4a
            r1 = r9[r3]     // Catch: java.io.UnsupportedEncodingException -> L85
            r1 = r1 & 255(0xff, float:3.57E-43)
            r5 = 187(0xbb, float:2.62E-43)
            if (r1 != r5) goto L39
            r1 = r3
            goto L3a
        L39:
            r1 = r4
        L3a:
            r5 = 2
            r5 = r9[r5]     // Catch: java.io.UnsupportedEncodingException -> L85
            r5 = r5 & 255(0xff, float:3.57E-43)
            r6 = 191(0xbf, float:2.68E-43)
            if (r5 != r6) goto L45
            r5 = r3
            goto L46
        L45:
            r5 = r4
        L46:
            r1 = r1 & r5
            if (r1 == 0) goto L4a
            goto L4b
        L4a:
            r2 = r4
        L4b:
            int r1 = r9.length     // Catch: java.io.UnsupportedEncodingException -> L85
        L4c:
            if (r2 >= r1) goto L7d
            r4 = r9[r2]     // Catch: java.io.UnsupportedEncodingException -> L85
            r5 = r4 & 128(0x80, float:1.794E-43)
            if (r5 != 0) goto L55
            goto L7b
        L55:
            r5 = r4 & 224(0xe0, float:3.14E-43)
            r6 = 192(0xc0, float:2.69E-43)
            if (r5 != r6) goto L5e
            int r4 = r2 + 1
            goto L6f
        L5e:
            r5 = r4 & 240(0xf0, float:3.36E-43)
            r7 = 224(0xe0, float:3.14E-43)
            if (r5 != r7) goto L67
            int r4 = r2 + 2
            goto L6f
        L67:
            r4 = r4 & 248(0xf8, float:3.48E-43)
            r5 = 240(0xf0, float:3.36E-43)
            if (r4 != r5) goto L85
            int r4 = r2 + 3
        L6f:
            if (r2 >= r4) goto L7b
            int r2 = r2 + 1
            r5 = r9[r2]     // Catch: java.io.UnsupportedEncodingException -> L85
            r5 = r5 & r6
            r7 = 128(0x80, float:1.794E-43)
            if (r5 == r7) goto L6f
            goto L85
        L7b:
            int r2 = r2 + r3
            goto L4c
        L7d:
            java.lang.String r1 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L85
            java.lang.String r2 = "UTF-8"
            r1.<init>(r9, r2)     // Catch: java.io.UnsupportedEncodingException -> L85
            r10 = r1
        L85:
            r0.add(r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.c.addHeader(java.lang.String, java.lang.String):g6.a");
    }

    public g6.a cookie(String str, String str2) {
        k.notEmpty(str, "Cookie name must not be empty");
        k.notNull(str2, "Cookie value must not be null");
        this.f16630d.put(str, str2);
        return this;
    }

    public Map<String, String> cookies() {
        return this.f16630d;
    }

    public boolean hasCookie(String str) {
        k.notEmpty(str, "Cookie name must not be empty");
        return this.f16630d.containsKey(str);
    }

    public boolean hasHeader(String str) {
        k.notEmpty(str, "Header name must not be empty");
        return a(str).size() != 0;
    }

    public boolean hasHeaderWithValue(String str, String str2) {
        k.notEmpty(str);
        k.notEmpty(str2);
        Iterator<String> it = headers(str).iterator();
        while (it.hasNext()) {
            if (str2.equalsIgnoreCase(it.next())) {
                return true;
            }
        }
        return false;
    }

    public String header(String str) {
        k.notNull(str, "Header name must not be null");
        List a7 = a(str);
        if (a7.size() > 0) {
            return j.join(a7, ", ");
        }
        return null;
    }

    public List<String> headers(String str) {
        k.notEmpty(str);
        return a(str);
    }

    public Connection$Method method() {
        return this.f16628b;
    }

    public Map<String, List<String>> multiHeaders() {
        return this.f16629c;
    }

    public g6.a removeHeader(String str) {
        Map.Entry entry;
        k.notEmpty(str, "Header name must not be empty");
        String lowerCase = i6.b.lowerCase(str);
        LinkedHashMap linkedHashMap = this.f16629c;
        Iterator it = linkedHashMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                entry = null;
                break;
            }
            entry = (Map.Entry) it.next();
            if (i6.b.lowerCase((String) entry.getKey()).equals(lowerCase)) {
                break;
            }
        }
        if (entry != null) {
            linkedHashMap.remove(entry.getKey());
        }
        return this;
    }

    public URL url() {
        return this.f16627a;
    }

    @Override // g6.a
    public g6.a method(Connection$Method connection$Method) {
        k.notNull(connection$Method, "Method must not be null");
        this.f16628b = connection$Method;
        return this;
    }

    @Override // g6.a
    public g6.a url(URL url) {
        k.notNull(url, "URL must not be null");
        this.f16627a = url;
        return this;
    }

    public g6.a header(String str, String str2) {
        k.notEmpty(str, "Header name must not be empty");
        removeHeader(str);
        addHeader(str, str2);
        return this;
    }
}
