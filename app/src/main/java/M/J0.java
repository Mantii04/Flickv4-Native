package M;

import android.view.WindowInsets;
import java.util.List;

/* loaded from: classes.dex */
public abstract class J0 {

    /* renamed from: a, reason: collision with root package name */
    public WindowInsets f1935a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1936b;

    public J0(int i2) {
        this.f1936b = i2;
    }

    public final int getDispatchMode() {
        return this.f1936b;
    }

    public abstract void onEnd(S0 s02);

    public abstract void onPrepare(S0 s02);

    public abstract h1 onProgress(h1 h1Var, List<S0> list);

    public abstract I0 onStart(S0 s02, I0 i02);
}
