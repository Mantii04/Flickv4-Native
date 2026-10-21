package B1;

import android.content.Context;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class I {
    public static I getInstance(Context context) {
        return C1.G.getInstance(context);
    }

    public static void initialize(Context context, C0023c c0023c) {
        C1.G.initialize(context, c0023c);
    }

    public abstract B cancelUniqueWork(String str);

    public final B enqueue(L l7) {
        return enqueue(Collections.singletonList(l7));
    }

    public abstract B enqueue(List<? extends L> list);

    public abstract B enqueueUniquePeriodicWork(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, E e3);

    public B enqueueUniqueWork(String str, ExistingWorkPolicy existingWorkPolicy, w wVar) {
        return enqueueUniqueWork(str, existingWorkPolicy, Collections.singletonList(wVar));
    }

    public abstract B enqueueUniqueWork(String str, ExistingWorkPolicy existingWorkPolicy, List<w> list);
}
