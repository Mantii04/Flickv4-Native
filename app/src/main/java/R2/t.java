package R2;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType;

/* loaded from: classes.dex */
public final class t extends D {

    /* renamed from: a, reason: collision with root package name */
    public NetworkConnectionInfo$NetworkType f3109a;

    /* renamed from: b, reason: collision with root package name */
    public NetworkConnectionInfo$MobileSubtype f3110b;

    @Override // R2.D
    public E build() {
        return new u(this.f3109a, this.f3110b);
    }

    @Override // R2.D
    public D setMobileSubtype(NetworkConnectionInfo$MobileSubtype networkConnectionInfo$MobileSubtype) {
        this.f3110b = networkConnectionInfo$MobileSubtype;
        return this;
    }

    @Override // R2.D
    public D setNetworkType(NetworkConnectionInfo$NetworkType networkConnectionInfo$NetworkType) {
        this.f3109a = networkConnectionInfo$NetworkType;
        return this;
    }
}
