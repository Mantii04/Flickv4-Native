package n1;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final String f18866a;

    /* renamed from: b, reason: collision with root package name */
    public final u f18867b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f18868c;

    /* renamed from: d, reason: collision with root package name */
    public int f18869d;

    /* renamed from: e, reason: collision with root package name */
    public r f18870e;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC1374m f18871f;

    /* renamed from: g, reason: collision with root package name */
    public final x f18872g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f18873h;

    /* renamed from: i, reason: collision with root package name */
    public final v f18874i;

    /* renamed from: j, reason: collision with root package name */
    public final v f18875j;

    /* JADX WARN: Type inference failed for: r0v5, types: [n1.v] */
    /* JADX WARN: Type inference failed for: r0v6, types: [n1.v] */
    public z(Context context, String name, Intent serviceIntent, u invalidationTracker, Executor executor) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        kotlin.jvm.internal.j.checkNotNullParameter(serviceIntent, "serviceIntent");
        kotlin.jvm.internal.j.checkNotNullParameter(invalidationTracker, "invalidationTracker");
        kotlin.jvm.internal.j.checkNotNullParameter(executor, "executor");
        this.f18866a = name;
        this.f18867b = invalidationTracker;
        this.f18868c = executor;
        Context applicationContext = context.getApplicationContext();
        this.f18872g = new x(this);
        this.f18873h = new AtomicBoolean(false);
        y yVar = new y(this);
        final int i2 = 0;
        this.f18874i = new Runnable(this) { // from class: n1.v

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ z f18862e;

            {
                this.f18862e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        z this$0 = this.f18862e;
                        kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                        try {
                            InterfaceC1374m interfaceC1374m = this$0.f18871f;
                            if (interfaceC1374m != null) {
                                this$0.f18869d = interfaceC1374m.registerCallback(this$0.f18872g, this$0.f18866a);
                                this$0.f18867b.addObserver(this$0.getObserver());
                                break;
                            }
                        } catch (RemoteException e3) {
                            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e3);
                            return;
                        }
                        break;
                    default:
                        z this$02 = this.f18862e;
                        kotlin.jvm.internal.j.checkNotNullParameter(this$02, "this$0");
                        this$02.f18867b.removeObserver(this$02.getObserver());
                        break;
                }
            }
        };
        final int i7 = 1;
        this.f18875j = new Runnable(this) { // from class: n1.v

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ z f18862e;

            {
                this.f18862e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i7) {
                    case 0:
                        z this$0 = this.f18862e;
                        kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                        try {
                            InterfaceC1374m interfaceC1374m = this$0.f18871f;
                            if (interfaceC1374m != null) {
                                this$0.f18869d = interfaceC1374m.registerCallback(this$0.f18872g, this$0.f18866a);
                                this$0.f18867b.addObserver(this$0.getObserver());
                                break;
                            }
                        } catch (RemoteException e3) {
                            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e3);
                            return;
                        }
                        break;
                    default:
                        z this$02 = this.f18862e;
                        kotlin.jvm.internal.j.checkNotNullParameter(this$02, "this$0");
                        this$02.f18867b.removeObserver(this$02.getObserver());
                        break;
                }
            }
        };
        Object[] array = invalidationTracker.getTableIdLookup$room_runtime_release().keySet().toArray(new String[0]);
        kotlin.jvm.internal.j.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        setObserver(new w(this, (String[]) array));
        applicationContext.bindService(serviceIntent, yVar, 1);
    }

    public final int getClientId() {
        return this.f18869d;
    }

    public final Executor getExecutor() {
        return this.f18868c;
    }

    public final u getInvalidationTracker() {
        return this.f18867b;
    }

    public final r getObserver() {
        r rVar = this.f18870e;
        if (rVar != null) {
            return rVar;
        }
        kotlin.jvm.internal.j.throwUninitializedPropertyAccessException("observer");
        return null;
    }

    public final Runnable getRemoveObserverRunnable() {
        return this.f18875j;
    }

    public final InterfaceC1374m getService() {
        return this.f18871f;
    }

    public final Runnable getSetUpRunnable() {
        return this.f18874i;
    }

    public final AtomicBoolean getStopped() {
        return this.f18873h;
    }

    public final void setObserver(r rVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(rVar, "<set-?>");
        this.f18870e = rVar;
    }

    public final void setService(InterfaceC1374m interfaceC1374m) {
        this.f18871f = interfaceC1374m;
    }
}
