package S2;

import android.annotation.SuppressLint;
import com.google.android.datatransport.Priority;

/* loaded from: classes.dex */
public abstract class x {
    @SuppressLint({"DiscouragedApi"})
    public static void sendBlocking(P2.e eVar, Priority priority) {
        if (!(eVar instanceof G)) {
            W2.a.w("ForcedSender", "Expected instance of `TransportImpl`, got `%s`.", eVar);
        } else {
            H.getInstance().getUploader().logAndUpdateState(((G) eVar).f3296a.withPriority(priority), 1);
        }
    }
}
