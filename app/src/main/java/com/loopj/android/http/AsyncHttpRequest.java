package com.loopj.android.http;

import cz.msebera.android.httpclient.client.methods.CloseableHttpResponse;
import cz.msebera.android.httpclient.client.methods.HttpUriRequest;
import cz.msebera.android.httpclient.impl.client.AbstractHttpClient;
import cz.msebera.android.httpclient.protocol.HttpContext;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class AsyncHttpRequest implements Runnable {
    private boolean cancelIsNotified;
    private final AbstractHttpClient client;
    private final HttpContext context;
    private int executionCount;
    private final AtomicBoolean isCancelled = new AtomicBoolean();
    private volatile boolean isFinished;
    private boolean isRequestPreProcessed;
    private final HttpUriRequest request;
    private final ResponseHandlerInterface responseHandler;

    public AsyncHttpRequest(AbstractHttpClient abstractHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, ResponseHandlerInterface responseHandlerInterface) {
        this.client = (AbstractHttpClient) Utils.notNull(abstractHttpClient, "client");
        this.context = (HttpContext) Utils.notNull(httpContext, "context");
        this.request = (HttpUriRequest) Utils.notNull(httpUriRequest, "request");
        this.responseHandler = (ResponseHandlerInterface) Utils.notNull(responseHandlerInterface, "responseHandler");
    }

    private void makeRequest() throws IOException {
        if (isCancelled()) {
            return;
        }
        if (this.request.getURI().getScheme() == null) {
            throw new MalformedURLException("No valid URI scheme was provided");
        }
        ResponseHandlerInterface responseHandlerInterface = this.responseHandler;
        if (responseHandlerInterface instanceof RangeFileAsyncHttpResponseHandler) {
            ((RangeFileAsyncHttpResponseHandler) responseHandlerInterface).updateRequestHeaders(this.request);
        }
        CloseableHttpResponse execute = this.client.execute(this.request, this.context);
        if (isCancelled()) {
            return;
        }
        ResponseHandlerInterface responseHandlerInterface2 = this.responseHandler;
        responseHandlerInterface2.onPreProcessResponse(responseHandlerInterface2, execute);
        if (isCancelled()) {
            return;
        }
        this.responseHandler.sendResponseMessage(execute);
        if (isCancelled()) {
            return;
        }
        ResponseHandlerInterface responseHandlerInterface3 = this.responseHandler;
        responseHandlerInterface3.onPostProcessResponse(responseHandlerInterface3, execute);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0009 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void makeRequestWithRetries() throws java.io.IOException {
        /*
            r8 = this;
            cz.msebera.android.httpclient.impl.client.AbstractHttpClient r0 = r8.client
            cz.msebera.android.httpclient.client.HttpRequestRetryHandler r0 = r0.getHttpRequestRetryHandler()
            r1 = 1
            r2 = 0
            r3 = r1
        L9:
            if (r3 == 0) goto Lb4
            r8.makeRequest()     // Catch: java.lang.Exception -> Lf java.io.IOException -> L12 java.lang.NullPointerException -> L2c java.net.UnknownHostException -> L58
            goto L19
        Lf:
            r0 = move-exception
            goto L93
        L12:
            r3 = move-exception
            boolean r2 = r8.isCancelled()     // Catch: java.lang.Exception -> Lf
            if (r2 == 0) goto L1a
        L19:
            return
        L1a:
            int r2 = r8.executionCount     // Catch: java.lang.Exception -> L29
            int r2 = r2 + r1
            r8.executionCount = r2     // Catch: java.lang.Exception -> L29
            cz.msebera.android.httpclient.protocol.HttpContext r4 = r8.context     // Catch: java.lang.Exception -> L29
            boolean r2 = r0.retryRequest(r3, r2, r4)     // Catch: java.lang.Exception -> L29
            r7 = r3
            r3 = r2
            r2 = r7
            goto L88
        L29:
            r0 = move-exception
            r2 = r3
            goto L93
        L2c:
            r3 = move-exception
            java.io.IOException r4 = new java.io.IOException     // Catch: java.lang.Exception -> Lf
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf
            r5.<init>()     // Catch: java.lang.Exception -> Lf
            java.lang.String r6 = "NPE in HttpClient: "
            r5.append(r6)     // Catch: java.lang.Exception -> Lf
            java.lang.String r3 = r3.getMessage()     // Catch: java.lang.Exception -> Lf
            r5.append(r3)     // Catch: java.lang.Exception -> Lf
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Exception -> Lf
            r4.<init>(r3)     // Catch: java.lang.Exception -> Lf
            int r2 = r8.executionCount     // Catch: java.lang.Exception -> L55
            int r2 = r2 + r1
            r8.executionCount = r2     // Catch: java.lang.Exception -> L55
            cz.msebera.android.httpclient.protocol.HttpContext r3 = r8.context     // Catch: java.lang.Exception -> L55
            boolean r2 = r0.retryRequest(r4, r2, r3)     // Catch: java.lang.Exception -> L55
        L52:
            r3 = r2
            r2 = r4
            goto L88
        L55:
            r0 = move-exception
            r2 = r4
            goto L93
        L58:
            r3 = move-exception
            java.io.IOException r4 = new java.io.IOException     // Catch: java.lang.Exception -> Lf
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf
            r5.<init>()     // Catch: java.lang.Exception -> Lf
            java.lang.String r6 = "UnknownHostException exception: "
            r5.append(r6)     // Catch: java.lang.Exception -> Lf
            java.lang.String r6 = r3.getMessage()     // Catch: java.lang.Exception -> Lf
            r5.append(r6)     // Catch: java.lang.Exception -> Lf
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> Lf
            r4.<init>(r5, r3)     // Catch: java.lang.Exception -> Lf
            int r2 = r8.executionCount     // Catch: java.lang.Exception -> L55
            if (r2 <= 0) goto L86
            int r2 = r8.executionCount     // Catch: java.lang.Exception -> L55
            int r2 = r2 + r1
            r8.executionCount = r2     // Catch: java.lang.Exception -> L55
            cz.msebera.android.httpclient.protocol.HttpContext r5 = r8.context     // Catch: java.lang.Exception -> L55
            boolean r2 = r0.retryRequest(r3, r2, r5)     // Catch: java.lang.Exception -> L55
            if (r2 == 0) goto L86
            r2 = r1
            goto L52
        L86:
            r2 = 0
            goto L52
        L88:
            if (r3 == 0) goto L9
            com.loopj.android.http.ResponseHandlerInterface r4 = r8.responseHandler     // Catch: java.lang.Exception -> Lf
            int r5 = r8.executionCount     // Catch: java.lang.Exception -> Lf
            r4.sendRetryMessage(r5)     // Catch: java.lang.Exception -> Lf
            goto L9
        L93:
            com.loopj.android.http.LogInterface r1 = com.loopj.android.http.AsyncHttpClient.log
            java.lang.String r3 = "AsyncHttpRequest"
            java.lang.String r4 = "Unhandled exception origin cause"
            r1.e(r3, r4, r0)
            java.io.IOException r1 = new java.io.IOException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unhandled exception: "
            r3.<init>(r4)
            java.lang.String r0 = r0.getMessage()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r1.<init>(r0, r2)
            r2 = r1
        Lb4:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loopj.android.http.AsyncHttpRequest.makeRequestWithRetries():void");
    }

    private synchronized void sendCancelNotification() {
        if (!this.isFinished && this.isCancelled.get() && !this.cancelIsNotified) {
            this.cancelIsNotified = true;
            this.responseHandler.sendCancelMessage();
        }
    }

    public boolean cancel(boolean z6) {
        this.isCancelled.set(true);
        this.request.abort();
        return isCancelled();
    }

    public Object getTag() {
        return this.responseHandler.getTag();
    }

    public boolean isCancelled() {
        boolean z6 = this.isCancelled.get();
        if (z6) {
            sendCancelNotification();
        }
        return z6;
    }

    public boolean isDone() {
        return isCancelled() || this.isFinished;
    }

    public void onPostProcessRequest(AsyncHttpRequest asyncHttpRequest) {
    }

    public void onPreProcessRequest(AsyncHttpRequest asyncHttpRequest) {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isCancelled()) {
            return;
        }
        if (!this.isRequestPreProcessed) {
            this.isRequestPreProcessed = true;
            onPreProcessRequest(this);
        }
        if (isCancelled()) {
            return;
        }
        this.responseHandler.sendStartMessage();
        if (isCancelled()) {
            return;
        }
        try {
            makeRequestWithRetries();
        } catch (IOException e3) {
            if (isCancelled()) {
                AsyncHttpClient.log.e("AsyncHttpRequest", "makeRequestWithRetries returned error", e3);
            } else {
                this.responseHandler.sendFailureMessage(0, null, null, e3);
            }
        }
        if (isCancelled()) {
            return;
        }
        this.responseHandler.sendFinishMessage();
        if (isCancelled()) {
            return;
        }
        onPostProcessRequest(this);
        this.isFinished = true;
    }

    public AsyncHttpRequest setRequestTag(Object obj) {
        this.responseHandler.setTag(obj);
        return this;
    }
}
