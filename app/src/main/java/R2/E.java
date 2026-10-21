package R2;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType;

/* loaded from: classes.dex */
public abstract class E {
    public static D builder() {
        return new t();
    }

    public abstract NetworkConnectionInfo$MobileSubtype getMobileSubtype();

    public abstract NetworkConnectionInfo$NetworkType getNetworkType();
}
