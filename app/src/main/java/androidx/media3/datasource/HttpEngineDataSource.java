package androidx.media3.datasource;

import P3.AbstractC0226a;
import P3.v;
import P3.w;
import android.net.Uri;
import android.net.http.HeaderBlock;
import android.net.http.HttpEngine;
import android.net.http.HttpException;
import android.net.http.UrlRequest;
import android.net.http.UrlRequest$Callback;
import android.net.http.UrlRequest$StatusListener;
import android.net.http.UrlResponseInfo;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.HttpDataSource;
import cz.msebera.android.httpclient.cookie.SM;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

@UnstableApi
/* loaded from: classes.dex */
public final class HttpEngineDataSource extends BaseDataSource implements HttpDataSource {

    @UnstableApi
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;

    @UnstableApi
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final int READ_BUFFER_SIZE_BYTES = 32768;
    private long bytesRemaining;
    private final Clock clock;
    private final int connectTimeoutMs;
    private w contentTypePredicate;
    private volatile long currentConnectTimeoutMs;
    private DataSpec currentDataSpec;
    private UrlRequestWrapper currentUrlRequestWrapper;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private IOException exception;
    private final Executor executor;
    private boolean finished;
    private final boolean handleSetCookieRequests;
    private final HttpEngine httpEngine;
    private final boolean keepPostFor302Redirects;
    private final ConditionVariable operation;
    private ByteBuffer readBuffer;
    private final int readTimeoutMs;
    private final int requestPriority;
    private final HttpDataSource.RequestProperties requestProperties;
    private final boolean resetTimeoutOnRedirects;
    private UrlResponseInfo responseInfo;
    private boolean transferStarted;
    private final String userAgent;

    public static final class Factory implements HttpDataSource.Factory {
        private w contentTypePredicate;
        private final Executor executor;
        private boolean handleSetCookieRequests;
        private final HttpEngine httpEngine;
        private boolean keepPostFor302Redirects;
        private boolean resetTimeoutOnRedirects;
        private TransferListener transferListener;
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int requestPriority = 3;
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        public Factory(HttpEngine httpEngine, Executor executor) {
            this.httpEngine = b.e(v.checkNotNull(httpEngine));
            this.executor = executor;
        }

        @UnstableApi
        public Factory setConnectionTimeoutMs(int i2) {
            this.connectTimeoutMs = i2;
            return this;
        }

        @UnstableApi
        public Factory setContentTypePredicate(w wVar) {
            this.contentTypePredicate = wVar;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @UnstableApi
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
        }

        @UnstableApi
        public Factory setHandleSetCookieRequests(boolean z6) {
            this.handleSetCookieRequests = z6;
            return this;
        }

        @UnstableApi
        public Factory setKeepPostFor302Redirects(boolean z6) {
            this.keepPostFor302Redirects = z6;
            return this;
        }

        @UnstableApi
        public Factory setReadTimeoutMs(int i2) {
            this.readTimeoutMs = i2;
            return this;
        }

        @UnstableApi
        public Factory setRequestPriority(int i2) {
            this.requestPriority = i2;
            return this;
        }

        @UnstableApi
        public Factory setResetTimeoutOnRedirects(boolean z6) {
            this.resetTimeoutOnRedirects = z6;
            return this;
        }

        @UnstableApi
        public Factory setTransferListener(TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        public Factory setUserAgent(String str) {
            this.userAgent = str;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory, androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        public HttpDataSource createDataSource() {
            HttpEngineDataSource httpEngineDataSource = new HttpEngineDataSource(this.httpEngine, this.executor, this.requestPriority, this.connectTimeoutMs, this.readTimeoutMs, this.resetTimeoutOnRedirects, this.handleSetCookieRequests, this.userAgent, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                httpEngineDataSource.addTransferListener(transferListener);
            }
            return httpEngineDataSource;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @UnstableApi
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }
    }

    public final class UrlRequestCallback implements UrlRequest$Callback {
        private volatile boolean isClosed = false;

        public UrlRequestCallback() {
        }

        public void close() {
            this.isClosed = true;
        }

        public synchronized void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        }

        public synchronized void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, HttpException httpException) {
            int errorCode;
            try {
                if (this.isClosed) {
                    return;
                }
                if (b.x(httpException)) {
                    errorCode = b.f(httpException).getErrorCode();
                    if (errorCode == 1) {
                        HttpEngineDataSource.this.exception = new UnknownHostException();
                        HttpEngineDataSource.this.operation.open();
                    }
                }
                HttpEngineDataSource.this.exception = httpException;
                HttpEngineDataSource.this.operation.open();
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
            if (this.isClosed) {
                return;
            }
            HttpEngineDataSource.this.operation.open();
        }

        public synchronized void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
            int httpStatusCode;
            String url;
            HeaderBlock headers;
            Map asMap;
            String httpStatusText;
            HeaderBlock headers2;
            Map asMap2;
            if (this.isClosed) {
                return;
            }
            DataSpec dataSpec = (DataSpec) v.checkNotNull(HttpEngineDataSource.this.currentDataSpec);
            httpStatusCode = urlResponseInfo.getHttpStatusCode();
            if (dataSpec.httpMethod == 2 && (httpStatusCode == 307 || httpStatusCode == 308)) {
                HttpEngineDataSource httpEngineDataSource = HttpEngineDataSource.this;
                httpStatusText = urlResponseInfo.getHttpStatusText();
                headers2 = urlResponseInfo.getHeaders();
                asMap2 = headers2.getAsMap();
                httpEngineDataSource.exception = new HttpDataSource.InvalidResponseCodeException(httpStatusCode, httpStatusText, null, asMap2, dataSpec, Util.EMPTY_BYTE_ARRAY);
                HttpEngineDataSource.this.operation.open();
                return;
            }
            if (HttpEngineDataSource.this.resetTimeoutOnRedirects) {
                HttpEngineDataSource.this.resetConnectTimeout();
            }
            CookieHandler cookieHandler = CookieHandler.getDefault();
            if (cookieHandler == null && HttpEngineDataSource.this.handleSetCookieRequests) {
                cookieHandler = new CookieManager();
            }
            url = urlResponseInfo.getUrl();
            headers = urlResponseInfo.getHeaders();
            asMap = headers.getAsMap();
            HttpUtil.storeCookiesFromHeaders(url, asMap, cookieHandler);
            String cookieHeader = HttpUtil.getCookieHeader(url, asMap, cookieHandler);
            boolean z6 = HttpEngineDataSource.this.keepPostFor302Redirects && dataSpec.httpMethod == 2 && httpStatusCode == 302;
            if (!z6 && (!HttpEngineDataSource.this.handleSetCookieRequests || TextUtils.isEmpty(cookieHeader))) {
                urlRequest.followRedirect();
                return;
            }
            urlRequest.cancel();
            DataSpec withUri = (z6 || dataSpec.httpMethod != 2) ? dataSpec.withUri(Uri.parse(str)) : dataSpec.buildUpon().setUri(str).setHttpMethod(1).setHttpBody(null).build();
            if (!TextUtils.isEmpty(cookieHeader)) {
                HashMap hashMap = new HashMap();
                hashMap.putAll(dataSpec.httpRequestHeaders);
                hashMap.put(SM.COOKIE, cookieHeader);
                withUri = withUri.buildUpon().setHttpRequestHeaders(hashMap).build();
            }
            try {
                UrlRequestWrapper buildRequestWrapper = HttpEngineDataSource.this.buildRequestWrapper(withUri);
                if (HttpEngineDataSource.this.currentUrlRequestWrapper != null) {
                    HttpEngineDataSource.this.currentUrlRequestWrapper.close();
                }
                HttpEngineDataSource.this.currentUrlRequestWrapper = buildRequestWrapper;
                HttpEngineDataSource.this.currentUrlRequestWrapper.start();
            } catch (IOException e3) {
                HttpEngineDataSource.this.exception = e3;
            }
        }

        public synchronized void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            String url;
            HeaderBlock headers;
            Map asMap;
            if (this.isClosed) {
                return;
            }
            url = urlResponseInfo.getUrl();
            headers = urlResponseInfo.getHeaders();
            asMap = headers.getAsMap();
            HttpUtil.storeCookiesFromHeaders(url, asMap, CookieHandler.getDefault());
            HttpEngineDataSource.this.responseInfo = urlResponseInfo;
            HttpEngineDataSource.this.operation.open();
        }

        public synchronized void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (this.isClosed) {
                return;
            }
            HttpEngineDataSource.this.finished = true;
            HttpEngineDataSource.this.operation.open();
        }
    }

    public static final class UrlRequestWrapper {
        private final UrlRequest urlRequest;
        private final UrlRequestCallback urlRequestCallback;

        public UrlRequestWrapper(UrlRequest urlRequest, UrlRequestCallback urlRequestCallback) {
            this.urlRequest = urlRequest;
            this.urlRequestCallback = urlRequestCallback;
        }

        public void close() {
            this.urlRequestCallback.close();
            this.urlRequest.cancel();
        }

        public int getStatus() throws InterruptedException {
            final ConditionVariable conditionVariable = new ConditionVariable();
            final int[] iArr = new int[1];
            this.urlRequest.getStatus(new UrlRequest$StatusListener() { // from class: androidx.media3.datasource.HttpEngineDataSource.UrlRequestWrapper.1
                public void onStatus(int i2) {
                    iArr[0] = i2;
                    conditionVariable.open();
                }
            });
            conditionVariable.block();
            return iArr[0];
        }

        public UrlRequestCallback getUrlRequestCallback() {
            return this.urlRequestCallback;
        }

        public void read(ByteBuffer byteBuffer) {
            this.urlRequest.read(byteBuffer);
        }

        public void start() {
            this.urlRequest.start();
        }
    }

    @UnstableApi
    public HttpEngineDataSource(HttpEngine httpEngine, Executor executor, int i2, int i7, int i8, boolean z6, boolean z7, String str, HttpDataSource.RequestProperties requestProperties, w wVar, boolean z8) {
        super(true);
        this.httpEngine = b.e(v.checkNotNull(httpEngine));
        this.executor = (Executor) v.checkNotNull(executor);
        this.requestPriority = i2;
        this.connectTimeoutMs = i7;
        this.readTimeoutMs = i8;
        this.resetTimeoutOnRedirects = z6;
        this.handleSetCookieRequests = z7;
        this.userAgent = str;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = wVar;
        this.keepPostFor302Redirects = z8;
        this.clock = Clock.DEFAULT;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.operation = new ConditionVariable();
    }

    private boolean blockUntilConnectTimeout() throws InterruptedException {
        long elapsedRealtime = this.clock.elapsedRealtime();
        boolean z6 = false;
        while (!z6 && elapsedRealtime < this.currentConnectTimeoutMs) {
            z6 = this.operation.block((this.currentConnectTimeoutMs - elapsedRealtime) + 5);
            elapsedRealtime = this.clock.elapsedRealtime();
        }
        return z6;
    }

    private UrlRequest.Builder buildRequestBuilder(DataSpec dataSpec, UrlRequest$Callback urlRequest$Callback) throws IOException {
        UrlRequest.Builder newUrlRequestBuilder;
        UrlRequest.Builder priority;
        UrlRequest.Builder directExecutorAllowed;
        newUrlRequestBuilder = this.httpEngine.newUrlRequestBuilder(dataSpec.uri.toString(), this.executor, urlRequest$Callback);
        priority = newUrlRequestBuilder.setPriority(this.requestPriority);
        directExecutorAllowed = priority.setDirectExecutorAllowed(true);
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.requestProperties.getSnapshot());
        hashMap.putAll(dataSpec.httpRequestHeaders);
        for (Map.Entry entry : hashMap.entrySet()) {
            directExecutorAllowed.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        if (dataSpec.httpBody != null && !hashMap.containsKey("Content-Type")) {
            throw new OpenException("HTTP request with non-empty body must set Content-Type", dataSpec, 1004, 0);
        }
        String buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(dataSpec.position, dataSpec.length);
        if (buildRangeRequestHeader != null) {
            directExecutorAllowed.addHeader("Range", buildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            directExecutorAllowed.addHeader("User-Agent", str);
        }
        directExecutorAllowed.setHttpMethod(dataSpec.getHttpMethodString());
        if (dataSpec.httpBody != null) {
            directExecutorAllowed.setUploadDataProvider(new ByteArrayUploadDataProvider(dataSpec.httpBody), this.executor);
        }
        return directExecutorAllowed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UrlRequestWrapper buildRequestWrapper(DataSpec dataSpec) throws IOException {
        UrlRequest build;
        UrlRequestCallback urlRequestCallback = new UrlRequestCallback();
        build = buildRequestBuilder(dataSpec, urlRequestCallback).build();
        return new UrlRequestWrapper(build, urlRequestCallback);
    }

    private static int copyByteBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int min = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        int limit = byteBuffer.limit();
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer2.put(byteBuffer);
        byteBuffer.limit(limit);
        return min;
    }

    private static String getFirstHeader(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private ByteBuffer getOrCreateReadBuffer() {
        if (this.readBuffer == null) {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(32768);
            this.readBuffer = allocateDirect;
            allocateDirect.limit(0);
        }
        return this.readBuffer;
    }

    private static boolean isCompressed(UrlResponseInfo urlResponseInfo) {
        HeaderBlock headers;
        List asList;
        headers = urlResponseInfo.getHeaders();
        asList = headers.getAsList();
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            if (((String) ((Map.Entry) it.next()).getKey()).equalsIgnoreCase("Content-Encoding")) {
                return !((String) r0.getValue()).equalsIgnoreCase(HTTP.IDENTITY_CODING);
            }
        }
        return false;
    }

    private void readInternal(ByteBuffer byteBuffer, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        ((UrlRequestWrapper) Util.castNonNull(this.currentUrlRequestWrapper)).read(byteBuffer);
        try {
        } catch (InterruptedException unused) {
            if (byteBuffer == this.readBuffer) {
                this.readBuffer = null;
            }
            Thread.currentThread().interrupt();
            this.exception = new InterruptedIOException();
        } catch (SocketTimeoutException e3) {
            if (byteBuffer == this.readBuffer) {
                this.readBuffer = null;
            }
            this.exception = new HttpDataSource.HttpDataSourceException(e3, dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, 2);
        }
        if (!this.operation.block(this.readTimeoutMs)) {
            throw new SocketTimeoutException();
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            if (!(iOException instanceof HttpDataSource.HttpDataSourceException)) {
                throw HttpDataSource.HttpDataSourceException.createForIOException(iOException, dataSpec, 2);
            }
            throw ((HttpDataSource.HttpDataSourceException) iOException);
        }
    }

    private byte[] readResponseBody() throws IOException {
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        ByteBuffer orCreateReadBuffer = getOrCreateReadBuffer();
        while (!this.finished) {
            this.operation.close();
            orCreateReadBuffer.clear();
            readInternal(orCreateReadBuffer, (DataSpec) Util.castNonNull(this.currentDataSpec));
            orCreateReadBuffer.flip();
            if (orCreateReadBuffer.remaining() > 0) {
                int length = bArr.length;
                bArr = Arrays.copyOf(bArr, orCreateReadBuffer.remaining() + bArr.length);
                orCreateReadBuffer.get(bArr, length, orCreateReadBuffer.remaining());
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetConnectTimeout() {
        this.currentConnectTimeoutMs = this.clock.elapsedRealtime() + this.connectTimeoutMs;
    }

    private void skipFully(long j7, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (j7 == 0) {
            return;
        }
        ByteBuffer orCreateReadBuffer = getOrCreateReadBuffer();
        while (j7 > 0) {
            try {
                this.operation.close();
                orCreateReadBuffer.clear();
                readInternal(orCreateReadBuffer, dataSpec);
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (this.finished) {
                    throw new OpenException(dataSpec, 2008, 14);
                }
                orCreateReadBuffer.flip();
                v.checkState(orCreateReadBuffer.hasRemaining());
                int min = (int) Math.min(orCreateReadBuffer.remaining(), j7);
                orCreateReadBuffer.position(orCreateReadBuffer.position() + min);
                j7 -= min;
            } catch (IOException e3) {
                if (e3 instanceof HttpDataSource.HttpDataSourceException) {
                    throw ((HttpDataSource.HttpDataSourceException) e3);
                }
                throw new OpenException(e3, dataSpec, e3 instanceof SocketTimeoutException ? PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT : PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 14);
            }
        }
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void clearRequestProperty(String str) {
        this.requestProperties.remove(str);
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public synchronized void close() {
        try {
            UrlRequestWrapper urlRequestWrapper = this.currentUrlRequestWrapper;
            if (urlRequestWrapper != null) {
                urlRequestWrapper.close();
                this.currentUrlRequestWrapper = null;
            }
            ByteBuffer byteBuffer = this.readBuffer;
            if (byteBuffer != null) {
                byteBuffer.limit(0);
            }
            this.currentDataSpec = null;
            this.responseInfo = null;
            this.exception = null;
            this.finished = false;
            if (this.transferStarted) {
                this.transferStarted = false;
                transferEnded();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @UnstableApi
    public UrlRequestCallback getCurrentUrlRequestCallback() {
        UrlRequestWrapper urlRequestWrapper = this.currentUrlRequestWrapper;
        if (urlRequestWrapper == null) {
            return null;
        }
        return urlRequestWrapper.getUrlRequestCallback();
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public int getResponseCode() {
        int httpStatusCode;
        int httpStatusCode2;
        UrlResponseInfo urlResponseInfo = this.responseInfo;
        if (urlResponseInfo == null) {
            return -1;
        }
        httpStatusCode = urlResponseInfo.getHttpStatusCode();
        if (httpStatusCode <= 0) {
            return -1;
        }
        httpStatusCode2 = this.responseInfo.getHttpStatusCode();
        return httpStatusCode2;
    }

    @Override // androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        HeaderBlock headers;
        Map<String, List<String>> asMap;
        UrlResponseInfo urlResponseInfo = this.responseInfo;
        if (urlResponseInfo == null) {
            return Collections.EMPTY_MAP;
        }
        headers = urlResponseInfo.getHeaders();
        asMap = headers.getAsMap();
        return asMap;
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public Uri getUri() {
        String url;
        UrlResponseInfo urlResponseInfo = this.responseInfo;
        if (urlResponseInfo != null) {
            url = urlResponseInfo.getUrl();
            return Uri.parse(url);
        }
        DataSpec dataSpec = this.currentDataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        int httpStatusCode;
        HeaderBlock headers;
        Map asMap;
        byte[] bArr;
        String httpStatusText;
        String firstHeader;
        v.checkNotNull(dataSpec);
        v.checkState(!this.transferStarted);
        this.operation.close();
        resetConnectTimeout();
        this.currentDataSpec = dataSpec;
        try {
            UrlRequestWrapper buildRequestWrapper = buildRequestWrapper(dataSpec);
            this.currentUrlRequestWrapper = buildRequestWrapper;
            buildRequestWrapper.start();
            transferInitializing(dataSpec);
            try {
                boolean blockUntilConnectTimeout = blockUntilConnectTimeout();
                IOException iOException = this.exception;
                if (iOException != null) {
                    String message = iOException.getMessage();
                    if (message == null || !AbstractC0226a.toLowerCase(message).contains("err_cleartext_not_permitted")) {
                        throw new OpenException(iOException, dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, buildRequestWrapper.getStatus());
                    }
                    throw new HttpDataSource.CleartextNotPermittedException(iOException, dataSpec);
                }
                if (!blockUntilConnectTimeout) {
                    throw new OpenException(new SocketTimeoutException(), dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, buildRequestWrapper.getStatus());
                }
                UrlResponseInfo k7 = b.k(v.checkNotNull(this.responseInfo));
                httpStatusCode = k7.getHttpStatusCode();
                headers = k7.getHeaders();
                asMap = headers.getAsMap();
                long j7 = 0;
                if (httpStatusCode < 200 || httpStatusCode > 299) {
                    if (httpStatusCode == 416) {
                        if (dataSpec.position == HttpUtil.getDocumentSize(getFirstHeader(asMap, "Content-Range"))) {
                            this.transferStarted = true;
                            transferStarted(dataSpec);
                            long j8 = dataSpec.length;
                            if (j8 != -1) {
                                return j8;
                            }
                            return 0L;
                        }
                    }
                    try {
                        bArr = readResponseBody();
                    } catch (IOException unused) {
                        bArr = Util.EMPTY_BYTE_ARRAY;
                    }
                    byte[] bArr2 = bArr;
                    DataSourceException dataSourceException = httpStatusCode == 416 ? new DataSourceException(2008) : null;
                    httpStatusText = k7.getHttpStatusText();
                    throw new HttpDataSource.InvalidResponseCodeException(httpStatusCode, httpStatusText, dataSourceException, asMap, dataSpec, bArr2);
                }
                w wVar = this.contentTypePredicate;
                if (wVar != null && (firstHeader = getFirstHeader(asMap, "Content-Type")) != null && !wVar.apply(firstHeader)) {
                    throw new HttpDataSource.InvalidContentTypeException(firstHeader, dataSpec);
                }
                if (httpStatusCode == 200) {
                    long j9 = dataSpec.position;
                    if (j9 != 0) {
                        j7 = j9;
                    }
                }
                if (isCompressed(k7)) {
                    this.bytesRemaining = dataSpec.length;
                } else {
                    long j10 = dataSpec.length;
                    if (j10 != -1) {
                        this.bytesRemaining = j10;
                    } else {
                        long contentLength = HttpUtil.getContentLength(getFirstHeader(asMap, "Content-Length"), getFirstHeader(asMap, "Content-Range"));
                        this.bytesRemaining = contentLength != -1 ? contentLength - j7 : -1L;
                    }
                }
                this.transferStarted = true;
                transferStarted(dataSpec);
                skipFully(j7, dataSpec);
                return this.bytesRemaining;
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                throw new OpenException(new InterruptedIOException(), dataSpec, 1004, -1);
            }
        } catch (IOException e3) {
            if (e3 instanceof HttpDataSource.HttpDataSourceException) {
                throw ((HttpDataSource.HttpDataSourceException) e3);
            }
            throw new OpenException(e3, dataSpec, 2000, 0);
        }
    }

    @Override // androidx.media3.common.DataReader
    @UnstableApi
    public int read(byte[] bArr, int i2, int i7) throws HttpDataSource.HttpDataSourceException {
        v.checkState(this.transferStarted);
        if (i7 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        ByteBuffer orCreateReadBuffer = getOrCreateReadBuffer();
        if (!orCreateReadBuffer.hasRemaining()) {
            this.operation.close();
            orCreateReadBuffer.clear();
            readInternal(orCreateReadBuffer, (DataSpec) Util.castNonNull(this.currentDataSpec));
            if (this.finished) {
                this.bytesRemaining = 0L;
                return -1;
            }
            orCreateReadBuffer.flip();
            v.checkState(orCreateReadBuffer.hasRemaining());
        }
        long j7 = this.bytesRemaining;
        if (j7 == -1) {
            j7 = Long.MAX_VALUE;
        }
        int min = (int) U3.f.min(j7, orCreateReadBuffer.remaining(), i7);
        orCreateReadBuffer.get(bArr, i2, min);
        long j8 = this.bytesRemaining;
        if (j8 != -1) {
            this.bytesRemaining = j8 - min;
        }
        bytesTransferred(min);
        return min;
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void setRequestProperty(String str, String str2) {
        this.requestProperties.set(str, str2);
    }

    @UnstableApi
    public static final class OpenException extends HttpDataSource.HttpDataSourceException {
        public final int httpEngineConnectionStatus;

        public OpenException(IOException iOException, DataSpec dataSpec, int i2, int i7) {
            super(iOException, dataSpec, i2, 1);
            this.httpEngineConnectionStatus = i7;
        }

        public OpenException(String str, DataSpec dataSpec, int i2, int i7) {
            super(str, dataSpec, i2, 1);
            this.httpEngineConnectionStatus = i7;
        }

        public OpenException(DataSpec dataSpec, int i2, int i7) {
            super(dataSpec, i2, 1);
            this.httpEngineConnectionStatus = i7;
        }
    }

    @UnstableApi
    public int read(ByteBuffer byteBuffer) throws HttpDataSource.HttpDataSourceException {
        int copyByteBuffer;
        v.checkState(this.transferStarted);
        if (byteBuffer.isDirect()) {
            if (!byteBuffer.hasRemaining()) {
                return 0;
            }
            if (this.bytesRemaining == 0) {
                return -1;
            }
            int remaining = byteBuffer.remaining();
            ByteBuffer byteBuffer2 = this.readBuffer;
            if (byteBuffer2 != null && (copyByteBuffer = copyByteBuffer(byteBuffer2, byteBuffer)) != 0) {
                long j7 = this.bytesRemaining;
                if (j7 != -1) {
                    this.bytesRemaining = j7 - copyByteBuffer;
                }
                bytesTransferred(copyByteBuffer);
                return copyByteBuffer;
            }
            this.operation.close();
            readInternal(byteBuffer, (DataSpec) Util.castNonNull(this.currentDataSpec));
            if (this.finished) {
                this.bytesRemaining = 0L;
                return -1;
            }
            v.checkState(remaining > byteBuffer.remaining());
            int remaining2 = remaining - byteBuffer.remaining();
            long j8 = this.bytesRemaining;
            if (j8 != -1) {
                this.bytesRemaining = j8 - remaining2;
            }
            bytesTransferred(remaining2);
            return remaining2;
        }
        throw new IllegalArgumentException("Passed buffer is not a direct ByteBuffer");
    }
}
