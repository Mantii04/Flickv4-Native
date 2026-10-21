package androidx.media3.common.util;

import P3.p;
import P3.v;
import android.os.Looper;

@UnstableApi
/* loaded from: classes.dex */
public final class BackgroundThreadStateHandler<T> {
    private final HandlerWrapper backgroundHandler;
    private T backgroundState;
    private final HandlerWrapper foregroundHandler;
    private T foregroundState;
    private final StateChangeListener<T> onStateChanged;
    private int pendingOperations;

    public interface StateChangeListener<T> {
        void onStateChanged(T t6, T t7);
    }

    public BackgroundThreadStateHandler(T t6, Looper looper, Looper looper2, Clock clock, StateChangeListener<T> stateChangeListener) {
        this.backgroundHandler = clock.createHandler(looper, null);
        this.foregroundHandler = clock.createHandler(looper2, null);
        this.foregroundState = t6;
        this.backgroundState = t6;
        this.onStateChanged = stateChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$setStateInBackground$2(Object obj) {
        if (this.pendingOperations == 0) {
            updateStateInForeground(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$updateStateAsync$0(Object obj) {
        int i2 = this.pendingOperations - 1;
        this.pendingOperations = i2;
        if (i2 == 0) {
            updateStateInForeground(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStateAsync$1(p pVar) {
        T t6 = (T) pVar.apply(this.backgroundState);
        this.backgroundState = t6;
        runInForeground(new a(this, t6, 1));
    }

    private void runInForeground(Runnable runnable) {
        if (this.foregroundHandler.getLooper().getThread().isAlive()) {
            this.foregroundHandler.post(runnable);
        }
    }

    private void updateStateInForeground(T t6) {
        T t7 = this.foregroundState;
        this.foregroundState = t6;
        if (t7.equals(t6)) {
            return;
        }
        this.onStateChanged.onStateChanged(t7, t6);
    }

    public T get() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == this.foregroundHandler.getLooper()) {
            return this.foregroundState;
        }
        v.checkState(myLooper == this.backgroundHandler.getLooper());
        return this.backgroundState;
    }

    public void runInBackground(Runnable runnable) {
        if (this.backgroundHandler.getLooper().getThread().isAlive()) {
            this.backgroundHandler.post(runnable);
        }
    }

    public void setStateInBackground(T t6) {
        this.backgroundState = t6;
        runInForeground(new a(this, t6, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateStateAsync(p pVar, p pVar2) {
        v.checkState(Looper.myLooper() == this.foregroundHandler.getLooper());
        this.pendingOperations++;
        runInBackground(new g(3, this, pVar2));
        updateStateInForeground(pVar.apply(this.foregroundState));
    }
}
