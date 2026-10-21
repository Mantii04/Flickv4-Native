package androidx.media3.exoplayer.mediacodec;

import P3.v;
import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.n;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import u0.C1663d;

/* loaded from: classes.dex */
class AsynchronousMediaCodecBufferEnqueuer implements MediaCodecBufferEnqueuer {
    private static final int MSG_OPEN_CV = 3;
    private static final int MSG_QUEUE_INPUT_BUFFER = 1;
    private static final int MSG_QUEUE_SECURE_INPUT_BUFFER = 2;
    private static final int MSG_SET_PARAMETERS = 4;
    private final MediaCodec codec;
    private final ConditionVariable conditionVariable;
    private Handler handler;
    private final HandlerThread handlerThread;
    private final AtomicReference<RuntimeException> pendingRuntimeException;
    private boolean started;
    private static final ArrayDeque<MessageParams> MESSAGE_PARAMS_INSTANCE_POOL = new ArrayDeque<>();
    private static final Object QUEUE_SECURE_LOCK = new Object();

    public static class MessageParams {
        public final MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        public int flags;
        public int index;
        public int offset;
        public long presentationTimeUs;
        public int size;

        public void setQueueParams(int i2, int i7, int i8, long j7, int i9) {
            this.index = i2;
            this.offset = i7;
            this.size = i8;
            this.presentationTimeUs = j7;
            this.flags = i9;
        }
    }

    public AsynchronousMediaCodecBufferEnqueuer(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new ConditionVariable());
    }

    private void blockUntilHandlerThreadIsIdle() throws InterruptedException {
        this.conditionVariable.close();
        ((Handler) v.checkNotNull(this.handler)).obtainMessage(3).sendToTarget();
        this.conditionVariable.block();
    }

    private static void copy(C1663d c1663d, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = c1663d.f20237f;
        cryptoInfo.numBytesOfClearData = copy(c1663d.f20235d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = copy(c1663d.f20236e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) v.checkNotNull(copy(c1663d.f20233b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) v.checkNotNull(copy(c1663d.f20232a, cryptoInfo.iv));
        cryptoInfo.mode = c1663d.f20234c;
        if (Build.VERSION.SDK_INT >= 24) {
            n.r();
            cryptoInfo.setPattern(n.i(c1663d.f20238g, c1663d.f20239h));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doHandleMessage(android.os.Message r9) {
        /*
            r8 = this;
            int r2 = r9.what
            r3 = 1
            if (r2 == r3) goto L4d
            r3 = 2
            if (r2 == r3) goto L38
            r3 = 3
            r4 = 0
            if (r2 == r3) goto L32
            r3 = 4
            if (r2 == r3) goto L2a
            java.util.concurrent.atomic.AtomicReference<java.lang.RuntimeException> r2 = r8.pendingRuntimeException
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            int r1 = r9.what
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r3.<init>(r1)
        L1c:
            boolean r1 = r2.compareAndSet(r4, r3)
            if (r1 == 0) goto L23
            goto L61
        L23:
            java.lang.Object r1 = r2.get()
            if (r1 == 0) goto L1c
            goto L61
        L2a:
            java.lang.Object r1 = r9.obj
            android.os.Bundle r1 = (android.os.Bundle) r1
            r8.doSetParameters(r1)
            goto L61
        L32:
            androidx.media3.common.util.ConditionVariable r1 = r8.conditionVariable
            r1.open()
            goto L61
        L38:
            java.lang.Object r1 = r9.obj
            r7 = r1
            androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer$MessageParams r7 = (androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams) r7
            int r1 = r7.index
            int r2 = r7.offset
            android.media.MediaCodec$CryptoInfo r3 = r7.cryptoInfo
            long r4 = r7.presentationTimeUs
            int r6 = r7.flags
            r0 = r8
            r0.doQueueSecureInputBuffer(r1, r2, r3, r4, r6)
        L4b:
            r4 = r7
            goto L61
        L4d:
            java.lang.Object r0 = r9.obj
            r7 = r0
            androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer$MessageParams r7 = (androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams) r7
            int r1 = r7.index
            int r2 = r7.offset
            int r3 = r7.size
            long r4 = r7.presentationTimeUs
            int r6 = r7.flags
            r0 = r8
            r0.doQueueInputBuffer(r1, r2, r3, r4, r6)
            goto L4b
        L61:
            if (r4 == 0) goto L66
            recycleMessageParams(r4)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.doHandleMessage(android.os.Message):void");
    }

    private void doQueueInputBuffer(int i2, int i7, int i8, long j7, int i9) {
        try {
            this.codec.queueInputBuffer(i2, i7, i8, j7, i9);
        } catch (RuntimeException e3) {
            AtomicReference<RuntimeException> atomicReference = this.pendingRuntimeException;
            while (!atomicReference.compareAndSet(null, e3) && atomicReference.get() == null) {
            }
        }
    }

    private void doQueueSecureInputBuffer(int i2, int i7, MediaCodec.CryptoInfo cryptoInfo, long j7, int i8) {
        try {
            synchronized (QUEUE_SECURE_LOCK) {
                this.codec.queueSecureInputBuffer(i2, i7, cryptoInfo, j7, i8);
            }
        } catch (RuntimeException e3) {
            AtomicReference<RuntimeException> atomicReference = this.pendingRuntimeException;
            while (!atomicReference.compareAndSet(null, e3) && atomicReference.get() == null) {
            }
        }
    }

    private void doSetParameters(Bundle bundle) {
        try {
            this.codec.setParameters(bundle);
        } catch (RuntimeException e3) {
            AtomicReference<RuntimeException> atomicReference = this.pendingRuntimeException;
            while (!atomicReference.compareAndSet(null, e3) && atomicReference.get() == null) {
            }
        }
    }

    private void flushHandlerThread() throws InterruptedException {
        ((Handler) v.checkNotNull(this.handler)).removeCallbacksAndMessages(null);
        blockUntilHandlerThreadIsIdle();
    }

    private static MessageParams getMessageParams() {
        ArrayDeque<MessageParams> arrayDeque = MESSAGE_PARAMS_INSTANCE_POOL;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new MessageParams();
                }
                return arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void recycleMessageParams(MessageParams messageParams) {
        ArrayDeque<MessageParams> arrayDeque = MESSAGE_PARAMS_INSTANCE_POOL;
        synchronized (arrayDeque) {
            arrayDeque.add(messageParams);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void flush() {
        if (this.started) {
            try {
                flushHandlerThread();
            } catch (InterruptedException e3) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e3);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void maybeThrowException() {
        RuntimeException andSet = this.pendingRuntimeException.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void queueInputBuffer(int i2, int i7, int i8, long j7, int i9) {
        maybeThrowException();
        MessageParams messageParams = getMessageParams();
        messageParams.setQueueParams(i2, i7, i8, j7, i9);
        ((Handler) Util.castNonNull(this.handler)).obtainMessage(1, messageParams).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void queueSecureInputBuffer(int i2, int i7, C1663d c1663d, long j7, int i8) {
        maybeThrowException();
        MessageParams messageParams = getMessageParams();
        messageParams.setQueueParams(i2, i7, 0, j7, i8);
        copy(c1663d, messageParams.cryptoInfo);
        ((Handler) Util.castNonNull(this.handler)).obtainMessage(2, messageParams).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void setParameters(Bundle bundle) {
        maybeThrowException();
        ((Handler) Util.castNonNull(this.handler)).obtainMessage(4, bundle).sendToTarget();
    }

    public void setPendingRuntimeException(RuntimeException runtimeException) {
        this.pendingRuntimeException.set(runtimeException);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void shutdown() {
        if (this.started) {
            flush();
            this.handlerThread.quit();
        }
        this.started = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void start() {
        if (this.started) {
            return;
        }
        this.handlerThread.start();
        this.handler = new Handler(this.handlerThread.getLooper()) { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AsynchronousMediaCodecBufferEnqueuer.this.doHandleMessage(message);
            }
        };
        this.started = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public void waitUntilQueueingComplete() throws InterruptedException {
        blockUntilHandlerThreadIsIdle();
    }

    public AsynchronousMediaCodecBufferEnqueuer(MediaCodec mediaCodec, HandlerThread handlerThread, ConditionVariable conditionVariable) {
        this.codec = mediaCodec;
        this.handlerThread = handlerThread;
        this.conditionVariable = conditionVariable;
        this.pendingRuntimeException = new AtomicReference<>();
    }

    private static int[] copy(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 != null && iArr2.length >= iArr.length) {
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    private static byte[] copy(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 != null && bArr2.length >= bArr.length) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
