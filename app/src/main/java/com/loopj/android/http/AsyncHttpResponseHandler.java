package com.loopj.android.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpEntity;
import cz.msebera.android.httpclient.HttpResponse;
import cz.msebera.android.httpclient.StatusLine;
import cz.msebera.android.httpclient.client.HttpResponseException;
import cz.msebera.android.httpclient.util.ByteArrayBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class AsyncHttpResponseHandler implements ResponseHandlerInterface {
    protected static final int BUFFER_SIZE = 4096;
    protected static final int CANCEL_MESSAGE = 6;
    public static final String DEFAULT_CHARSET = "UTF-8";
    protected static final int FAILURE_MESSAGE = 1;
    protected static final int FINISH_MESSAGE = 3;
    private static final String LOG_TAG = "AsyncHttpRH";
    protected static final int PROGRESS_MESSAGE = 4;
    protected static final int RETRY_MESSAGE = 5;
    protected static final int START_MESSAGE = 2;
    protected static final int SUCCESS_MESSAGE = 0;
    public static final String UTF8_BOM = "\ufeff";
    private WeakReference<Object> TAG;
    private Handler handler;
    private Looper looper;
    private Header[] requestHeaders;
    private URI requestURI;
    private String responseCharset;
    private boolean usePoolThread;
    private boolean useSynchronousMode;

    public static class ResponderHandler extends Handler {
        private final AsyncHttpResponseHandler mResponder;

        public ResponderHandler(AsyncHttpResponseHandler asyncHttpResponseHandler, Looper looper) {
            super(looper);
            this.mResponder = asyncHttpResponseHandler;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.mResponder.handleMessage(message);
        }
    }

    public AsyncHttpResponseHandler() {
        this((Looper) null);
    }

    public String getCharset() {
        String str = this.responseCharset;
        return str == null ? "UTF-8" : str;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public Header[] getRequestHeaders() {
        return this.requestHeaders;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public URI getRequestURI() {
        return this.requestURI;
    }

    public byte[] getResponseData(HttpEntity httpEntity) throws IOException {
        InputStream content;
        if (httpEntity == null || (content = httpEntity.getContent()) == null) {
            return null;
        }
        long contentLength = httpEntity.getContentLength();
        if (contentLength > 2147483647L) {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        long j7 = 0;
        try {
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(contentLength <= 0 ? 4096 : (int) contentLength);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = content.read(bArr);
                    if (read == -1 || Thread.currentThread().isInterrupted()) {
                        break;
                    }
                    j7 += read;
                    byteArrayBuffer.append(bArr, 0, read);
                    sendProgressMessage(j7, contentLength <= 0 ? 1L : contentLength);
                }
                AsyncHttpClient.silentCloseInputStream(content);
                AsyncHttpClient.endEntityViaReflection(httpEntity);
                return byteArrayBuffer.toByteArray();
            } catch (Throwable th) {
                AsyncHttpClient.silentCloseInputStream(content);
                AsyncHttpClient.endEntityViaReflection(httpEntity);
                throw th;
            }
        } catch (OutOfMemoryError unused) {
            System.gc();
            throw new IOException("File too large to fit into available memory");
        }
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public Object getTag() {
        return this.TAG.get();
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public boolean getUsePoolThread() {
        return this.usePoolThread;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public boolean getUseSynchronousMode() {
        return this.useSynchronousMode;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void handleMessage(Message message) {
        try {
            switch (message.what) {
                case 0:
                    Object[] objArr = (Object[]) message.obj;
                    if (objArr == null || objArr.length < 3) {
                        AsyncHttpClient.log.e(LOG_TAG, "SUCCESS_MESSAGE didn't got enough params");
                    } else {
                        onSuccess(((Integer) objArr[0]).intValue(), (Header[]) objArr[1], (byte[]) objArr[2]);
                    }
                    break;
                case 1:
                    Object[] objArr2 = (Object[]) message.obj;
                    if (objArr2 == null || objArr2.length < 4) {
                        AsyncHttpClient.log.e(LOG_TAG, "FAILURE_MESSAGE didn't got enough params");
                    } else {
                        onFailure(((Integer) objArr2[0]).intValue(), (Header[]) objArr2[1], (byte[]) objArr2[2], (Throwable) objArr2[3]);
                    }
                    break;
                case 2:
                    onStart();
                    break;
                case 3:
                    onFinish();
                    break;
                case 4:
                    Object[] objArr3 = (Object[]) message.obj;
                    if (objArr3 == null || objArr3.length < 2) {
                        AsyncHttpClient.log.e(LOG_TAG, "PROGRESS_MESSAGE didn't got enough params");
                    } else {
                        try {
                            onProgress(((Long) objArr3[0]).longValue(), ((Long) objArr3[1]).longValue());
                        } catch (Throwable th) {
                            AsyncHttpClient.log.e(LOG_TAG, "custom onProgress contains an error", th);
                        }
                    }
                    break;
                case 5:
                    Object[] objArr4 = (Object[]) message.obj;
                    if (objArr4 == null || objArr4.length != 1) {
                        AsyncHttpClient.log.e(LOG_TAG, "RETRY_MESSAGE didn't get enough params");
                    } else {
                        onRetry(((Integer) objArr4[0]).intValue());
                    }
                    break;
                case 6:
                    onCancel();
                    break;
            }
        } catch (Throwable th2) {
            onUserException(th2);
        }
    }

    public Message obtainMessage(int i2, Object obj) {
        return Message.obtain(this.handler, i2, obj);
    }

    public void onCancel() {
        AsyncHttpClient.log.d(LOG_TAG, "Request got cancelled");
    }

    public abstract void onFailure(int i2, Header[] headerArr, byte[] bArr, Throwable th);

    public void onFinish() {
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void onPostProcessResponse(ResponseHandlerInterface responseHandlerInterface, HttpResponse httpResponse) {
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void onPreProcessResponse(ResponseHandlerInterface responseHandlerInterface, HttpResponse httpResponse) {
    }

    public void onProgress(long j7, long j8) {
        AsyncHttpClient.log.v(LOG_TAG, String.format(Locale.US, "Progress %d from %d (%2.0f%%)", Long.valueOf(j7), Long.valueOf(j8), Double.valueOf(j8 > 0 ? ((j7 * 1.0d) / j8) * 100.0d : -1.0d)));
    }

    public void onRetry(int i2) {
        LogInterface logInterface = AsyncHttpClient.log;
        Locale locale = Locale.US;
        logInterface.d(LOG_TAG, "Request retry no. " + i2);
    }

    public void onStart() {
    }

    public abstract void onSuccess(int i2, Header[] headerArr, byte[] bArr);

    public void onUserException(Throwable th) {
        AsyncHttpClient.log.e(LOG_TAG, "User-space exception detected!", th);
        throw new RuntimeException(th);
    }

    public void postRunnable(Runnable runnable) {
        Handler handler;
        if (runnable != null) {
            if (getUseSynchronousMode() || (handler = this.handler) == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendCancelMessage() {
        sendMessage(obtainMessage(6, null));
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendFailureMessage(int i2, Header[] headerArr, byte[] bArr, Throwable th) {
        sendMessage(obtainMessage(1, new Object[]{Integer.valueOf(i2), headerArr, bArr, th}));
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendFinishMessage() {
        sendMessage(obtainMessage(3, null));
    }

    public void sendMessage(Message message) {
        if (getUseSynchronousMode() || this.handler == null) {
            handleMessage(message);
        } else {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            Utils.asserts(this.handler != null, "handler should not be null!");
            this.handler.sendMessage(message);
        }
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendProgressMessage(long j7, long j8) {
        sendMessage(obtainMessage(4, new Object[]{Long.valueOf(j7), Long.valueOf(j8)}));
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void sendResponseMessage(HttpResponse httpResponse) throws IOException {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        byte[] responseData = getResponseData(httpResponse.getEntity());
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (statusLine.getStatusCode() >= 300) {
            sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
        } else {
            sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData);
        }
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendRetryMessage(int i2) {
        sendMessage(obtainMessage(5, new Object[]{Integer.valueOf(i2)}));
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendStartMessage() {
        sendMessage(obtainMessage(2, null));
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public final void sendSuccessMessage(int i2, Header[] headerArr, byte[] bArr) {
        sendMessage(obtainMessage(0, new Object[]{Integer.valueOf(i2), headerArr, bArr}));
    }

    public void setCharset(String str) {
        this.responseCharset = str;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void setRequestHeaders(Header[] headerArr) {
        this.requestHeaders = headerArr;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void setRequestURI(URI uri) {
        this.requestURI = uri;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void setTag(Object obj) {
        this.TAG = new WeakReference<>(obj);
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void setUsePoolThread(boolean z6) {
        if (z6) {
            this.looper = null;
            this.handler = null;
        }
        this.usePoolThread = z6;
    }

    @Override // com.loopj.android.http.ResponseHandlerInterface
    public void setUseSynchronousMode(boolean z6) {
        if (!z6 && this.looper == null) {
            AsyncHttpClient.log.w(LOG_TAG, "Current thread has not called Looper.prepare(). Forcing synchronous mode.");
            z6 = true;
        }
        if (!z6 && this.handler == null) {
            this.handler = new ResponderHandler(this, this.looper);
        } else if (z6 && this.handler != null) {
            this.handler = null;
        }
        this.useSynchronousMode = z6;
    }

    public AsyncHttpResponseHandler(Looper looper) {
        this(looper == null ? Looper.myLooper() : looper, false);
    }

    public AsyncHttpResponseHandler(boolean z6) {
        this(z6 ? null : Looper.myLooper(), z6);
    }

    private AsyncHttpResponseHandler(Looper looper, boolean z6) {
        this.responseCharset = "UTF-8";
        this.requestURI = null;
        this.requestHeaders = null;
        this.looper = null;
        this.TAG = new WeakReference<>(null);
        if (!z6) {
            Utils.asserts(looper != null, "use looper thread, must call Looper.prepare() first!");
            this.looper = looper;
            this.handler = new ResponderHandler(this, looper);
        } else {
            Utils.asserts(looper == null, "use pool thread, looper should be null!");
            this.looper = null;
            this.handler = null;
        }
        this.usePoolThread = z6;
    }
}
