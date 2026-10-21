package n1;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.MultiInstanceInvalidationService;

/* renamed from: n1.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC1357A extends AbstractBinderC1373l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f18772a;

    public BinderC1357A(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f18772a = multiInstanceInvalidationService;
    }

    @Override // n1.InterfaceC1374m
    public void broadcastInvalidation(int i2, String[] tables) {
        kotlin.jvm.internal.j.checkNotNullParameter(tables, "tables");
        RemoteCallbackList<InterfaceC1371j> callbackList$room_runtime_release = this.f18772a.getCallbackList$room_runtime_release();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f18772a;
        synchronized (callbackList$room_runtime_release) {
            String str = multiInstanceInvalidationService.getClientNames$room_runtime_release().get(Integer.valueOf(i2));
            if (str == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
                return;
            }
            int beginBroadcast = multiInstanceInvalidationService.getCallbackList$room_runtime_release().beginBroadcast();
            for (int i7 = 0; i7 < beginBroadcast; i7++) {
                try {
                    Object broadcastCookie = multiInstanceInvalidationService.getCallbackList$room_runtime_release().getBroadcastCookie(i7);
                    kotlin.jvm.internal.j.checkNotNull(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                    Integer num = (Integer) broadcastCookie;
                    int intValue = num.intValue();
                    String str2 = multiInstanceInvalidationService.getClientNames$room_runtime_release().get(num);
                    if (i2 != intValue && kotlin.jvm.internal.j.areEqual(str, str2)) {
                        try {
                            multiInstanceInvalidationService.getCallbackList$room_runtime_release().getBroadcastItem(i7).onInvalidation(tables);
                        } catch (RemoteException e3) {
                            Log.w("ROOM", "Error invoking a remote callback", e3);
                        }
                    }
                } finally {
                    multiInstanceInvalidationService.getCallbackList$room_runtime_release().finishBroadcast();
                }
            }
        }
    }

    @Override // n1.InterfaceC1374m
    public int registerCallback(InterfaceC1371j callback, String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        int i2 = 0;
        if (str == null) {
            return 0;
        }
        RemoteCallbackList<InterfaceC1371j> callbackList$room_runtime_release = this.f18772a.getCallbackList$room_runtime_release();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f18772a;
        synchronized (callbackList$room_runtime_release) {
            try {
                multiInstanceInvalidationService.setMaxClientId$room_runtime_release(multiInstanceInvalidationService.getMaxClientId$room_runtime_release() + 1);
                int maxClientId$room_runtime_release = multiInstanceInvalidationService.getMaxClientId$room_runtime_release();
                if (multiInstanceInvalidationService.getCallbackList$room_runtime_release().register(callback, Integer.valueOf(maxClientId$room_runtime_release))) {
                    multiInstanceInvalidationService.getClientNames$room_runtime_release().put(Integer.valueOf(maxClientId$room_runtime_release), str);
                    i2 = maxClientId$room_runtime_release;
                } else {
                    multiInstanceInvalidationService.setMaxClientId$room_runtime_release(multiInstanceInvalidationService.getMaxClientId$room_runtime_release() - 1);
                    multiInstanceInvalidationService.getMaxClientId$room_runtime_release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    public void unregisterCallback(InterfaceC1371j callback, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        RemoteCallbackList<InterfaceC1371j> callbackList$room_runtime_release = this.f18772a.getCallbackList$room_runtime_release();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f18772a;
        synchronized (callbackList$room_runtime_release) {
            multiInstanceInvalidationService.getCallbackList$room_runtime_release().unregister(callback);
            multiInstanceInvalidationService.getClientNames$room_runtime_release().remove(Integer.valueOf(i2));
        }
    }
}
