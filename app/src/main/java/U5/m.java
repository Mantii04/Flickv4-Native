package U5;

import W5.G;
import kotlinx.coroutines.flow.StateFlowImpl;

/* loaded from: classes2.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static final G f3802a = new G("NONE");

    /* renamed from: b, reason: collision with root package name */
    public static final G f3803b = new G("PENDING");

    public static final <T> k MutableStateFlow(T t6) {
        if (t6 == null) {
            t6 = (T) V5.g.f4031a;
        }
        return new StateFlowImpl(t6);
    }
}
