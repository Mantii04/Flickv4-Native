package com.loopj.android.http;

import cz.msebera.android.httpclient.Header;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes2.dex */
public abstract class SaxAsyncHttpResponseHandler<T extends DefaultHandler> extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "SaxAsyncHttpRH";
    private T handler;

    public SaxAsyncHttpResponseHandler(T t6) {
        this.handler = null;
        if (t6 == null) {
            throw new Error("null instance of <T extends DefaultHandler> passed to constructor");
        }
        this.handler = t6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
    
        if (r4 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r4 == null) goto L35;
     */
    @Override // com.loopj.android.http.AsyncHttpResponseHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getResponseData(cz.msebera.android.httpclient.HttpEntity r7) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String r0 = "getResponseData exception"
            java.lang.String r1 = "SaxAsyncHttpRH"
            r2 = 0
            if (r7 == 0) goto L64
            java.io.InputStream r7 = r7.getContent()
            if (r7 == 0) goto L64
            javax.xml.parsers.SAXParserFactory r3 = javax.xml.parsers.SAXParserFactory.newInstance()     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            javax.xml.parsers.SAXParser r3 = r3.newSAXParser()     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            org.xml.sax.XMLReader r3 = r3.getXMLReader()     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            T extends org.xml.sax.helpers.DefaultHandler r4 = r6.handler     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            r3.setContentHandler(r4)     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            java.lang.String r5 = r6.getCharset()     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            r4.<init>(r7, r5)     // Catch: java.lang.Throwable -> L3d javax.xml.parsers.ParserConfigurationException -> L3f org.xml.sax.SAXException -> L42
            org.xml.sax.InputSource r5 = new org.xml.sax.InputSource     // Catch: java.lang.Throwable -> L36 javax.xml.parsers.ParserConfigurationException -> L39 org.xml.sax.SAXException -> L3b
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L36 javax.xml.parsers.ParserConfigurationException -> L39 org.xml.sax.SAXException -> L3b
            r3.parse(r5)     // Catch: java.lang.Throwable -> L36 javax.xml.parsers.ParserConfigurationException -> L39 org.xml.sax.SAXException -> L3b
            com.loopj.android.http.AsyncHttpClient.silentCloseInputStream(r7)
        L32:
            r4.close()     // Catch: java.io.IOException -> L64
            goto L64
        L36:
            r0 = move-exception
            r2 = r4
            goto L5b
        L39:
            r3 = move-exception
            goto L45
        L3b:
            r3 = move-exception
            goto L50
        L3d:
            r0 = move-exception
            goto L5b
        L3f:
            r3 = move-exception
            r4 = r2
            goto L45
        L42:
            r3 = move-exception
            r4 = r2
            goto L50
        L45:
            com.loopj.android.http.LogInterface r5 = com.loopj.android.http.AsyncHttpClient.log     // Catch: java.lang.Throwable -> L36
            r5.e(r1, r0, r3)     // Catch: java.lang.Throwable -> L36
            com.loopj.android.http.AsyncHttpClient.silentCloseInputStream(r7)
            if (r4 == 0) goto L64
            goto L32
        L50:
            com.loopj.android.http.LogInterface r5 = com.loopj.android.http.AsyncHttpClient.log     // Catch: java.lang.Throwable -> L36
            r5.e(r1, r0, r3)     // Catch: java.lang.Throwable -> L36
            com.loopj.android.http.AsyncHttpClient.silentCloseInputStream(r7)
            if (r4 == 0) goto L64
            goto L32
        L5b:
            com.loopj.android.http.AsyncHttpClient.silentCloseInputStream(r7)
            if (r2 == 0) goto L63
            r2.close()     // Catch: java.io.IOException -> L63
        L63:
            throw r0
        L64:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loopj.android.http.SaxAsyncHttpResponseHandler.getResponseData(cz.msebera.android.httpclient.HttpEntity):byte[]");
    }

    public abstract void onFailure(int i2, Header[] headerArr, T t6);

    @Override // com.loopj.android.http.AsyncHttpResponseHandler
    public void onFailure(int i2, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i2, headerArr, this.handler);
    }

    public abstract void onSuccess(int i2, Header[] headerArr, T t6);

    @Override // com.loopj.android.http.AsyncHttpResponseHandler
    public void onSuccess(int i2, Header[] headerArr, byte[] bArr) {
        onSuccess(i2, headerArr, (Header[]) this.handler);
    }
}
