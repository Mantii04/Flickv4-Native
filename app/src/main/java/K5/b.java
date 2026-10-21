package K5;

import java.util.Random;

/* loaded from: classes2.dex */
public final class b extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public Random initialValue() {
        return new Random();
    }
}
