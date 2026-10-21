package S2;

import java.util.Map;

/* loaded from: classes.dex */
public abstract class t {
    public final t addMetadata(String str, String str2) {
        getAutoMetadata().put(str, str2);
        return this;
    }

    public abstract u build();

    public abstract Map<String, String> getAutoMetadata();

    public abstract t setAutoMetadata(Map<String, String> map);

    public abstract t setCode(Integer num);

    public abstract t setEncodedPayload(s sVar);

    public abstract t setEventMillis(long j7);

    public abstract t setTransportName(String str);

    public abstract t setUptimeMillis(long j7);

    public final t addMetadata(String str, long j7) {
        getAutoMetadata().put(str, String.valueOf(j7));
        return this;
    }

    public final t addMetadata(String str, int i2) {
        getAutoMetadata().put(str, String.valueOf(i2));
        return this;
    }
}
