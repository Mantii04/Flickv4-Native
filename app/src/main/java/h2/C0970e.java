package h2;

import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.VolleyLog;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

/* renamed from: h2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0970e {

    /* renamed from: a, reason: collision with root package name */
    public long f16494a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16495b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16496c;

    /* renamed from: d, reason: collision with root package name */
    public final long f16497d;

    /* renamed from: e, reason: collision with root package name */
    public final long f16498e;

    /* renamed from: f, reason: collision with root package name */
    public final long f16499f;

    /* renamed from: g, reason: collision with root package name */
    public final long f16500g;

    /* renamed from: h, reason: collision with root package name */
    public final List f16501h;

    public C0970e(String str, String str2, long j7, long j8, long j9, long j10, List list) {
        this.f16495b = str;
        this.f16496c = "".equals(str2) ? null : str2;
        this.f16497d = j7;
        this.f16498e = j8;
        this.f16499f = j9;
        this.f16500g = j10;
        this.f16501h = list;
    }

    public static C0970e a(C0971f c0971f) {
        if (C0973h.e(c0971f) != 538247942) {
            throw new IOException();
        }
        String g7 = C0973h.g(c0971f);
        String g8 = C0973h.g(c0971f);
        long f3 = C0973h.f(c0971f);
        long f7 = C0973h.f(c0971f);
        long f8 = C0973h.f(c0971f);
        long f9 = C0973h.f(c0971f);
        int e3 = C0973h.e(c0971f);
        if (e3 < 0) {
            throw new IOException(A.i.f(e3, "readHeaderList size="));
        }
        List arrayList = e3 == 0 ? Collections.EMPTY_LIST : new ArrayList();
        for (int i2 = 0; i2 < e3; i2++) {
            arrayList.add(new Header(C0973h.g(c0971f).intern(), C0973h.g(c0971f).intern()));
        }
        return new C0970e(g7, g8, f3, f7, f8, f9, arrayList);
    }

    public final Cache.Entry b(byte[] bArr) {
        Cache.Entry entry = new Cache.Entry();
        entry.data = bArr;
        entry.etag = this.f16496c;
        entry.serverDate = this.f16497d;
        entry.lastModified = this.f16498e;
        entry.ttl = this.f16499f;
        entry.softTtl = this.f16500g;
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        List<Header> list = this.f16501h;
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        entry.responseHeaders = treeMap;
        entry.allResponseHeaders = Collections.unmodifiableList(list);
        return entry;
    }

    public final boolean c(BufferedOutputStream bufferedOutputStream) {
        try {
            C0973h.i(bufferedOutputStream, 538247942);
            C0973h.k(bufferedOutputStream, this.f16495b);
            String str = this.f16496c;
            if (str == null) {
                str = "";
            }
            C0973h.k(bufferedOutputStream, str);
            C0973h.j(bufferedOutputStream, this.f16497d);
            C0973h.j(bufferedOutputStream, this.f16498e);
            C0973h.j(bufferedOutputStream, this.f16499f);
            C0973h.j(bufferedOutputStream, this.f16500g);
            List<Header> list = this.f16501h;
            if (list != null) {
                C0973h.i(bufferedOutputStream, list.size());
                for (Header header : list) {
                    C0973h.k(bufferedOutputStream, header.getName());
                    C0973h.k(bufferedOutputStream, header.getValue());
                }
            } else {
                C0973h.i(bufferedOutputStream, 0);
            }
            bufferedOutputStream.flush();
            return true;
        } catch (IOException e3) {
            VolleyLog.d("%s", e3.toString());
            return false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<com.android.volley.Header>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0970e(java.lang.String r14, com.android.volley.Cache.Entry r15) {
        /*
            r13 = this;
            java.lang.String r2 = r15.etag
            long r3 = r15.serverDate
            long r5 = r15.lastModified
            long r7 = r15.ttl
            long r9 = r15.softTtl
            java.util.List<com.android.volley.Header> r0 = r15.allResponseHeaders
            if (r0 == 0) goto L12
        Le:
            r1 = r14
            r11 = r0
            r0 = r13
            goto L46
        L12:
            java.util.Map<java.lang.String, java.lang.String> r15 = r15.responseHeaders
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r15.size()
            r0.<init>(r1)
            java.util.Set r15 = r15.entrySet()
            java.util.Iterator r15 = r15.iterator()
        L25:
            boolean r1 = r15.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r15.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            com.android.volley.Header r11 = new com.android.volley.Header
            java.lang.Object r12 = r1.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r11.<init>(r12, r1)
            r0.add(r11)
            goto L25
        L46:
            r0.<init>(r1, r2, r3, r5, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h2.C0970e.<init>(java.lang.String, com.android.volley.Cache$Entry):void");
    }
}
