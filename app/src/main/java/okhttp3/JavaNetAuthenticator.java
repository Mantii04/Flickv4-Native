package okhttp3;

import java.io.IOException;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class JavaNetAuthenticator implements Authenticator {
    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        j.checkNotNullParameter(response, "response");
        return Authenticator.JAVA_NET_AUTHENTICATOR.authenticate(route, response);
    }
}
