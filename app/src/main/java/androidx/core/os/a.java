package androidx.core.os;

import C3.j;
import android.os.OutcomeReceiver;
import y5.InterfaceC1944c;

/* loaded from: classes.dex */
public abstract class a {
    public static final <R, E extends Throwable> OutcomeReceiver asOutcomeReceiver(InterfaceC1944c interfaceC1944c) {
        return j.g(new ContinuationOutcomeReceiver(interfaceC1944c));
    }
}
