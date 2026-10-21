package V2;

import S2.y;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.List;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final l f3955a;

    /* renamed from: b, reason: collision with root package name */
    public final List f3956b;

    /* renamed from: c, reason: collision with root package name */
    public final d f3957c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3958d;

    static {
        new a().build();
    }

    public b(l lVar, List list, d dVar, String str) {
        this.f3955a = lVar;
        this.f3956b = list;
        this.f3957c = dVar;
        this.f3958d = str;
    }

    public static a newBuilder() {
        return new a();
    }

    @Protobuf(tag = 4)
    public String getAppNamespace() {
        return this.f3958d;
    }

    @Protobuf(tag = 3)
    @Encodable.Field(name = "globalMetrics")
    public d getGlobalMetricsInternal() {
        return this.f3957c;
    }

    @Protobuf(tag = 2)
    @Encodable.Field(name = "logSourceMetrics")
    public List<h> getLogSourceMetricsList() {
        return this.f3956b;
    }

    @Protobuf(tag = 1)
    @Encodable.Field(name = "window")
    public l getWindowInternal() {
        return this.f3955a;
    }

    public byte[] toByteArray() {
        return y.encode(this);
    }
}
