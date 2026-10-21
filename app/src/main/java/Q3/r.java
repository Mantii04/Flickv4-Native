package Q3;

import androidx.media3.common.util.Log;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class r {
    public static int a(int i2, int i7) {
        if (i7 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i7 <= i2) {
            return i2;
        }
        int i8 = i2 + (i2 >> 1) + 1;
        if (i8 < i7) {
            i8 = Integer.highestOneBit(i7 - 1) << 1;
        }
        return i8 < 0 ? Log.LOG_LEVEL_OFF : i8;
    }

    public abstract r add(Object obj);

    public r addAll(Iterable<Object> iterable) {
        Iterator<Object> it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return this;
    }

    public r addAll(Iterator<Object> it) {
        while (it.hasNext()) {
            add(it.next());
        }
        return this;
    }
}
