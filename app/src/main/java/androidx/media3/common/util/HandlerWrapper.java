package androidx.media3.common.util;

import android.os.Looper;

@UnstableApi
/* loaded from: classes.dex */
public interface HandlerWrapper {

    public interface Message {
        HandlerWrapper getTarget();

        void sendToTarget();
    }

    Looper getLooper();

    boolean hasMessages(int i2);

    Message obtainMessage(int i2);

    Message obtainMessage(int i2, int i7, int i8);

    Message obtainMessage(int i2, int i7, int i8, Object obj);

    Message obtainMessage(int i2, Object obj);

    boolean post(Runnable runnable);

    boolean postAtFrontOfQueue(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j7);

    void removeCallbacks(Runnable runnable);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i2);

    boolean sendEmptyMessage(int i2);

    boolean sendEmptyMessageAtTime(int i2, long j7);

    boolean sendEmptyMessageDelayed(int i2, int i7);

    boolean sendMessageAtFrontOfQueue(Message message);
}
