package androidx.lifecycle;

import android.content.Context;
import java.util.List;
import u1.InterfaceC1669a;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements InterfaceC1669a {
    @Override // u1.InterfaceC1669a
    public List<Class<? extends InterfaceC1669a>> dependencies() {
        return v5.p.emptyList();
    }

    @Override // u1.InterfaceC1669a
    public InterfaceC0561t create(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        androidx.startup.a aVar = androidx.startup.a.getInstance(context);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(aVar, "getInstance(context)");
        if (!aVar.isEagerlyInitialized(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        AbstractC0559q.init(context);
        I i2 = J.f6954r;
        i2.init$lifecycle_process_release(context);
        return i2.get();
    }
}
