package I;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class j {
    public static Executor create(Handler handler) {
        return new i(handler);
    }
}
