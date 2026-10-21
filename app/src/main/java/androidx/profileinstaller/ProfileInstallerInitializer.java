package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import e.RunnableC0844x;
import java.util.Collections;
import java.util.List;
import l1.AbstractC1213i;
import l1.C1215k;
import u1.InterfaceC1669a;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements InterfaceC1669a {
    @Override // u1.InterfaceC1669a
    public List<Class<? extends InterfaceC1669a>> dependencies() {
        return Collections.EMPTY_LIST;
    }

    @Override // u1.InterfaceC1669a
    public C1215k create(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new C1215k();
        }
        AbstractC1213i.postFrameCallback(new RunnableC0844x(this, context.getApplicationContext()));
        return new C1215k();
    }
}
