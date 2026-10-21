package okhttp3;

import A.i;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.jvm.internal.j;
import v5.n;

/* loaded from: classes2.dex */
public interface Dns {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final Dns SYSTEM = new Companion.DnsSystem();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            public List<InetAddress> lookup(String hostname) {
                j.checkNotNullParameter(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    j.checkNotNullExpressionValue(allByName, "getAllByName(hostname)");
                    return n.toList(allByName);
                } catch (NullPointerException e3) {
                    UnknownHostException unknownHostException = new UnknownHostException(i.k("Broken system behaviour for dns lookup of ", hostname));
                    unknownHostException.initCause(e3);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }
    }

    List<InetAddress> lookup(String str) throws UnknownHostException;
}
