package cz.msebera.android.httpclient.impl;

import cz.msebera.android.httpclient.ConnectionReuseStrategy;
import cz.msebera.android.httpclient.HeaderIterator;
import cz.msebera.android.httpclient.HttpRequest;
import cz.msebera.android.httpclient.HttpResponse;
import cz.msebera.android.httpclient.TokenIterator;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.message.BasicTokenIterator;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class DefaultConnectionReuseStrategy implements ConnectionReuseStrategy {
    public static final DefaultConnectionReuseStrategy INSTANCE = new DefaultConnectionReuseStrategy();

    private boolean canResponseHaveBody(HttpRequest httpRequest, HttpResponse httpResponse) {
        int statusCode;
        return ((httpRequest != null && httpRequest.getRequestLine().getMethod().equalsIgnoreCase("HEAD")) || (statusCode = httpResponse.getStatusLine().getStatusCode()) < 200 || statusCode == 204 || statusCode == 304 || statusCode == 205) ? false : true;
    }

    public TokenIterator createTokenIterator(HeaderIterator headerIterator) {
        return new BasicTokenIterator(headerIterator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x008e, code lost:
    
        if (java.lang.Integer.parseInt(r9[0].getValue()) < 0) goto L32;
     */
    @Override // cz.msebera.android.httpclient.ConnectionReuseStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean keepAlive(cz.msebera.android.httpclient.HttpResponse r8, cz.msebera.android.httpclient.protocol.HttpContext r9) {
        /*
            r7 = this;
            java.lang.String r0 = "HTTP response"
            cz.msebera.android.httpclient.util.Args.notNull(r8, r0)
            java.lang.String r0 = "HTTP context"
            cz.msebera.android.httpclient.util.Args.notNull(r9, r0)
            cz.msebera.android.httpclient.StatusLine r0 = r8.getStatusLine()
            int r0 = r0.getStatusCode()
            r1 = 204(0xcc, float:2.86E-43)
            java.lang.String r2 = "Transfer-Encoding"
            java.lang.String r3 = "Content-Length"
            r4 = 0
            if (r0 != r1) goto L33
            cz.msebera.android.httpclient.Header r0 = r8.getFirstHeader(r3)
            if (r0 == 0) goto L2c
            java.lang.String r0 = r0.getValue()     // Catch: java.lang.NumberFormatException -> L2c
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L2c
            if (r0 <= 0) goto L2c
            return r4
        L2c:
            cz.msebera.android.httpclient.Header r0 = r8.getFirstHeader(r2)
            if (r0 == 0) goto L33
            return r4
        L33:
            java.lang.String r0 = "http.request"
            java.lang.Object r9 = r9.getAttribute(r0)
            cz.msebera.android.httpclient.HttpRequest r9 = (cz.msebera.android.httpclient.HttpRequest) r9
            java.lang.String r0 = "Close"
            java.lang.String r1 = "Connection"
            if (r9 == 0) goto L5b
            cz.msebera.android.httpclient.message.BasicTokenIterator r5 = new cz.msebera.android.httpclient.message.BasicTokenIterator     // Catch: cz.msebera.android.httpclient.ParseException -> L5a
            cz.msebera.android.httpclient.HeaderIterator r6 = r9.headerIterator(r1)     // Catch: cz.msebera.android.httpclient.ParseException -> L5a
            r5.<init>(r6)     // Catch: cz.msebera.android.httpclient.ParseException -> L5a
        L4a:
            boolean r6 = r5.hasNext()     // Catch: cz.msebera.android.httpclient.ParseException -> L5a
            if (r6 == 0) goto L5b
            java.lang.String r6 = r5.nextToken()     // Catch: cz.msebera.android.httpclient.ParseException -> L5a
            boolean r6 = r0.equalsIgnoreCase(r6)     // Catch: cz.msebera.android.httpclient.ParseException -> L5a
            if (r6 == 0) goto L4a
        L5a:
            return r4
        L5b:
            cz.msebera.android.httpclient.StatusLine r5 = r8.getStatusLine()
            cz.msebera.android.httpclient.ProtocolVersion r5 = r5.getProtocolVersion()
            cz.msebera.android.httpclient.Header r2 = r8.getFirstHeader(r2)
            r6 = 1
            if (r2 == 0) goto L77
            java.lang.String r9 = "chunked"
            java.lang.String r2 = r2.getValue()
            boolean r9 = r9.equalsIgnoreCase(r2)
            if (r9 != 0) goto L91
            return r4
        L77:
            boolean r9 = r7.canResponseHaveBody(r9, r8)
            if (r9 == 0) goto L91
            cz.msebera.android.httpclient.Header[] r9 = r8.getHeaders(r3)
            int r2 = r9.length
            if (r2 != r6) goto L90
            r9 = r9[r4]
            java.lang.String r9 = r9.getValue()     // Catch: java.lang.NumberFormatException -> L90
            int r9 = java.lang.Integer.parseInt(r9)     // Catch: java.lang.NumberFormatException -> L90
            if (r9 >= 0) goto L91
        L90:
            return r4
        L91:
            cz.msebera.android.httpclient.HeaderIterator r9 = r8.headerIterator(r1)
            boolean r1 = r9.hasNext()
            if (r1 != 0) goto La1
            java.lang.String r9 = "Proxy-Connection"
            cz.msebera.android.httpclient.HeaderIterator r9 = r8.headerIterator(r9)
        La1:
            boolean r8 = r9.hasNext()
            if (r8 == 0) goto Lcc
            cz.msebera.android.httpclient.message.BasicTokenIterator r8 = new cz.msebera.android.httpclient.message.BasicTokenIterator     // Catch: cz.msebera.android.httpclient.ParseException -> Lcb
            r8.<init>(r9)     // Catch: cz.msebera.android.httpclient.ParseException -> Lcb
            r9 = r4
        Lad:
            boolean r1 = r8.hasNext()     // Catch: cz.msebera.android.httpclient.ParseException -> Lcb
            if (r1 == 0) goto Lc8
            java.lang.String r1 = r8.nextToken()     // Catch: cz.msebera.android.httpclient.ParseException -> Lcb
            boolean r2 = r0.equalsIgnoreCase(r1)     // Catch: cz.msebera.android.httpclient.ParseException -> Lcb
            if (r2 == 0) goto Lbe
            return r4
        Lbe:
            java.lang.String r2 = "Keep-Alive"
            boolean r1 = r2.equalsIgnoreCase(r1)     // Catch: cz.msebera.android.httpclient.ParseException -> Lcb
            if (r1 == 0) goto Lad
            r9 = r6
            goto Lad
        Lc8:
            if (r9 == 0) goto Lcc
            return r6
        Lcb:
            return r4
        Lcc:
            cz.msebera.android.httpclient.HttpVersion r8 = cz.msebera.android.httpclient.HttpVersion.HTTP_1_0
            boolean r8 = r5.lessEquals(r8)
            r8 = r8 ^ r6
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.impl.DefaultConnectionReuseStrategy.keepAlive(cz.msebera.android.httpclient.HttpResponse, cz.msebera.android.httpclient.protocol.HttpContext):boolean");
    }
}
