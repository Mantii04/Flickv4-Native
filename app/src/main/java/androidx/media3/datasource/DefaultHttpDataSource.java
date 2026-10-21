package androidx.media3.datasource;

import P3.v;
import P3.w;
import Q3.AbstractC0245o;
import Q3.s0;
import android.net.TrafficStats;
import android.net.Uri;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.HttpDataSource;
import com.google.common.collect.ImmutableMap;
import com.loopj.android.http.AsyncHttpClient;
import cz.msebera.android.httpclient.HttpHeaders;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;

/* loaded from: classes.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {

    @UnstableApi
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;

    @UnstableApi
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final int HTTP_STATUS_PERMANENT_REDIRECT = 308;
    private static final int HTTP_STATUS_TEMPORARY_REDIRECT = 307;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "DefaultHttpDataSource";
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesToRead;
    private final int connectTimeoutMillis;
    private HttpURLConnection connection;
    private final w contentTypePredicate;
    private final boolean crossProtocolRedirectsForceOriginal;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private InputStream inputStream;
    private final boolean keepPostFor302Redirects;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private int responseCode;
    private boolean transferStarted;
    private final String userAgent;

    public static final class Factory implements HttpDataSource.Factory {
        private boolean allowCrossProtocolRedirects;
        private w contentTypePredicate;
        private boolean crossProtocolRedirectsForceOriginal;
        private boolean keepPostFor302Redirects;
        private TransferListener transferListener;
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        @UnstableApi
        public Factory setAllowCrossProtocolRedirects(boolean z6) {
            this.allowCrossProtocolRedirects = z6;
            return this;
        }

        @UnstableApi
        public Factory setConnectTimeoutMs(int i2) {
            this.connectTimeoutMs = i2;
            return this;
        }

        @UnstableApi
        public Factory setContentTypePredicate(w wVar) {
            this.contentTypePredicate = wVar;
            return this;
        }

        @UnstableApi
        public Factory setCrossProtocolRedirectsForceOriginal(boolean z6) {
            this.crossProtocolRedirectsForceOriginal = z6;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @UnstableApi
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
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
        public Factory setTransferListener(TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        public Factory setUserAgent(String str) {
            this.userAgent = str;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @UnstableApi
        public Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory, androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        public DefaultHttpDataSource createDataSource() {
            DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.crossProtocolRedirectsForceOriginal, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultHttpDataSource.addTransferListener(transferListener);
            }
            return defaultHttpDataSource;
        }
    }

    public static class NullFilteringHeadersMap extends AbstractC0245o {
        private final Map<String, List<String>> headers;

        public NullFilteringHeadersMap(Map<String, List<String>> map) {
            this.headers = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$entrySet$1(Map.Entry entry) {
            return entry.getKey() != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$keySet$0(String str) {
            return str != null;
        }

        @Override // Q3.AbstractC0245o, java.util.Map
        public boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return super.standardContainsValue(obj);
        }

        @Override // Q3.AbstractC0245o, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return s0.filter(super.entrySet(), new f(0));
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            return obj != null && super.standardEquals(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return super.standardHashCode();
        }

        @Override // Q3.AbstractC0245o, java.util.Map
        public boolean isEmpty() {
            return super.isEmpty() || (super.size() == 1 && super.containsKey(null));
        }

        @Override // Q3.AbstractC0245o, java.util.Map
        public Set<String> keySet() {
            return s0.filter(super.keySet(), new f(1));
        }

        @Override // Q3.AbstractC0245o, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }

        @Override // Q3.AbstractC0246p
        public Map<String, List<String>> delegate() {
            return this.headers;
        }

        @Override // Q3.AbstractC0245o, java.util.Map
        public List<String> get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }
    }

    private void closeConnectionQuietly() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e3) {
                Log.e(TAG, "Unexpected error while disconnecting", e3);
            }
        }
    }

    private static long getCurrentThreadId() {
        return Thread.currentThread().getId();
    }

    private URL handleRedirect(URL url, String str, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !HttpHost.DEFAULT_SCHEME_NAME.equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException(A.i.k("Unsupported protocol redirect: ", protocol), dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 1);
            }
            if (this.allowCrossProtocolRedirects || protocol.equals(url.getProtocol())) {
                return url2;
            }
            if (this.crossProtocolRedirectsForceOriginal) {
                try {
                    return new URL(url2.toString().replaceFirst(protocol, url.getProtocol()));
                } catch (MalformedURLException e3) {
                    throw new HttpDataSource.HttpDataSourceException(e3, dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 1);
                }
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 1);
        } catch (MalformedURLException e7) {
            throw new HttpDataSource.HttpDataSourceException(e7, dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 1);
        }
    }

    private static boolean isCompressed(HttpURLConnection httpURLConnection) {
        return AsyncHttpClient.ENCODING_GZIP.equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    private HttpURLConnection makeConnection(DataSpec dataSpec) throws IOException {
        HttpURLConnection makeConnection;
        URL url = new URL(dataSpec.uri.toString());
        int i2 = dataSpec.httpMethod;
        byte[] bArr = dataSpec.httpBody;
        long j7 = dataSpec.position;
        long j8 = dataSpec.length;
        int i7 = 1;
        boolean isFlagSet = dataSpec.isFlagSet(1);
        if (!this.allowCrossProtocolRedirects && !this.crossProtocolRedirectsForceOriginal && !this.keepPostFor302Redirects) {
            return makeConnection(url, i2, bArr, j7, j8, isFlagSet, true, dataSpec.httpRequestHeaders);
        }
        int i8 = 0;
        while (true) {
            int i9 = i8 + 1;
            if (i8 > 20) {
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException(A.i.f(i9, "Too many redirects: ")), dataSpec, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, 1);
            }
            makeConnection = makeConnection(url, i2, bArr, j7, j8, isFlagSet, false, dataSpec.httpRequestHeaders);
            int responseCode = makeConnection.getResponseCode();
            String headerField = makeConnection.getHeaderField(HttpHeaders.LOCATION);
            if ((i2 == i7 || i2 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                makeConnection.disconnect();
                url = handleRedirect(url, headerField, dataSpec);
            } else {
                if (i2 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    break;
                }
                makeConnection.disconnect();
                if (!this.keepPostFor302Redirects || responseCode != 302) {
                    bArr = null;
                    i2 = 1;
                }
                url = handleRedirect(url, headerField, dataSpec);
            }
            i8 = i9;
            i7 = 1;
        }
        return makeConnection;
    }

    private int readInternal(byte[] bArr, int i2, int i7) throws IOException {
        if (i7 == 0) {
            return 0;
        }
        long j7 = this.bytesToRead;
        if (j7 != -1) {
            long j8 = j7 - this.bytesRead;
            if (j8 == 0) {
                return -1;
            }
            i7 = (int) Math.min(i7, j8);
        }
        int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i2, i7);
        if (read == -1) {
            return -1;
        }
        this.bytesRead += read;
        bytesTransferred(read);
        return read;
    }

    private void skipFully(long j7, DataSpec dataSpec) throws IOException {
        if (j7 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j7 > 0) {
            int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, 0, (int) Math.min(j7, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (read == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j7 -= read;
            bytesTransferred(read);
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
        v.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    throw new HttpDataSource.HttpDataSourceException(e3, (DataSpec) Util.castNonNull(this.dataSpec), 2000, 3);
                }
            }
        } finally {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.transferStarted) {
                this.transferStarted = false;
                transferEnded();
            }
            this.connection = null;
            this.dataSpec = null;
            TrafficStats.clearThreadStatsTag();
        }
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public int getResponseCode() {
        int i2;
        if (this.connection == null || (i2 = this.responseCode) <= 0) {
            return -1;
        }
        return i2;
    }

    @Override // androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.connection;
        return httpURLConnection == null ? ImmutableMap.of() : new NullFilteringHeadersMap(httpURLConnection.getHeaderFields());
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        DataSpec dataSpec = this.dataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr;
        this.dataSpec = dataSpec;
        long j7 = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            TrafficStats.setThreadStatsTag((int) getCurrentThreadId());
            HttpURLConnection makeConnection = makeConnection(dataSpec);
            this.connection = makeConnection;
            this.responseCode = makeConnection.getResponseCode();
            String responseMessage = makeConnection.getResponseMessage();
            int i2 = this.responseCode;
            if (i2 < 200 || i2 > 299) {
                Map<String, List<String>> headerFields = makeConnection.getHeaderFields();
                if (this.responseCode == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(makeConnection.getHeaderField("Content-Range"))) {
                        this.transferStarted = true;
                        transferStarted(dataSpec);
                        long j8 = dataSpec.length;
                        if (j8 != -1) {
                            return j8;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = makeConnection.getErrorStream();
                try {
                    bArr = errorStream != null ? R3.g.toByteArray(errorStream) : Util.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    bArr = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr2 = bArr;
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, this.responseCode == 416 ? new DataSourceException(2008) : null, headerFields, dataSpec, bArr2);
            }
            String contentType = makeConnection.getContentType();
            w wVar = this.contentTypePredicate;
            if (wVar != null && !wVar.apply(contentType)) {
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
            }
            if (this.responseCode == 200) {
                long j9 = dataSpec.position;
                if (j9 != 0) {
                    j7 = j9;
                }
            }
            boolean isCompressed = isCompressed(makeConnection);
            if (isCompressed) {
                this.bytesToRead = dataSpec.length;
            } else {
                long j10 = dataSpec.length;
                if (j10 != -1) {
                    this.bytesToRead = j10;
                } else {
                    long contentLength = HttpUtil.getContentLength(makeConnection.getHeaderField("Content-Length"), makeConnection.getHeaderField("Content-Range"));
                    this.bytesToRead = contentLength != -1 ? contentLength - j7 : -1L;
                }
            }
            try {
                this.inputStream = makeConnection.getInputStream();
                if (isCompressed) {
                    this.inputStream = new GZIPInputStream(this.inputStream);
                }
                this.transferStarted = true;
                transferStarted(dataSpec);
                try {
                    skipFully(j7, dataSpec);
                    return this.bytesToRead;
                } catch (IOException e3) {
                    closeConnectionQuietly();
                    if (e3 instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e3);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e3, dataSpec, 2000, 1);
                }
            } catch (IOException e7) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException(e7, dataSpec, 2000, 1);
            }
        } catch (IOException e8) {
            closeConnectionQuietly();
            throw HttpDataSource.HttpDataSourceException.createForIOException(e8, dataSpec, 1);
        }
    }

    public HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // androidx.media3.common.DataReader
    @UnstableApi
    public int read(byte[] bArr, int i2, int i7) throws HttpDataSource.HttpDataSourceException {
        try {
            return readInternal(bArr, i2, i7);
        } catch (IOException e3) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e3, (DataSpec) Util.castNonNull(this.dataSpec), 2);
        }
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void setRequestProperty(String str, String str2) {
        v.checkNotNull(str);
        v.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }

    private DefaultHttpDataSource(String str, int i2, int i7, boolean z6, boolean z7, HttpDataSource.RequestProperties requestProperties, w wVar, boolean z8) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i2;
        this.readTimeoutMillis = i7;
        this.allowCrossProtocolRedirects = z6;
        this.crossProtocolRedirectsForceOriginal = z7;
        if (z6 && z7) {
            throw new IllegalArgumentException("crossProtocolRedirectsForceOriginal should not be set if allowCrossProtocolRedirects is true");
        }
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = wVar;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.keepPostFor302Redirects = z8;
    }

    private HttpURLConnection makeConnection(URL url, int i2, byte[] bArr, long j7, long j8, boolean z6, boolean z7, Map<String, String> map) throws IOException {
        HttpURLConnection openConnection = openConnection(url);
        openConnection.setConnectTimeout(this.connectTimeoutMillis);
        openConnection.setReadTimeout(this.readTimeoutMillis);
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.requestProperties.getSnapshot());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            openConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j7, j8);
        if (buildRangeRequestHeader != null) {
            openConnection.setRequestProperty("Range", buildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            openConnection.setRequestProperty("User-Agent", str);
        }
        openConnection.setRequestProperty("Accept-Encoding", z6 ? AsyncHttpClient.ENCODING_GZIP : HTTP.IDENTITY_CODING);
        openConnection.setInstanceFollowRedirects(z7);
        openConnection.setDoOutput(bArr != null);
        openConnection.setRequestMethod(DataSpec.getStringForHttpMethod(i2));
        if (bArr != null) {
            openConnection.setFixedLengthStreamingMode(bArr.length);
            openConnection.connect();
            OutputStream outputStream = openConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return openConnection;
        }
        openConnection.connect();
        return openConnection;
    }
}
