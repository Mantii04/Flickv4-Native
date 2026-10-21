package androidx.media3.common.util;

import P3.v;
import Q3.C0248s;
import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.GLU;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.Build;
import androidx.media3.common.C;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class GlUtil {
    private static final String EXTENSION_COLORSPACE_BT2020_HLG = "EGL_EXT_gl_colorspace_bt2020_hlg";
    private static final String EXTENSION_COLORSPACE_BT2020_PQ = "EGL_EXT_gl_colorspace_bt2020_pq";
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final String EXTENSION_YUV_TARGET = "GL_EXT_YUV_target";
    private static final long GL_FENCE_SYNC_FAILED = 0;
    public static final int HOMOGENEOUS_COORDINATE_VECTOR_SIZE = 4;
    public static final float LENGTH_NDC = 2.0f;
    public static final int MAX_BITMAP_DECODING_SIZE = 4096;
    public static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_8888 = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};
    public static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_1010102 = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};
    private static final int EGL_GL_COLORSPACE_KHR = 12445;
    private static final int EGL_GL_COLORSPACE_BT2020_PQ_EXT = 13120;
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ = {EGL_GL_COLORSPACE_KHR, EGL_GL_COLORSPACE_BT2020_PQ_EXT, 12344, 12344};
    private static final int EGL_GL_COLORSPACE_BT2020_HLG_EXT = 13632;
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG = {EGL_GL_COLORSPACE_KHR, EGL_GL_COLORSPACE_BT2020_HLG_EXT, 12344, 12344};
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_NONE = {12344};

    public static final class GlException extends Exception {
        public final ImmutableList<Integer> errorCodes;

        public GlException(String str) {
            this(str, ImmutableList.of());
        }

        public GlException(String str, List<Integer> list) {
            super(str);
            this.errorCodes = ImmutableList.copyOf((Collection) list);
        }
    }

    private GlUtil() {
    }

    private static void assertValidTextureSize(int i2, int i7) throws GlException {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(3379, iArr, 0);
        int i8 = iArr[0];
        v.checkState(i8 > 0, "Create a OpenGL context first or run the GL methods on an OpenGL thread.");
        if (i2 < 0 || i7 < 0) {
            throw new GlException("width or height is less than 0");
        }
        if (i2 > i8 || i7 > i8) {
            throw new GlException(A.i.f(i8, "width or height is greater than GL_MAX_TEXTURE_SIZE "));
        }
    }

    public static void awaitSyncObject(long j7) throws GlException {
        if (j7 == 0) {
            GLES20.glFinish();
        } else {
            GLES30.glWaitSync(j7, 0, -1L);
            checkGlError();
        }
    }

    public static void bindTexture(int i2, int i7, int i8) throws GlException {
        GLES20.glBindTexture(i2, i7);
        checkGlError();
        GLES20.glTexParameteri(i2, 10240, i8);
        checkGlError();
        GLES20.glTexParameteri(i2, 10241, i8);
        checkGlError();
        GLES20.glTexParameteri(i2, 10242, 33071);
        checkGlError();
        GLES20.glTexParameteri(i2, 10243, 33071);
        checkGlError();
    }

    public static void blitFrameBuffer(int i2, GlRect glRect, int i7, GlRect glRect2) throws GlException {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(36006, iArr, 0);
        checkGlError();
        GLES20.glBindFramebuffer(36008, i2);
        checkGlError();
        GLES20.glBindFramebuffer(36009, i7);
        checkGlError();
        GLES30.glBlitFramebuffer(glRect.left, glRect.bottom, glRect.right, glRect.top, glRect2.left, glRect2.bottom, glRect2.right, glRect2.top, 16384, C.TEXTURE_MIN_FILTER_LINEAR);
        checkGlError();
        GLES20.glBindFramebuffer(36160, iArr[0]);
        checkGlError();
    }

    private static void checkEglException(String str) throws GlException {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        StringBuilder s6 = A.i.s(str, ", error code: 0x");
        s6.append(Integer.toHexString(eglGetError));
        throw new GlException(s6.toString(), ImmutableList.of(Integer.valueOf(eglGetError)));
    }

    public static void checkGlError() throws GlException {
        StringBuilder sb = new StringBuilder();
        C0248s c0248s = new C0248s();
        boolean z6 = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z6) {
                sb.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                gluErrorString = "error code: 0x" + Integer.toHexString(glGetError);
            }
            sb.append("glError: ");
            sb.append(gluErrorString);
            c0248s.add((Object) Integer.valueOf(glGetError));
            z6 = true;
        }
        if (z6) {
            throw new GlException(sb.toString(), c0248s.build());
        }
    }

    public static void checkGlException(boolean z6, String str) throws GlException {
        if (!z6) {
            throw new GlException(str);
        }
    }

    public static void clearFocusedBuffers() throws GlException {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClearDepthf(1.0f);
        GLES20.glClear(16640);
        checkGlError();
    }

    public static float[] create4x4IdentityMatrix() {
        float[] fArr = new float[16];
        setToIdentity(fArr);
        return fArr;
    }

    public static FloatBuffer createBuffer(float[] fArr) {
        return (FloatBuffer) createBuffer(fArr.length).put(fArr).flip();
    }

    public static EGLContext createEglContext(EGLDisplay eGLDisplay) throws GlException {
        return createEglContext(EGL14.EGL_NO_CONTEXT, eGLDisplay, 2, EGL_CONFIG_ATTRIBUTES_RGBA_8888);
    }

    public static EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i2, boolean z6) throws GlException {
        int[] iArr;
        int[] iArr2;
        if (i2 == 3 || i2 == 10) {
            iArr = EGL_CONFIG_ATTRIBUTES_RGBA_8888;
            iArr2 = EGL_WINDOW_SURFACE_ATTRIBUTES_NONE;
        } else {
            if (i2 != 7 && i2 != 6) {
                throw new IllegalArgumentException(A.i.f(i2, "Unsupported color transfer: "));
            }
            iArr = EGL_CONFIG_ATTRIBUTES_RGBA_1010102;
            if (z6) {
                iArr2 = EGL_WINDOW_SURFACE_ATTRIBUTES_NONE;
            } else if (i2 == 6) {
                if (!isBt2020PqExtensionSupported()) {
                    throw new GlException("BT.2020 PQ OpenGL output isn't supported.");
                }
                iArr2 = EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ;
            } else {
                if (!isBt2020HlgExtensionSupported()) {
                    throw new GlException("BT.2020 HLG OpenGL output isn't supported.");
                }
                iArr2 = EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG;
            }
        }
        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, getEglConfig(eGLDisplay, iArr), obj, iArr2, 0);
        checkEglException("Error creating a new EGL surface");
        return eglCreateWindowSurface;
    }

    public static int createExternalTexture() throws GlException {
        int generateTexture = generateTexture();
        bindTexture(36197, generateTexture, C.TEXTURE_MIN_FILTER_LINEAR);
        return generateTexture;
    }

    public static int createFboForTexture(int i2) throws GlException {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        checkGlError();
        GLES20.glBindFramebuffer(36160, iArr[0]);
        checkGlError();
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, i2, 0);
        checkGlError();
        return iArr[0];
    }

    public static EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay) throws GlException {
        EGLSurface createPbufferSurface = isSurfacelessContextExtensionSupported() ? EGL14.EGL_NO_SURFACE : createPbufferSurface(eGLDisplay, 1, 1, EGL_CONFIG_ATTRIBUTES_RGBA_8888);
        focusEglSurface(eGLDisplay, eGLContext, createPbufferSurface, 1, 1);
        return createPbufferSurface;
    }

    public static long createGlSyncFence() throws GlException {
        if (getContextMajorVersion() < 3) {
            return 0L;
        }
        long glFenceSync = GLES30.glFenceSync(37143, 0);
        checkGlError();
        GLES20.glFlush();
        checkGlError();
        return glFenceSync;
    }

    private static EGLSurface createPbufferSurface(EGLDisplay eGLDisplay, int i2, int i7, int[] iArr) throws GlException {
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, getEglConfig(eGLDisplay, iArr), new int[]{12375, i2, 12374, i7, 12344}, 0);
        checkEglException("Error creating a new EGL Pbuffer surface");
        return eglCreatePbufferSurface;
    }

    public static int createPixelBufferObject(int i2) throws GlException {
        int[] iArr = new int[1];
        GLES20.glGenBuffers(1, iArr, 0);
        checkGlError();
        GLES20.glBindBuffer(35051, iArr[0]);
        checkGlError();
        GLES20.glBufferData(35051, i2, null, 35049);
        checkGlError();
        GLES20.glBindBuffer(35051, 0);
        checkGlError();
        return iArr[0];
    }

    public static int createRgb10A2Texture(int i2, int i7) throws GlException {
        return createTextureUninitialized(i2, i7, 32857, 33640);
    }

    public static int createTexture(Bitmap bitmap) throws GlException {
        int generateTexture = generateTexture();
        setTexture(generateTexture, bitmap);
        return generateTexture;
    }

    private static int createTextureUninitialized(int i2, int i7, int i8, int i9) throws GlException {
        assertValidTextureSize(i2, i7);
        int generateTexture = generateTexture();
        bindTexture(3553, generateTexture, C.TEXTURE_MIN_FILTER_LINEAR);
        GLES20.glTexImage2D(3553, 0, i8, i2, i7, 0, 6408, i9, null);
        checkGlError();
        return generateTexture;
    }

    public static float[] createVertexBuffer(List<float[]> list) {
        float[] fArr = new float[list.size() * 4];
        for (int i2 = 0; i2 < list.size(); i2++) {
            System.arraycopy(list.get(i2), 0, fArr, i2 * 4, 4);
        }
        return fArr;
    }

    public static void deleteBuffer(int i2) throws GlException {
        GLES20.glDeleteBuffers(1, new int[]{i2}, 0);
        checkGlError();
    }

    public static void deleteFbo(int i2) throws GlException {
        GLES20.glDeleteFramebuffers(1, new int[]{i2}, 0);
        checkGlError();
    }

    public static void deleteRbo(int i2) throws GlException {
        GLES20.glDeleteRenderbuffers(1, new int[]{i2}, 0);
        checkGlError();
    }

    public static void deleteSyncObject(long j7) throws GlException {
        deleteSyncObjectQuietly(j7);
        checkGlError();
    }

    public static void deleteSyncObjectQuietly(long j7) {
        GLES30.glDeleteSync(j7);
    }

    public static void deleteTexture(int i2) throws GlException {
        GLES20.glDeleteTextures(1, new int[]{i2}, 0);
        checkGlError();
    }

    public static void destroyEglContext(EGLDisplay eGLDisplay, EGLContext eGLContext) throws GlException {
        if (eGLDisplay == null || eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
            return;
        }
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        checkEglException("Error releasing context");
        if (eGLContext == null || eGLContext.equals(EGL14.EGL_NO_CONTEXT)) {
            return;
        }
        EGL14.eglDestroyContext(eGLDisplay, eGLContext);
        checkEglException("Error destroying context");
    }

    public static void destroyEglSurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface) throws GlException {
        if (eGLDisplay == null || eGLDisplay.equals(EGL14.EGL_NO_DISPLAY) || eGLSurface == null || eGLSurface.equals(EGL14.EGL_NO_SURFACE)) {
            return;
        }
        EGL14.eglDestroySurface(eGLDisplay, eGLSurface);
        checkEglException("Error destroying surface");
    }

    public static void focusEglSurface(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i2, int i7) throws GlException {
        focusRenderTarget(eGLDisplay, eGLContext, eGLSurface, 0, i2, i7);
    }

    public static void focusFramebuffer(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i2, int i7, int i8) throws GlException {
        focusRenderTarget(eGLDisplay, eGLContext, eGLSurface, i2, i7, i8);
    }

    public static void focusFramebufferUsingCurrentContext(int i2, int i7, int i8) throws GlException {
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(36006, iArr, 0);
        if (iArr[0] != i2) {
            GLES20.glBindFramebuffer(36160, i2);
        }
        checkGlError();
        GLES20.glViewport(0, 0, i7, i8);
        checkGlError();
    }

    private static void focusRenderTarget(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i2, int i7, int i8) throws GlException {
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        checkEglException("Error making context current");
        focusFramebufferUsingCurrentContext(i2, i7, i8);
    }

    public static int generateTexture() throws GlException {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        checkGlError();
        return iArr[0];
    }

    public static long getContextMajorVersion() throws GlException {
        EGL14.eglQueryContext(EGL14.eglGetDisplay(0), EGL14.eglGetCurrentContext(), 12440, new int[1], 0);
        checkGlError();
        return r0[0];
    }

    public static EGLContext getCurrentContext() {
        return EGL14.eglGetCurrentContext();
    }

    public static EGLDisplay getDefaultEglDisplay() throws GlException {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        checkGlException(!eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), "No EGL display.");
        checkGlException(EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0), "Error in eglInitialize.");
        checkGlError();
        return eglGetDisplay;
    }

    private static EGLConfig getEglConfig(EGLDisplay eGLDisplay, int[] iArr) throws GlException {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(eGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        throw new GlException("eglChooseConfig failed.");
    }

    public static float[] getNormalizedCoordinateBounds() {
        return new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    public static float[] getTextureCoordinateBounds() {
        return new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    public static boolean isBt2020HlgExtensionSupported() throws GlException {
        return isExtensionSupported(EXTENSION_COLORSPACE_BT2020_HLG);
    }

    public static boolean isBt2020PqExtensionSupported() throws GlException {
        return Build.VERSION.SDK_INT >= 33 && isExtensionSupported(EXTENSION_COLORSPACE_BT2020_PQ);
    }

    public static boolean isColorTransferSupported(int i2) throws GlException {
        if (i2 == 6) {
            return isBt2020PqExtensionSupported();
        }
        if (i2 == 7) {
            return isBt2020HlgExtensionSupported();
        }
        return true;
    }

    private static boolean isExtensionSupported(String str) throws GlException {
        String eglQueryString = EGL14.eglQueryString(getDefaultEglDisplay(), 12373);
        return eglQueryString != null && eglQueryString.contains(str);
    }

    public static boolean isProtectedContentExtensionSupported(Context context) throws GlException {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 24) {
            return false;
        }
        if (i2 < 26 && ("samsung".equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) {
            return false;
        }
        if (i2 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return isExtensionSupported(EXTENSION_PROTECTED_CONTENT);
        }
        return false;
    }

    public static boolean isSurfacelessContextExtensionSupported() throws GlException {
        return isExtensionSupported(EXTENSION_SURFACELESS_CONTEXT);
    }

    public static boolean isYuvTargetExtensionSupported() {
        String glGetString;
        if (Objects.equals(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT)) {
            try {
                EGLDisplay defaultEglDisplay = getDefaultEglDisplay();
                EGLContext createEglContext = createEglContext(defaultEglDisplay);
                createFocusedPlaceholderEglSurface(createEglContext, defaultEglDisplay);
                glGetString = GLES20.glGetString(7939);
                destroyEglContext(defaultEglDisplay, createEglContext);
            } catch (GlException unused) {
                return false;
            }
        } else {
            glGetString = GLES20.glGetString(7939);
        }
        return glGetString != null && glGetString.contains(EXTENSION_YUV_TARGET);
    }

    public static ByteBuffer mapPixelBufferObject(int i2, int i7) throws GlException {
        GLES20.glBindBuffer(35051, i2);
        checkGlError();
        ByteBuffer byteBuffer = (ByteBuffer) GLES30.glMapBufferRange(35051, 0, i7, 1);
        checkGlError();
        GLES20.glBindBuffer(35051, 0);
        checkGlError();
        return byteBuffer;
    }

    public static void schedulePixelBufferRead(int i2, int i7, int i8, int i9) throws GlException {
        focusFramebufferUsingCurrentContext(i2, i7, i8);
        GLES20.glBindBuffer(35051, i9);
        checkGlError();
        GLES30.glReadBuffer(36064);
        GLES30.glReadPixels(0, 0, i7, i8, 6408, 5121, 0);
        checkGlError();
        GLES20.glBindBuffer(35051, 0);
        checkGlError();
    }

    public static void setTexture(int i2, Bitmap bitmap) throws GlException {
        assertValidTextureSize(bitmap.getWidth(), bitmap.getHeight());
        bindTexture(3553, i2, C.TEXTURE_MIN_FILTER_LINEAR);
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        checkGlError();
    }

    public static void setToIdentity(float[] fArr) {
        Matrix.setIdentityM(fArr, 0);
    }

    public static void terminate(EGLDisplay eGLDisplay) throws GlException {
        EGL14.eglReleaseThread();
        checkEglException("Error releasing thread");
        EGL14.eglTerminate(eGLDisplay);
        checkEglException("Error terminating display");
    }

    public static void unmapPixelBufferObject(int i2) throws GlException {
        GLES20.glBindBuffer(35051, i2);
        checkGlError();
        GLES30.glUnmapBuffer(35051);
        checkGlError();
        GLES20.glBindBuffer(35051, 0);
        checkGlError();
    }

    private static FloatBuffer createBuffer(int i2) {
        return ByteBuffer.allocateDirect(i2 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static EGLContext createEglContext(EGLContext eGLContext, EGLDisplay eGLDisplay, int i2, int[] iArr) throws GlException {
        boolean z6 = true;
        v.checkArgument(Arrays.equals(iArr, EGL_CONFIG_ATTRIBUTES_RGBA_8888) || Arrays.equals(iArr, EGL_CONFIG_ATTRIBUTES_RGBA_1010102));
        if (i2 != 2 && i2 != 3) {
            z6 = false;
        }
        v.checkArgument(z6);
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, getEglConfig(eGLDisplay, iArr), eGLContext, new int[]{12440, i2, 12344}, 0);
        if (eglCreateContext == null || eglCreateContext.equals(EGL14.EGL_NO_CONTEXT)) {
            EGL14.eglTerminate(eGLDisplay);
            throw new GlException(A.i.f(i2, "eglCreateContext() failed to create a valid context. The device may not support EGL version "));
        }
        checkGlError();
        return eglCreateContext;
    }

    public static int createTexture(int i2, int i7, boolean z6) throws GlException {
        if (z6) {
            return createTextureUninitialized(i2, i7, 34842, 5131);
        }
        return createTextureUninitialized(i2, i7, 6408, 5121);
    }
}
