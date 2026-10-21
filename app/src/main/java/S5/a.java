package S5;

import R5.E0;
import W5.v;
import android.os.Looper;
import java.util.List;

/* loaded from: classes2.dex */
public final class a implements v {
    @Override // W5.v
    public E0 createDispatcher(List<? extends v> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new c(e.asHandler(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // W5.v
    public int getLoadPriority() {
        return 1073741823;
    }

    @Override // W5.v
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }
}
