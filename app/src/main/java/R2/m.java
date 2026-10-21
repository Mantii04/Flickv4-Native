package R2;

import com.google.android.datatransport.cct.internal.ClientInfo$ClientType;

/* loaded from: classes.dex */
public final class m extends w {

    /* renamed from: a, reason: collision with root package name */
    public ClientInfo$ClientType f3076a;

    /* renamed from: b, reason: collision with root package name */
    public AbstractC0257b f3077b;

    @Override // R2.w
    public x build() {
        return new n(this.f3076a, this.f3077b);
    }

    @Override // R2.w
    public w setAndroidClientInfo(AbstractC0257b abstractC0257b) {
        this.f3077b = abstractC0257b;
        return this;
    }

    @Override // R2.w
    public w setClientType(ClientInfo$ClientType clientInfo$ClientType) {
        this.f3076a = clientInfo$ClientType;
        return this;
    }
}
