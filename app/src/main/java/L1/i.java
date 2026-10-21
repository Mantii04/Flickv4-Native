package L1;

import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.google.firebase.remoteconfig.internal.ConfigStorageClient;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1875b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1876e;

    public /* synthetic */ i(Object obj, int i2) {
        this.f1875b = i2;
        this.f1876e = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void deleteFirebaseInstallationId;
        switch (this.f1875b) {
            case 0:
                k this$0 = (k) this.f1876e;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                return Integer.valueOf(l.access$nextId(this$0.f1880a, "next_alarm_manager_id"));
            case 1:
                deleteFirebaseInstallationId = ((FirebaseInstallations) this.f1876e).deleteFirebaseInstallationId();
                return deleteFirebaseInstallationId;
            case 2:
                return ((RemoteConfigComponent) this.f1876e).getDefault();
            default:
                return ((ConfigStorageClient) this.f1876e).read();
        }
    }
}
