package R2;

import com.google.android.datatransport.cct.internal.QosTier;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* loaded from: classes.dex */
public abstract class B {
    public static A builder() {
        return new q();
    }

    public abstract x getClientInfo();

    @Encodable.Field(name = "logEvent")
    public abstract List<z> getLogEvents();

    public abstract Integer getLogSource();

    public abstract String getLogSourceName();

    public abstract QosTier getQosTier();

    public abstract long getRequestTimeMs();

    public abstract long getRequestUptimeMs();
}
