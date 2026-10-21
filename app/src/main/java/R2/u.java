package R2;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType;

/* loaded from: classes.dex */
public final class u extends E {

    /* renamed from: a, reason: collision with root package name */
    public final NetworkConnectionInfo$NetworkType f3111a;

    /* renamed from: b, reason: collision with root package name */
    public final NetworkConnectionInfo$MobileSubtype f3112b;

    public u(NetworkConnectionInfo$NetworkType networkConnectionInfo$NetworkType, NetworkConnectionInfo$MobileSubtype networkConnectionInfo$MobileSubtype) {
        this.f3111a = networkConnectionInfo$NetworkType;
        this.f3112b = networkConnectionInfo$MobileSubtype;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof E) {
            E e3 = (E) obj;
            NetworkConnectionInfo$NetworkType networkConnectionInfo$NetworkType = this.f3111a;
            if (networkConnectionInfo$NetworkType != null ? networkConnectionInfo$NetworkType.equals(e3.getNetworkType()) : e3.getNetworkType() == null) {
                NetworkConnectionInfo$MobileSubtype networkConnectionInfo$MobileSubtype = this.f3112b;
                if (networkConnectionInfo$MobileSubtype != null ? networkConnectionInfo$MobileSubtype.equals(e3.getMobileSubtype()) : e3.getMobileSubtype() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // R2.E
    public NetworkConnectionInfo$MobileSubtype getMobileSubtype() {
        return this.f3112b;
    }

    @Override // R2.E
    public NetworkConnectionInfo$NetworkType getNetworkType() {
        return this.f3111a;
    }

    public int hashCode() {
        NetworkConnectionInfo$NetworkType networkConnectionInfo$NetworkType = this.f3111a;
        int hashCode = ((networkConnectionInfo$NetworkType == null ? 0 : networkConnectionInfo$NetworkType.hashCode()) ^ 1000003) * 1000003;
        NetworkConnectionInfo$MobileSubtype networkConnectionInfo$MobileSubtype = this.f3112b;
        return (networkConnectionInfo$MobileSubtype != null ? networkConnectionInfo$MobileSubtype.hashCode() : 0) ^ hashCode;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f3111a + ", mobileSubtype=" + this.f3112b + "}";
    }
}
