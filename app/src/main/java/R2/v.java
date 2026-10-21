package R2;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.util.List;

/* loaded from: classes.dex */
public abstract class v {
    public static v create(List<B> list) {
        return new l(list);
    }

    public static DataEncoder createDataEncoder() {
        return new JsonDataEncoderBuilder().configureWith(i.f3050a).ignoreNullValues(true).build();
    }

    @Encodable.Field(name = "logRequest")
    public abstract List<B> getLogRequests();
}
