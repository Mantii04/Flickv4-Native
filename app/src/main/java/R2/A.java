package R2;

import com.google.android.datatransport.cct.internal.QosTier;
import java.util.List;

/* loaded from: classes.dex */
public abstract class A {
    public abstract B build();

    public abstract A setClientInfo(x xVar);

    public abstract A setLogEvents(List<z> list);

    public abstract A setQosTier(QosTier qosTier);

    public abstract A setRequestTimeMs(long j7);

    public abstract A setRequestUptimeMs(long j7);

    public A setSource(int i2) {
        q qVar = (q) this;
        qVar.f3097d = Integer.valueOf(i2);
        return qVar;
    }

    public A setSource(String str) {
        q qVar = (q) this;
        qVar.f3098e = str;
        return qVar;
    }
}
