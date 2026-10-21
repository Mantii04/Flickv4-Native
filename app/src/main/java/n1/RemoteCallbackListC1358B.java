package n1;

import android.os.RemoteCallbackList;
import androidx.room.MultiInstanceInvalidationService;

/* renamed from: n1.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RemoteCallbackListC1358B extends RemoteCallbackList {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f18773a;

    public RemoteCallbackListC1358B(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f18773a = multiInstanceInvalidationService;
    }

    @Override // android.os.RemoteCallbackList
    public void onCallbackDied(InterfaceC1371j callback, Object cookie) {
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        kotlin.jvm.internal.j.checkNotNullParameter(cookie, "cookie");
        this.f18773a.getClientNames$room_runtime_release().remove((Integer) cookie);
    }
}
