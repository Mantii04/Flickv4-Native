package T5;

import androidx.media3.common.util.Log;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;

/* loaded from: classes2.dex */
public abstract class f {
    public static final <E> c Channel(int i2, BufferOverflow bufferOverflow, H5.l lVar) {
        BufferOverflow bufferOverflow2 = BufferOverflow.f17486b;
        if (i2 == -2) {
            return bufferOverflow == bufferOverflow2 ? new BufferedChannel(c.f3729a.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core(), lVar) : new n(1, bufferOverflow, lVar);
        }
        if (i2 != -1) {
            return i2 != 0 ? i2 != Integer.MAX_VALUE ? bufferOverflow == bufferOverflow2 ? new BufferedChannel(i2, lVar) : new n(i2, bufferOverflow, lVar) : new BufferedChannel(Log.LOG_LEVEL_OFF, lVar) : bufferOverflow == bufferOverflow2 ? new BufferedChannel(0, lVar) : new n(1, bufferOverflow, lVar);
        }
        if (bufferOverflow == bufferOverflow2) {
            return new n(1, BufferOverflow.f17487e, lVar);
        }
        throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
    }

    public static /* synthetic */ c Channel$default(int i2, BufferOverflow bufferOverflow, H5.l lVar, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i2 = 0;
        }
        if ((i7 & 2) != 0) {
            bufferOverflow = BufferOverflow.f17486b;
        }
        if ((i7 & 4) != 0) {
            lVar = null;
        }
        return Channel(i2, bufferOverflow, lVar);
    }
}
