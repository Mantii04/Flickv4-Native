package u0;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.decoder.DecoderException;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public abstract class j implements InterfaceC1664e {
    private int availableInputBufferCount;
    private final C1665f[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final AbstractC1667h[] availableOutputBuffers;
    private final Thread decodeThread;
    private C1665f dequeuedInputBuffer;
    private DecoderException exception;
    private boolean flushed;
    private final Object lock = new Object();
    private long outputStartTimeUs = C.TIME_UNSET;
    private final ArrayDeque<C1665f> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<AbstractC1667h> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    public j(C1665f[] c1665fArr, AbstractC1667h[] abstractC1667hArr) {
        this.availableInputBuffers = c1665fArr;
        this.availableInputBufferCount = c1665fArr.length;
        for (int i2 = 0; i2 < this.availableInputBufferCount; i2++) {
            this.availableInputBuffers[i2] = createInputBuffer();
        }
        this.availableOutputBuffers = abstractC1667hArr;
        this.availableOutputBufferCount = abstractC1667hArr.length;
        for (int i7 = 0; i7 < this.availableOutputBufferCount; i7++) {
            this.availableOutputBuffers[i7] = createOutputBuffer();
        }
        C1668i c1668i = new C1668i(this);
        this.decodeThread = c1668i;
        c1668i.start();
    }

    public static void access$000(j jVar) {
        jVar.getClass();
        do {
            try {
            } catch (InterruptedException e3) {
                throw new IllegalStateException(e3);
            }
        } while (jVar.a());
    }

    public final boolean a() {
        DecoderException createUnexpectedDecodeException;
        synchronized (this.lock) {
            while (!this.released) {
                try {
                    if (!this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0) {
                        break;
                    }
                    this.lock.wait();
                } finally {
                }
            }
            if (this.released) {
                return false;
            }
            C1665f removeFirst = this.queuedInputBuffers.removeFirst();
            AbstractC1667h[] abstractC1667hArr = this.availableOutputBuffers;
            int i2 = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i2;
            AbstractC1667h abstractC1667h = abstractC1667hArr[i2];
            boolean z6 = this.flushed;
            this.flushed = false;
            if (removeFirst.isEndOfStream()) {
                abstractC1667h.addFlag(4);
            } else {
                abstractC1667h.timeUs = removeFirst.timeUs;
                if (removeFirst.isFirstSample()) {
                    abstractC1667h.addFlag(C.BUFFER_FLAG_FIRST_SAMPLE);
                }
                if (!isAtLeastOutputStartTimeUs(removeFirst.timeUs)) {
                    abstractC1667h.shouldBeSkipped = true;
                }
                try {
                    createUnexpectedDecodeException = decode(removeFirst, abstractC1667h, z6);
                } catch (OutOfMemoryError e3) {
                    createUnexpectedDecodeException = createUnexpectedDecodeException(e3);
                } catch (RuntimeException e7) {
                    createUnexpectedDecodeException = createUnexpectedDecodeException(e7);
                }
                if (createUnexpectedDecodeException != null) {
                    synchronized (this.lock) {
                        this.exception = createUnexpectedDecodeException;
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                try {
                    if (this.flushed) {
                        abstractC1667h.release();
                    } else if (abstractC1667h.shouldBeSkipped) {
                        this.skippedOutputBufferCount++;
                        abstractC1667h.release();
                    } else {
                        abstractC1667h.skippedOutputBufferCount = this.skippedOutputBufferCount;
                        this.skippedOutputBufferCount = 0;
                        this.queuedOutputBuffers.addLast(abstractC1667h);
                    }
                    removeFirst.clear();
                    C1665f[] c1665fArr = this.availableInputBuffers;
                    int i7 = this.availableInputBufferCount;
                    this.availableInputBufferCount = i7 + 1;
                    c1665fArr[i7] = removeFirst;
                } finally {
                }
            }
            return true;
        }
    }

    public abstract C1665f createInputBuffer();

    public abstract AbstractC1667h createOutputBuffer();

    public abstract DecoderException createUnexpectedDecodeException(Throwable th);

    public abstract DecoderException decode(C1665f c1665f, AbstractC1667h abstractC1667h, boolean z6);

    @Override // u0.InterfaceC1664e
    public final void flush() {
        synchronized (this.lock) {
            try {
                this.flushed = true;
                this.skippedOutputBufferCount = 0;
                C1665f c1665f = this.dequeuedInputBuffer;
                if (c1665f != null) {
                    c1665f.clear();
                    C1665f[] c1665fArr = this.availableInputBuffers;
                    int i2 = this.availableInputBufferCount;
                    this.availableInputBufferCount = i2 + 1;
                    c1665fArr[i2] = c1665f;
                    this.dequeuedInputBuffer = null;
                }
                while (!this.queuedInputBuffers.isEmpty()) {
                    C1665f removeFirst = this.queuedInputBuffers.removeFirst();
                    removeFirst.clear();
                    C1665f[] c1665fArr2 = this.availableInputBuffers;
                    int i7 = this.availableInputBufferCount;
                    this.availableInputBufferCount = i7 + 1;
                    c1665fArr2[i7] = removeFirst;
                }
                while (!this.queuedOutputBuffers.isEmpty()) {
                    this.queuedOutputBuffers.removeFirst().release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean isAtLeastOutputStartTimeUs(long j7) {
        boolean z6;
        synchronized (this.lock) {
            long j8 = this.outputStartTimeUs;
            z6 = j8 == C.TIME_UNSET || j7 >= j8;
        }
        return z6;
    }

    @Override // u0.InterfaceC1664e
    public void release() {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    public void releaseOutputBuffer(AbstractC1667h abstractC1667h) {
        synchronized (this.lock) {
            abstractC1667h.clear();
            AbstractC1667h[] abstractC1667hArr = this.availableOutputBuffers;
            int i2 = this.availableOutputBufferCount;
            this.availableOutputBufferCount = i2 + 1;
            abstractC1667hArr[i2] = abstractC1667h;
            if (!this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0) {
                this.lock.notify();
            }
        }
    }

    public final void setInitialInputBufferSize(int i2) {
        v.checkState(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (C1665f c1665f : this.availableInputBuffers) {
            c1665f.ensureSpaceForWrite(i2);
        }
    }

    @Override // u0.InterfaceC1664e
    public final void setOutputStartTimeUs(long j7) {
        boolean z6;
        synchronized (this.lock) {
            try {
                if (this.availableInputBufferCount != this.availableInputBuffers.length && !this.flushed) {
                    z6 = false;
                    v.checkState(z6);
                    this.outputStartTimeUs = j7;
                }
                z6 = true;
                v.checkState(z6);
                this.outputStartTimeUs = j7;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // u0.InterfaceC1664e
    public final C1665f dequeueInputBuffer() throws DecoderException {
        C1665f c1665f;
        synchronized (this.lock) {
            try {
                DecoderException decoderException = this.exception;
                if (decoderException != null) {
                    throw decoderException;
                }
                v.checkState(this.dequeuedInputBuffer == null);
                int i2 = this.availableInputBufferCount;
                if (i2 == 0) {
                    c1665f = null;
                } else {
                    C1665f[] c1665fArr = this.availableInputBuffers;
                    int i7 = i2 - 1;
                    this.availableInputBufferCount = i7;
                    c1665f = c1665fArr[i7];
                }
                this.dequeuedInputBuffer = c1665f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1665f;
    }

    @Override // u0.InterfaceC1664e
    public final AbstractC1667h dequeueOutputBuffer() throws DecoderException {
        synchronized (this.lock) {
            try {
                DecoderException decoderException = this.exception;
                if (decoderException != null) {
                    throw decoderException;
                }
                if (this.queuedOutputBuffers.isEmpty()) {
                    return null;
                }
                return this.queuedOutputBuffers.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // u0.InterfaceC1664e
    public final void queueInputBuffer(C1665f c1665f) throws DecoderException {
        synchronized (this.lock) {
            try {
                DecoderException decoderException = this.exception;
                if (decoderException != null) {
                    throw decoderException;
                }
                v.checkArgument(c1665f == this.dequeuedInputBuffer);
                this.queuedInputBuffers.addLast(c1665f);
                if (!this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0) {
                    this.lock.notify();
                }
                this.dequeuedInputBuffer = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
