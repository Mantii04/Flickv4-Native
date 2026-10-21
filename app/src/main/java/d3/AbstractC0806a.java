package d3;

import A.i;
import android.util.SparseArray;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

/* renamed from: d3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0806a {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f13580a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f13581b;

    static {
        HashMap hashMap = new HashMap();
        f13581b = hashMap;
        hashMap.put(Priority.f9478b, 0);
        hashMap.put(Priority.f9479e, 1);
        hashMap.put(Priority.f9480f, 2);
        for (Priority priority : hashMap.keySet()) {
            f13580a.append(((Integer) f13581b.get(priority)).intValue(), priority);
        }
    }

    public static int toInt(Priority priority) {
        Integer num = (Integer) f13581b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    public static Priority valueOf(int i2) {
        Priority priority = (Priority) f13580a.get(i2);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException(i.f(i2, "Unknown Priority for value "));
    }
}
