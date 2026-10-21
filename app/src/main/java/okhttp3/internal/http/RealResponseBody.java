package okhttp3.internal.http;

import e6.InterfaceC0872n;
import kotlin.jvm.internal.j;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* loaded from: classes2.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final InterfaceC0872n source;

    public RealResponseBody(String str, long j7, InterfaceC0872n source) {
        j.checkNotNullParameter(source, "source");
        this.contentTypeString = str;
        this.contentLength = j7;
        this.source = source;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.Companion.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public InterfaceC0872n source() {
        return this.source;
    }
}
