package h6;

import cz.msebera.android.httpclient.cookie.SM;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
import k6.p;
import org.jsoup.Connection$Method;

/* loaded from: classes2.dex */
public final class g extends c implements g6.c {

    /* renamed from: m, reason: collision with root package name */
    public static SSLSocketFactory f16640m;

    /* renamed from: n, reason: collision with root package name */
    public static final Pattern f16641n = Pattern.compile("(application|text)/\\w*\\+?xml.*");

    /* renamed from: e, reason: collision with root package name */
    public ByteBuffer f16642e;

    /* renamed from: f, reason: collision with root package name */
    public InputStream f16643f;

    /* renamed from: g, reason: collision with root package name */
    public String f16644g;

    /* renamed from: h, reason: collision with root package name */
    public String f16645h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f16646i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16647j = false;

    /* renamed from: k, reason: collision with root package name */
    public int f16648k;

    /* renamed from: l, reason: collision with root package name */
    public d f16649l;

    public g(g gVar) {
        this.f16648k = 0;
        if (gVar != null) {
            int i2 = gVar.f16648k + 1;
            this.f16648k = i2;
            if (i2 < 20) {
                return;
            }
            throw new IOException("Too many redirects occurred trying to load URL " + gVar.url());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x0336, code lost:
    
        if (h6.g.f16641n.matcher(r13).matches() == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x033a, code lost:
    
        if (r12.f16637k != false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x033c, code lost:
    
        r12.parser(k6.e.xmlParser());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static h6.g b(h6.d r12, h6.g r13) {
        /*
            Method dump skipped, instructions count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.g.b(h6.d, h6.g):h6.g");
    }

    public final void c(HttpURLConnection httpURLConnection, g gVar) {
        this.f16628b = Connection$Method.valueOf(httpURLConnection.getRequestMethod());
        this.f16627a = httpURLConnection.getURL();
        httpURLConnection.getResponseCode();
        httpURLConnection.getResponseMessage();
        this.f16645h = httpURLConnection.getContentType();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i2 = 0;
        while (true) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i2);
            String headerField = httpURLConnection.getHeaderField(i2);
            if (headerFieldKey == null && headerField == null) {
                break;
            }
            i2++;
            if (headerFieldKey != null && headerField != null) {
                if (linkedHashMap.containsKey(headerFieldKey)) {
                    ((List) linkedHashMap.get(headerFieldKey)).add(headerField);
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(headerField);
                    linkedHashMap.put(headerFieldKey, arrayList);
                }
            }
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            if (str != null) {
                List<String> list = (List) entry.getValue();
                if (str.equalsIgnoreCase(SM.SET_COOKIE)) {
                    for (String str2 : list) {
                        if (str2 != null) {
                            p pVar = new p(str2);
                            String trim = pVar.chompTo("=").trim();
                            String trim2 = pVar.consumeTo(";").trim();
                            if (trim.length() > 0) {
                                cookie(trim, trim2);
                            }
                        }
                    }
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    addHeader(str, (String) it.next());
                }
            }
        }
        if (gVar != null) {
            for (Map.Entry entry2 : gVar.cookies().entrySet()) {
                if (!hasCookie((String) entry2.getKey())) {
                    cookie((String) entry2.getKey(), (String) entry2.getValue());
                }
            }
        }
    }

    public String contentType() {
        return this.f16645h;
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ Map cookies() {
        return super.cookies();
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
        return super.hasCookie(str);
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
        return super.hasHeader(str);
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
        return super.hasHeaderWithValue(str, str2);
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ String header(String str) {
        return super.header(str);
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ List headers(String str) {
        return super.headers(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0157, code lost:
    
        if (r10 == false) goto L76;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j6.h parse() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.g.parse():j6.h");
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ URL url() {
        return super.url();
    }
}
