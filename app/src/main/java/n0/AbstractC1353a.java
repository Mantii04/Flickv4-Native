package n0;

import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.j0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* renamed from: n0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1353a {
    public static <T extends InterfaceC0561t & j0> AbstractC1353a getInstance(T t6) {
        return new C1356d(t6, t6.getViewModelStore());
    }

    @Deprecated
    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract void markForRedelivery();
}
