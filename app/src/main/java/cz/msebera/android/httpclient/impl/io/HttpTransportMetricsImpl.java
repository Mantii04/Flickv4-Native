package cz.msebera.android.httpclient.impl.io;

import cz.msebera.android.httpclient.io.HttpTransportMetrics;

/* loaded from: classes2.dex */
public class HttpTransportMetricsImpl implements HttpTransportMetrics {
    private long bytesTransferred = 0;

    @Override // cz.msebera.android.httpclient.io.HttpTransportMetrics
    public long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public void incrementBytesTransferred(long j7) {
        this.bytesTransferred += j7;
    }

    @Override // cz.msebera.android.httpclient.io.HttpTransportMetrics
    public void reset() {
        this.bytesTransferred = 0L;
    }

    public void setBytesTransferred(long j7) {
        this.bytesTransferred = j7;
    }
}
