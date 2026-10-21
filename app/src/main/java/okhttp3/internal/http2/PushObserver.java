package okhttp3.internal.http2;

import e6.InterfaceC0872n;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public interface PushObserver {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i2, InterfaceC0872n source, int i7, boolean z6) throws IOException {
                j.checkNotNullParameter(source, "source");
                source.skip(i7);
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i2, List<Header> responseHeaders, boolean z6) {
                j.checkNotNullParameter(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i2, List<Header> requestHeaders) {
                j.checkNotNullParameter(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i2, ErrorCode errorCode) {
                j.checkNotNullParameter(errorCode, "errorCode");
            }
        }

        private Companion() {
        }
    }

    boolean onData(int i2, InterfaceC0872n interfaceC0872n, int i7, boolean z6) throws IOException;

    boolean onHeaders(int i2, List<Header> list, boolean z6);

    boolean onRequest(int i2, List<Header> list);

    void onReset(int i2, ErrorCode errorCode);
}
