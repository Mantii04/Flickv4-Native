package T2;

import android.content.Context;
import c3.InterfaceC0724a;

/* loaded from: classes.dex */
public abstract class j {
    public static j create(Context context, InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, String str) {
        return new d(context, interfaceC0724a, interfaceC0724a2, str);
    }

    public abstract Context getApplicationContext();

    public abstract String getBackendName();

    public abstract InterfaceC0724a getMonotonicClock();

    public abstract InterfaceC0724a getWallClock();
}
