package cz.msebera.android.httpclient;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public final class HttpVersion extends ProtocolVersion {
    public static final String HTTP = "HTTP";
    public static final HttpVersion HTTP_0_9 = new HttpVersion(0, 9);
    public static final HttpVersion HTTP_1_0 = new HttpVersion(1, 0);
    public static final HttpVersion HTTP_1_1 = new HttpVersion(1, 1);
    private static final long serialVersionUID = -5856653513894415344L;

    public HttpVersion(int i2, int i7) {
        super(HTTP, i2, i7);
    }

    @Override // cz.msebera.android.httpclient.ProtocolVersion
    public ProtocolVersion forVersion(int i2, int i7) {
        if (i2 == this.major && i7 == this.minor) {
            return this;
        }
        if (i2 == 1) {
            if (i7 == 0) {
                return HTTP_1_0;
            }
            if (i7 == 1) {
                return HTTP_1_1;
            }
        }
        return (i2 == 0 && i7 == 9) ? HTTP_0_9 : new HttpVersion(i2, i7);
    }
}
