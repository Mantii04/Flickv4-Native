package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.jvm.internal.j;
import u5.AbstractC1702a;

/* loaded from: classes2.dex */
public final class RouteException extends RuntimeException {
    private final IOException firstConnectException;
    private IOException lastConnectException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteException(IOException firstConnectException) {
        super(firstConnectException);
        j.checkNotNullParameter(firstConnectException, "firstConnectException");
        this.firstConnectException = firstConnectException;
        this.lastConnectException = firstConnectException;
    }

    public final void addConnectException(IOException e3) {
        j.checkNotNullParameter(e3, "e");
        AbstractC1702a.addSuppressed(this.firstConnectException, e3);
        this.lastConnectException = e3;
    }

    public final IOException getFirstConnectException() {
        return this.firstConnectException;
    }

    public final IOException getLastConnectException() {
        return this.lastConnectException;
    }
}
