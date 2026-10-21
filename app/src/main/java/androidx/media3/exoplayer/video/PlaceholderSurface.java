package androidx.media3.exoplayer.video;

import P3.v;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.media3.common.util.EGLSurfaceTexture;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class PlaceholderSurface extends Surface {
    private static final String TAG = "PlaceholderSurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final PlaceholderSurfaceThread thread;
    private boolean threadReleased;

    public static class PlaceholderSurfaceThread extends HandlerThread implements Handler.Callback {
        private static final int MSG_INIT = 1;
        private static final int MSG_RELEASE = 2;
        private EGLSurfaceTexture eglSurfaceTexture;
        private Handler handler;
        private Error initError;
        private RuntimeException initException;
        private PlaceholderSurface surface;

        public PlaceholderSurfaceThread() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void initInternal(int i2) throws GlUtil.GlException {
            v.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.init(i2);
            this.surface = new PlaceholderSurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i2 != 0);
        }

        private void releaseInternal() {
            v.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.release();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            try {
                if (i2 != 1) {
                    if (i2 != 2) {
                        return true;
                    }
                    try {
                        releaseInternal();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    initInternal(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (GlUtil.GlException e3) {
                    Log.e(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e3);
                    this.initException = new IllegalStateException(e3);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e7) {
                    Log.e(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e7);
                    this.initError = e7;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e8) {
                    Log.e(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e8);
                    this.initException = e8;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }

        public PlaceholderSurface init(int i2) {
            boolean z6;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.handler = handler;
            this.eglSurfaceTexture = new EGLSurfaceTexture(handler);
            synchronized (this) {
                z6 = false;
                this.handler.obtainMessage(1, i2, 0).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z6 = true;
                    }
                }
            }
            if (z6) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.initException;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.initError;
            if (error == null) {
                return (PlaceholderSurface) v.checkNotNull(this.surface);
            }
            throw error;
        }

        public void release() {
            v.checkNotNull(this.handler);
            this.handler.sendEmptyMessage(2);
        }
    }

    private static int getSecureMode(Context context) {
        try {
            if (GlUtil.isProtectedContentExtensionSupported(context)) {
                return GlUtil.isSurfacelessContextExtensionSupported() ? 1 : 2;
            }
            return 0;
        } catch (GlUtil.GlException e3) {
            Log.e(TAG, "Failed to determine secure mode due to GL error: " + e3.getMessage());
            return 0;
        }
    }

    public static synchronized boolean isSecureSupported(Context context) {
        boolean z6;
        synchronized (PlaceholderSurface.class) {
            try {
                if (!secureModeInitialized) {
                    secureMode = getSecureMode(context);
                    secureModeInitialized = true;
                }
                z6 = secureMode != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    public static PlaceholderSurface newInstance(Context context, boolean z6) {
        v.checkState(!z6 || isSecureSupported(context));
        return new PlaceholderSurfaceThread().init(z6 ? secureMode : 0);
    }

    @Deprecated
    public static PlaceholderSurface newInstanceV17(Context context, boolean z6) {
        return newInstance(context, z6);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            try {
                if (!this.threadReleased) {
                    this.thread.release();
                    this.threadReleased = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture, boolean z6) {
        super(surfaceTexture);
        this.thread = placeholderSurfaceThread;
        this.secure = z6;
    }
}
