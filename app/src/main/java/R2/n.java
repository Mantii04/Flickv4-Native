package R2;

import com.google.android.datatransport.cct.internal.ClientInfo$ClientType;

/* loaded from: classes.dex */
public final class n extends x {

    /* renamed from: a, reason: collision with root package name */
    public final ClientInfo$ClientType f3078a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0257b f3079b;

    public n(ClientInfo$ClientType clientInfo$ClientType, AbstractC0257b abstractC0257b) {
        this.f3078a = clientInfo$ClientType;
        this.f3079b = abstractC0257b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x) {
            x xVar = (x) obj;
            ClientInfo$ClientType clientInfo$ClientType = this.f3078a;
            if (clientInfo$ClientType != null ? clientInfo$ClientType.equals(xVar.getClientType()) : xVar.getClientType() == null) {
                AbstractC0257b abstractC0257b = this.f3079b;
                if (abstractC0257b != null ? abstractC0257b.equals(xVar.getAndroidClientInfo()) : xVar.getAndroidClientInfo() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // R2.x
    public AbstractC0257b getAndroidClientInfo() {
        return this.f3079b;
    }

    @Override // R2.x
    public ClientInfo$ClientType getClientType() {
        return this.f3078a;
    }

    public int hashCode() {
        ClientInfo$ClientType clientInfo$ClientType = this.f3078a;
        int hashCode = ((clientInfo$ClientType == null ? 0 : clientInfo$ClientType.hashCode()) ^ 1000003) * 1000003;
        AbstractC0257b abstractC0257b = this.f3079b;
        return (abstractC0257b != null ? abstractC0257b.hashCode() : 0) ^ hashCode;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f3078a + ", androidClientInfo=" + this.f3079b + "}";
    }
}
