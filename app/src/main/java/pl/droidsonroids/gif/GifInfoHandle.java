package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.os.Build;
import android.system.Os;
import java.io.FileDescriptor;
import java.io.IOException;

/* loaded from: classes2.dex */
final class GifInfoHandle {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f19518b = 0;

    /* renamed from: a, reason: collision with root package name */
    public volatile long f19519a;

    static {
        try {
            System.loadLibrary("pl_droidsonroids_gif");
        } catch (UnsatisfiedLinkError unused) {
            if (com.bumptech.glide.f.f9135a == null) {
                try {
                    com.bumptech.glide.f.f9135a = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
                } catch (Exception e3) {
                    throw new IllegalStateException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e3);
                }
            }
            J2.f.loadLibrary(com.bumptech.glide.f.f9135a, "pl_droidsonroids_gif");
        }
    }

    public GifInfoHandle(AssetFileDescriptor assetFileDescriptor) {
        int createTempNativeFileDescriptor;
        try {
            FileDescriptor fileDescriptor = assetFileDescriptor.getFileDescriptor();
            long startOffset = assetFileDescriptor.getStartOffset();
            if (Build.VERSION.SDK_INT > 27) {
                try {
                    createTempNativeFileDescriptor = createTempNativeFileDescriptor();
                    Os.dup2(fileDescriptor, createTempNativeFileDescriptor);
                } finally {
                }
            } else {
                createTempNativeFileDescriptor = extractNativeFileDescriptor(fileDescriptor, false);
            }
            this.f19519a = openNativeFileDescriptor(createTempNativeFileDescriptor, startOffset);
        } finally {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    public static native int createTempNativeFileDescriptor() throws GifIOException;

    public static native int extractNativeFileDescriptor(FileDescriptor fileDescriptor, boolean z6) throws GifIOException;

    private static native void free(long j7);

    private static native int getCurrentFrameIndex(long j7);

    private static native int getCurrentLoop(long j7);

    private static native int getCurrentPosition(long j7);

    private static native int getDuration(long j7);

    private static native int getHeight(long j7);

    private static native int getLoopCount(long j7);

    private static native int getNativeErrorCode(long j7);

    private static native int getNumberOfFrames(long j7);

    private static native long[] getSavedState(long j7);

    private static native int getWidth(long j7);

    private static native boolean isOpaque(long j7);

    public static native long openFile(String str) throws GifIOException;

    public static native long openNativeFileDescriptor(int i2, long j7) throws GifIOException;

    private static native long renderFrame(long j7, Bitmap bitmap);

    private static native boolean reset(long j7);

    private static native long restoreRemainder(long j7);

    private static native int restoreSavedState(long j7, long[] jArr, Bitmap bitmap);

    private static native void saveRemainder(long j7);

    private static native void seekToTime(long j7, int i2, Bitmap bitmap);

    private static native void setLoopCount(long j7, char c7);

    public final synchronized int a() {
        return getCurrentFrameIndex(this.f19519a);
    }

    public final synchronized int b() {
        return getCurrentLoop(this.f19519a);
    }

    public final synchronized int c() {
        return getCurrentPosition(this.f19519a);
    }

    public final synchronized int d() {
        return getDuration(this.f19519a);
    }

    public final synchronized int e() {
        return getHeight(this.f19519a);
    }

    public final synchronized int f() {
        return getLoopCount(this.f19519a);
    }

    public void finalize() throws Throwable {
        try {
            synchronized (this) {
                free(this.f19519a);
                this.f19519a = 0L;
            }
        } finally {
            super.finalize();
        }
    }

    public final synchronized int g() {
        return getNativeErrorCode(this.f19519a);
    }

    public final synchronized int h() {
        return getNumberOfFrames(this.f19519a);
    }

    public final synchronized long[] i() {
        return getSavedState(this.f19519a);
    }

    public final synchronized int j() {
        return getWidth(this.f19519a);
    }

    public final synchronized boolean k() {
        return isOpaque(this.f19519a);
    }

    public final synchronized long l(Bitmap bitmap) {
        return renderFrame(this.f19519a, bitmap);
    }

    public final synchronized boolean m() {
        return reset(this.f19519a);
    }

    public final synchronized long n() {
        return restoreRemainder(this.f19519a);
    }

    public final synchronized int o(long[] jArr, Bitmap bitmap) {
        return restoreSavedState(this.f19519a, jArr, bitmap);
    }

    public final synchronized void p() {
        saveRemainder(this.f19519a);
    }

    public final synchronized void q(int i2, Bitmap bitmap) {
        seekToTime(this.f19519a, i2, bitmap);
    }

    public final void r(int i2) {
        if (i2 < 0 || i2 > 65535) {
            throw new IllegalArgumentException("Loop count of range <0, 65535>");
        }
        synchronized (this) {
            setLoopCount(this.f19519a, (char) i2);
        }
    }
}
