package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.j;
import okhttp3.ConnectionSpec;

/* loaded from: classes2.dex */
public final class ConnectionSpecSelector {
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex;

    public ConnectionSpecSelector(List<ConnectionSpec> connectionSpecs) {
        j.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        this.connectionSpecs = connectionSpecs;
    }

    private final boolean isFallbackPossible(SSLSocket sSLSocket) {
        int size = this.connectionSpecs.size();
        for (int i2 = this.nextModeIndex; i2 < size; i2++) {
            if (this.connectionSpecs.get(i2).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public final ConnectionSpec configureSecureSocket(SSLSocket sslSocket) throws IOException {
        ConnectionSpec connectionSpec;
        j.checkNotNullParameter(sslSocket, "sslSocket");
        int i2 = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        while (true) {
            if (i2 >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = this.connectionSpecs.get(i2);
            if (connectionSpec.isCompatible(sslSocket)) {
                this.nextModeIndex = i2 + 1;
                break;
            }
            i2++;
        }
        if (connectionSpec != null) {
            this.isFallbackPossible = isFallbackPossible(sslSocket);
            connectionSpec.apply$okhttp(sslSocket, this.isFallback);
            return connectionSpec;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.isFallback);
        sb.append(", modes=");
        sb.append(this.connectionSpecs);
        sb.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        j.checkNotNull(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        j.checkNotNullExpressionValue(arrays, "toString(this)");
        sb.append(arrays);
        throw new UnknownServiceException(sb.toString());
    }

    public final boolean connectionFailed(IOException e3) {
        j.checkNotNullParameter(e3, "e");
        this.isFallback = true;
        if (!this.isFallbackPossible || (e3 instanceof ProtocolException) || (e3 instanceof InterruptedIOException)) {
            return false;
        }
        return (((e3 instanceof SSLHandshakeException) && (e3.getCause() instanceof CertificateException)) || (e3 instanceof SSLPeerUnverifiedException) || !(e3 instanceof SSLException)) ? false : true;
    }
}
