package androidx.work;

import B1.C0022b;
import B1.I;
import B1.t;
import android.content.Context;
import java.util.Collections;
import java.util.List;
import u1.InterfaceC1669a;

/* loaded from: classes.dex */
public final class WorkManagerInitializer implements InterfaceC1669a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8275a = t.tagWithPrefix("WrkMgrInitializer");

    @Override // u1.InterfaceC1669a
    public List<Class<? extends InterfaceC1669a>> dependencies() {
        return Collections.EMPTY_LIST;
    }

    @Override // u1.InterfaceC1669a
    public I create(Context context) {
        t.get().debug(f8275a, "Initializing WorkManager with default configuration.");
        I.initialize(context, new C0022b().build());
        return I.getInstance(context);
    }
}
