package k1;

import android.net.Uri;
import android.view.InputEvent;
import y5.InterfaceC1944c;

/* renamed from: k1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1093d {

    /* renamed from: a, reason: collision with root package name */
    public static final C1092c f17249a = new C1092c(null);

    public abstract Object deleteRegistrations(AbstractC1090a abstractC1090a, InterfaceC1944c interfaceC1944c);

    public abstract Object getMeasurementApiStatus(InterfaceC1944c interfaceC1944c);

    public abstract Object registerSource(Uri uri, InputEvent inputEvent, InterfaceC1944c interfaceC1944c);

    public abstract Object registerTrigger(Uri uri, InterfaceC1944c interfaceC1944c);

    public abstract Object registerWebSource(AbstractC1094e abstractC1094e, InterfaceC1944c interfaceC1944c);

    public abstract Object registerWebTrigger(AbstractC1095f abstractC1095f, InterfaceC1944c interfaceC1944c);
}
