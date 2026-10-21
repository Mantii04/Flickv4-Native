package androidx.media3.exoplayer.upstream;

import P3.v;
import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import java.io.IOException;

@UnstableApi
/* loaded from: classes.dex */
public final class Loader implements LoaderErrorThrower {
    private static final int ACTION_TYPE_DONT_RETRY = 2;
    private static final int ACTION_TYPE_DONT_RETRY_FATAL = 3;
    private static final int ACTION_TYPE_RETRY = 0;
    private static final int ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT = 1;
    public static final LoadErrorAction DONT_RETRY;
    public static final LoadErrorAction DONT_RETRY_FATAL;
    public static final LoadErrorAction RETRY;
    public static final LoadErrorAction RETRY_RESET_ERROR_COUNT;
    private static final String THREAD_NAME_PREFIX = "ExoPlayer:Loader:";
    private LoadTask<? extends Loadable> currentTask;
    private final ReleasableExecutor downloadExecutor;
    private IOException fatalError;

    public interface Callback<T extends Loadable> {
        void onLoadCanceled(T t6, long j7, long j8, boolean z6);

        void onLoadCompleted(T t6, long j7, long j8);

        LoadErrorAction onLoadError(T t6, long j7, long j8, IOException iOException, int i2);

        void onLoadStarted(T t6, long j7, long j8, int i2);
    }

    public static final class LoadErrorAction {
        private final long retryDelayMillis;
        private final int type;

        public boolean isRetry() {
            int i2 = this.type;
            return i2 == 0 || i2 == 1;
        }

        private LoadErrorAction(int i2, long j7) {
            this.type = i2;
            this.retryDelayMillis = j7;
        }
    }

    @SuppressLint({"HandlerLeak"})
    public final class LoadTask<T extends Loadable> extends Handler implements Runnable {
        private static final int MSG_FATAL_ERROR = 4;
        private static final int MSG_FINISH = 2;
        private static final int MSG_IO_EXCEPTION = 3;
        private static final int MSG_START = 1;
        private static final String TAG = "LoadTask";
        private Callback<T> callback;
        private boolean canceled;
        private IOException currentError;
        public final int defaultMinRetryCount;
        private int errorCount;
        private Thread executorThread;
        private final T loadable;
        private volatile boolean released;
        private final long startTimeMs;

        public LoadTask(Looper looper, T t6, Callback<T> callback, int i2, long j7) {
            super(looper);
            this.loadable = t6;
            this.callback = callback;
            this.defaultMinRetryCount = i2;
            this.startTimeMs = j7;
        }

        private void execute() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ((Callback) v.checkNotNull(this.callback)).onLoadStarted(this.loadable, elapsedRealtime, elapsedRealtime - this.startTimeMs, this.errorCount);
            this.currentError = null;
            Loader.this.downloadExecutor.execute((Runnable) v.checkNotNull(Loader.this.currentTask));
        }

        private void finish() {
            Loader.this.currentTask = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z6) {
            this.released = z6;
            this.currentError = null;
            if (hasMessages(1)) {
                this.canceled = true;
                removeMessages(1);
                if (!z6) {
                    sendEmptyMessage(2);
                }
            } else {
                synchronized (this) {
                    try {
                        this.canceled = true;
                        this.loadable.cancelLoad();
                        Thread thread = this.executorThread;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z6) {
                finish();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((Callback) v.checkNotNull(this.callback)).onLoadCanceled(this.loadable, elapsedRealtime, elapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.released) {
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                execute();
                return;
            }
            if (i2 == 4) {
                throw ((Error) message.obj);
            }
            finish();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j7 = elapsedRealtime - this.startTimeMs;
            Callback callback = (Callback) v.checkNotNull(this.callback);
            if (this.canceled) {
                callback.onLoadCanceled(this.loadable, elapsedRealtime, j7, false);
                return;
            }
            int i7 = message.what;
            if (i7 == 2) {
                try {
                    callback.onLoadCompleted(this.loadable, elapsedRealtime, j7);
                    return;
                } catch (RuntimeException e3) {
                    Log.e(TAG, "Unexpected exception handling load completed", e3);
                    Loader.this.fatalError = new UnexpectedLoaderException(e3);
                    return;
                }
            }
            if (i7 != 3) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.currentError = iOException;
            int i8 = this.errorCount + 1;
            this.errorCount = i8;
            LoadErrorAction onLoadError = callback.onLoadError(this.loadable, elapsedRealtime, j7, iOException, i8);
            if (onLoadError.type == 3) {
                Loader.this.fatalError = this.currentError;
            } else if (onLoadError.type != 2) {
                if (onLoadError.type == 1) {
                    this.errorCount = 1;
                }
                start(onLoadError.retryDelayMillis != C.TIME_UNSET ? onLoadError.retryDelayMillis : getRetryDelayMillis());
            }
        }

        public void maybeThrowError(int i2) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i2) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z6;
            try {
                synchronized (this) {
                    z6 = this.canceled;
                    this.executorThread = Thread.currentThread();
                }
                if (!z6) {
                    TraceUtil.beginSection("load:".concat(this.loadable.getClass().getSimpleName()));
                    try {
                        this.loadable.load();
                        TraceUtil.endSection();
                    } catch (Throwable th) {
                        TraceUtil.endSection();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e3) {
                if (this.released) {
                    return;
                }
                obtainMessage(3, e3).sendToTarget();
            } catch (Exception e7) {
                if (this.released) {
                    return;
                }
                Log.e(TAG, "Unexpected exception loading stream", e7);
                obtainMessage(3, new UnexpectedLoaderException(e7)).sendToTarget();
            } catch (OutOfMemoryError e8) {
                if (this.released) {
                    return;
                }
                Log.e(TAG, "OutOfMemory error loading stream", e8);
                obtainMessage(3, new UnexpectedLoaderException(e8)).sendToTarget();
            } catch (Error e9) {
                if (!this.released) {
                    Log.e(TAG, "Unexpected error loading stream", e9);
                    obtainMessage(4, e9).sendToTarget();
                }
                throw e9;
            }
        }

        public void start(long j7) {
            v.checkState(Loader.this.currentTask == null);
            Loader.this.currentTask = this;
            if (j7 > 0) {
                sendEmptyMessageDelayed(1, j7);
            } else {
                execute();
            }
        }
    }

    public interface Loadable {
        void cancelLoad();

        void load() throws IOException;
    }

    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    public static final class ReleaseTask implements Runnable {
        private final ReleaseCallback callback;

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }
    }

    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedLoaderException(java.lang.Throwable r4) {
            /*
                r3 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "Unexpected "
                r0.<init>(r1)
                java.lang.Class r1 = r4.getClass()
                java.lang.String r1 = r1.getSimpleName()
                r0.append(r1)
                java.lang.String r1 = r4.getMessage()
                if (r1 == 0) goto L2b
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = ": "
                r1.<init>(r2)
                java.lang.String r2 = r4.getMessage()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                goto L2d
            L2b:
                java.lang.String r1 = ""
            L2d:
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r3.<init>(r0, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    static {
        long j7 = C.TIME_UNSET;
        RETRY = createRetryAction(false, C.TIME_UNSET);
        RETRY_RESET_ERROR_COUNT = createRetryAction(true, C.TIME_UNSET);
        DONT_RETRY = new LoadErrorAction(2, j7);
        DONT_RETRY_FATAL = new LoadErrorAction(3, j7);
    }

    public Loader(String str) {
        this(ReleasableExecutor.CC.a(Util.newSingleThreadExecutor(THREAD_NAME_PREFIX + str), new h()));
    }

    public static LoadErrorAction createRetryAction(boolean z6, long j7) {
        return new LoadErrorAction(z6 ? 1 : 0, j7);
    }

    public void cancelLoading() {
        ((LoadTask) v.checkNotNull(this.currentTask)).cancel(false);
    }

    public void clearFatalError() {
        this.fatalError = null;
    }

    public boolean hasFatalError() {
        return this.fatalError != null;
    }

    public boolean isLoading() {
        return this.currentTask != null;
    }

    @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
    public void maybeThrowError() throws IOException {
        maybeThrowError(Integer.MIN_VALUE);
    }

    public void release() {
        release(null);
    }

    public <T extends Loadable> long startLoading(T t6, Callback<T> callback, int i2) {
        Looper looper = (Looper) v.checkNotNull(Looper.myLooper());
        this.fatalError = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(looper, t6, callback, i2, elapsedRealtime).start(0L);
        return elapsedRealtime;
    }

    @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
    public void maybeThrowError(int i2) throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            if (i2 == Integer.MIN_VALUE) {
                i2 = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i2);
        }
    }

    public void release(ReleaseCallback releaseCallback) {
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (releaseCallback != null) {
            this.downloadExecutor.execute(new ReleaseTask(releaseCallback));
        }
        this.downloadExecutor.release();
    }

    public Loader(ReleasableExecutor releasableExecutor) {
        this.downloadExecutor = releasableExecutor;
    }
}
