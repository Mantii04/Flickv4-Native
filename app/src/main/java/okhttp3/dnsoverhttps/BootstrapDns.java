package okhttp3.dnsoverhttps;

import A.i;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.jvm.internal.j;
import okhttp3.Dns;

/* loaded from: classes2.dex */
public final class BootstrapDns implements Dns {
    private final String dnsHostname;
    private final List<InetAddress> dnsServers;

    /* JADX WARN: Multi-variable type inference failed */
    public BootstrapDns(String dnsHostname, List<? extends InetAddress> dnsServers) {
        j.checkNotNullParameter(dnsHostname, "dnsHostname");
        j.checkNotNullParameter(dnsServers, "dnsServers");
        this.dnsHostname = dnsHostname;
        this.dnsServers = dnsServers;
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String hostname) throws UnknownHostException {
        j.checkNotNullParameter(hostname, "hostname");
        if (j.areEqual(this.dnsHostname, hostname)) {
            return this.dnsServers;
        }
        StringBuilder t6 = i.t("BootstrapDns called for ", hostname, " instead of ");
        t6.append(this.dnsHostname);
        throw new UnknownHostException(t6.toString());
    }
}
