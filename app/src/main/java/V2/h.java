package V2;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.List;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final String f3967a;

    /* renamed from: b, reason: collision with root package name */
    public final List f3968b;

    static {
        new g().build();
    }

    public h(String str, List list) {
        this.f3967a = str;
        this.f3968b = list;
    }

    public static g newBuilder() {
        return new g();
    }

    @Protobuf(tag = 2)
    @Encodable.Field(name = "logEventDropped")
    public List<f> getLogEventDroppedList() {
        return this.f3968b;
    }

    @Protobuf(tag = 1)
    public String getLogSource() {
        return this.f3967a;
    }
}
