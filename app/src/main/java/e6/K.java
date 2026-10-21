package e6;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class K extends C0865g {

    /* renamed from: a, reason: collision with root package name */
    public final Socket f14001a;

    public K(Socket socket) {
        kotlin.jvm.internal.j.checkNotNullParameter(socket, "socket");
        this.f14001a = socket;
    }

    @Override // e6.C0865g
    public IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // e6.C0865g
    public void timedOut() {
        Logger logger;
        Logger logger2;
        Socket socket = this.f14001a;
        try {
            socket.close();
        } catch (AssertionError e3) {
            if (!w.isAndroidGetsocknameError(e3)) {
                throw e3;
            }
            logger2 = x.f14036a;
            logger2.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
        } catch (Exception e7) {
            logger = x.f14036a;
            logger.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e7);
        }
    }
}
