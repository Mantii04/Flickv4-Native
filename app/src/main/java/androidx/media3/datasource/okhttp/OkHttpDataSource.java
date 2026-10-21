package androidx.media3.datasource.okhttp;

import P3.v;
import P3.w;
import R3.g;
import V3.M;
import android.net.Uri;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BaseDataSource;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.HttpUtil;
import androidx.media3.datasource.TransferListener;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public class OkHttpDataSource extends BaseDataSource implements HttpDataSource {
    private long bytesRead;
    private long bytesToRead;
    private final CacheControl cacheControl;
    private final Call.Factory callFactory;
    private boolean connectionEstablished;
    private final w contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private final HttpDataSource.RequestProperties requestProperties;
    private Response response;
    private InputStream responseByteStream;
    private final String userAgent;

    public static final class Factory implements HttpDataSource.Factory {
        private CacheControl cacheControl;
        private final Call.Factory callFactory;
        private w contentTypePredicate;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private TransferListener transferListener;
        private String userAgent;

        public Factory(Call.Factory factory) {
            this.callFactory = factory;
        }

        @UnstableApi
        public Factory setCacheControl(CacheControl cacheControl) {
            this.cacheControl = cacheControl;
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
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory, androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        public OkHttpDataSource createDataSource() {
            OkHttpDataSource okHttpDataSource = new OkHttpDataSource(this.callFactory, this.userAgent, this.cacheControl, this.defaultRequestProperties, this.contentTypePredicate);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                okHttpDataSource.addTransferListener(transferListener);
            }
            return okHttpDataSource;
        }
    }

    static {
        MediaLibraryInfo.registerModule("media3.datasource.okhttp");
    }

    private void closeConnectionQuietly() {
        Response response = this.response;
        if (response != null) {
            ((ResponseBody) v.checkNotNull(response.body())).close();
        }
        this.responseByteStream = null;
    }

    private Response executeCall(Call call) throws IOException {
        final M create = M.create();
        call.enqueue(new Callback() { // from class: androidx.media3.datasource.okhttp.OkHttpDataSource.1
            @Override // okhttp3.Callback
            public void onFailure(Call call2, IOException iOException) {
                create.setException(iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call2, Response response) {
                create.set(response);
            }
        });
        try {
            return (Response) create.get();
        } catch (InterruptedException unused) {
            call.cancel();
            throw new InterruptedIOException();
        } catch (ExecutionException e3) {
            throw new IOException(e3);
        }
    }

    private Request makeRequest(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        long j7 = dataSpec.position;
        long j8 = dataSpec.length;
        HttpUrl parse = HttpUrl.parse(dataSpec.uri.toString());
        if (parse == null) {
            throw new HttpDataSource.HttpDataSourceException("Malformed URL", dataSpec, 1004, 1);
        }
        Request.Builder url = new Request.Builder().url(parse);
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.requestProperties.getSnapshot());
        hashMap.putAll(dataSpec.httpRequestHeaders);
        for (Map.Entry entry : hashMap.entrySet()) {
            url.header((String) entry.getKey(), (String) entry.getValue());
        }
        String buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j7, j8);
        if (buildRangeRequestHeader != null) {
            url.addHeader("Range", buildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            url.addHeader("User-Agent", str);
        }
        if (!dataSpec.isFlagSet(1)) {
            url.addHeader("Accept-Encoding", HTTP.IDENTITY_CODING);
        }
        byte[] bArr = dataSpec.httpBody;
        url.method(dataSpec.getHttpMethodString(), bArr != null ? RequestBody.create(bArr) : dataSpec.httpMethod == 2 ? RequestBody.create(Util.EMPTY_BYTE_ARRAY) : null);
        return url.build();
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
        int read = ((InputStream) Util.castNonNull(this.responseByteStream)).read(bArr, i2, i7);
        if (read == -1) {
            return -1;
        }
        this.bytesRead += read;
        bytesTransferred(read);
        return read;
    }

    private void skipFully(long j7, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (j7 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j7 > 0) {
            try {
                int read = ((InputStream) Util.castNonNull(this.responseByteStream)).read(bArr, 0, (int) Math.min(j7, 4096));
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (read == -1) {
                    throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
                }
                j7 -= read;
                bytesTransferred(read);
            } catch (IOException e3) {
                if (!(e3 instanceof HttpDataSource.HttpDataSourceException)) {
                    throw new HttpDataSource.HttpDataSourceException(dataSpec, 2000, 1);
                }
                throw ((HttpDataSource.HttpDataSourceException) e3);
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
        v.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public void close() {
        if (this.connectionEstablished) {
            this.connectionEstablished = false;
            transferEnded();
            closeConnectionQuietly();
        }
        this.response = null;
        this.dataSpec = null;
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public int getResponseCode() {
        Response response = this.response;
        if (response == null) {
            return -1;
        }
        return response.code();
    }

    @Override // androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        Response response = this.response;
        return response == null ? Collections.EMPTY_MAP : response.headers().toMultimap();
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public Uri getUri() {
        Response response = this.response;
        if (response != null) {
            return Uri.parse(response.request().url().toString());
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
            Response executeCall = executeCall(this.callFactory.newCall(makeRequest(dataSpec)));
            this.response = executeCall;
            ResponseBody responseBody = (ResponseBody) v.checkNotNull(executeCall.body());
            this.responseByteStream = responseBody.byteStream();
            int code = executeCall.code();
            if (!executeCall.isSuccessful()) {
                if (code == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(executeCall.headers().get("Content-Range"))) {
                        this.connectionEstablished = true;
                        transferStarted(dataSpec);
                        long j8 = dataSpec.length;
                        if (j8 != -1) {
                            return j8;
                        }
                        return 0L;
                    }
                }
                try {
                    bArr = g.toByteArray((InputStream) v.checkNotNull(this.responseByteStream));
                } catch (IOException unused) {
                    bArr = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr2 = bArr;
                Map<String, List<String>> multimap = executeCall.headers().toMultimap();
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidResponseCodeException(code, executeCall.message(), code == 416 ? new DataSourceException(2008) : null, multimap, dataSpec, bArr2);
            }
            MediaType contentType = responseBody.contentType();
            String mediaType = contentType != null ? contentType.toString() : "";
            w wVar = this.contentTypePredicate;
            if (wVar != null && !wVar.apply(mediaType)) {
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidContentTypeException(mediaType, dataSpec);
            }
            if (code == 200) {
                long j9 = dataSpec.position;
                if (j9 != 0) {
                    j7 = j9;
                }
            }
            long j10 = dataSpec.length;
            if (j10 != -1) {
                this.bytesToRead = j10;
            } else {
                long contentLength = responseBody.contentLength();
                this.bytesToRead = contentLength != -1 ? contentLength - j7 : -1L;
            }
            this.connectionEstablished = true;
            transferStarted(dataSpec);
            try {
                skipFully(j7, dataSpec);
                return this.bytesToRead;
            } catch (HttpDataSource.HttpDataSourceException e3) {
                closeConnectionQuietly();
                throw e3;
            }
        } catch (IOException e7) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e7, dataSpec, 1);
        }
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

    private OkHttpDataSource(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.RequestProperties requestProperties, w wVar) {
        super(true);
        this.callFactory = (Call.Factory) v.checkNotNull(factory);
        this.userAgent = str;
        this.cacheControl = cacheControl;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = wVar;
        this.requestProperties = new HttpDataSource.RequestProperties();
    }
}
