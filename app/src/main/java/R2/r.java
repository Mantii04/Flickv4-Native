package R2;

import com.google.android.datatransport.cct.internal.QosTier;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* loaded from: classes.dex */
public final class r extends B {

    /* renamed from: a, reason: collision with root package name */
    public final long f3101a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3102b;

    /* renamed from: c, reason: collision with root package name */
    public final x f3103c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f3104d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3105e;

    /* renamed from: f, reason: collision with root package name */
    public final List f3106f;

    /* renamed from: g, reason: collision with root package name */
    public final QosTier f3107g;

    public r(long j7, long j8, x xVar, Integer num, String str, List list, QosTier qosTier) {
        this.f3101a = j7;
        this.f3102b = j8;
        this.f3103c = xVar;
        this.f3104d = num;
        this.f3105e = str;
        this.f3106f = list;
        this.f3107g = qosTier;
    }

    public boolean equals(Object obj) {
        x xVar;
        Integer num;
        String str;
        List list;
        QosTier qosTier;
        if (obj == this) {
            return true;
        }
        if (obj instanceof B) {
            B b7 = (B) obj;
            if (this.f3101a == b7.getRequestTimeMs() && this.f3102b == b7.getRequestUptimeMs() && ((xVar = this.f3103c) != null ? xVar.equals(b7.getClientInfo()) : b7.getClientInfo() == null) && ((num = this.f3104d) != null ? num.equals(b7.getLogSource()) : b7.getLogSource() == null) && ((str = this.f3105e) != null ? str.equals(b7.getLogSourceName()) : b7.getLogSourceName() == null) && ((list = this.f3106f) != null ? list.equals(b7.getLogEvents()) : b7.getLogEvents() == null) && ((qosTier = this.f3107g) != null ? qosTier.equals(b7.getQosTier()) : b7.getQosTier() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // R2.B
    public x getClientInfo() {
        return this.f3103c;
    }

    @Override // R2.B
    @Encodable.Field(name = "logEvent")
    public List<z> getLogEvents() {
        return this.f3106f;
    }

    @Override // R2.B
    public Integer getLogSource() {
        return this.f3104d;
    }

    @Override // R2.B
    public String getLogSourceName() {
        return this.f3105e;
    }

    @Override // R2.B
    public QosTier getQosTier() {
        return this.f3107g;
    }

    @Override // R2.B
    public long getRequestTimeMs() {
        return this.f3101a;
    }

    @Override // R2.B
    public long getRequestUptimeMs() {
        return this.f3102b;
    }

    public int hashCode() {
        long j7 = this.f3101a;
        long j8 = this.f3102b;
        int i2 = (((((int) (j7 ^ (j7 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003;
        x xVar = this.f3103c;
        int hashCode = (i2 ^ (xVar == null ? 0 : xVar.hashCode())) * 1000003;
        Integer num = this.f3104d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f3105e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f3106f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f3107g;
        return hashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f3101a + ", requestUptimeMs=" + this.f3102b + ", clientInfo=" + this.f3103c + ", logSource=" + this.f3104d + ", logSourceName=" + this.f3105e + ", logEvents=" + this.f3106f + ", qosTier=" + this.f3107g + "}";
    }
}
