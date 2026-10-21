package androidx.media3.exoplayer.drm;

import P3.v;
import V3.M;
import android.net.Uri;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MediaSource;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@UnstableApi
/* loaded from: classes.dex */
public final class OfflineLicenseHelper {
    private static final Format FORMAT_WITH_EMPTY_DRM_INIT_DATA = new Format.Builder().setDrmInitData(new DrmInitData(new DrmInitData.SchemeData[0])).build();
    private final ConditionVariable drmListenerConditionVariable;
    private final DefaultDrmSessionManager drmSessionManager;
    private final DrmSessionEventListener.EventDispatcher eventDispatcher;
    private final Handler handler;
    private final HandlerThread handlerThread;

    public OfflineLicenseHelper(DefaultDrmSessionManager defaultDrmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = defaultDrmSessionManager;
        this.eventDispatcher = eventDispatcher;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.drmListenerConditionVariable = new ConditionVariable();
        eventDispatcher.addEventListener(new Handler(handlerThread.getLooper()), new DrmSessionEventListener() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper.1
            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public final /* synthetic */ void onDrmKeysLoaded(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
                f.a(this, i2, mediaPeriodId);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysRemoved(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysRestored(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public final /* synthetic */ void onDrmSessionAcquired(int i2, MediaSource.MediaPeriodId mediaPeriodId, int i7) {
                f.e(this, i2, mediaPeriodId, i7);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmSessionManagerError(int i2, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public final /* synthetic */ void onDrmSessionReleased(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
                f.g(this, i2, mediaPeriodId);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void onDrmKeysLoaded(int i2, MediaSource.MediaPeriodId mediaPeriodId, KeyRequestInfo keyRequestInfo) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }
        });
    }

    private DrmSession acquireFirstSessionOnHandlerThread(final int i2, final byte[] bArr, final Format format) throws DrmSession.DrmSessionException {
        v.checkNotNull(format.drmInitData);
        final M create = M.create();
        this.drmListenerConditionVariable.close();
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.p
            @Override // java.lang.Runnable
            public final void run() {
                OfflineLicenseHelper.this.lambda$acquireFirstSessionOnHandlerThread$2(i2, bArr, create, format);
            }
        });
        try {
            DrmSession drmSession = (DrmSession) create.get();
            this.drmListenerConditionVariable.block();
            M create2 = M.create();
            this.handler.post(new o(create2, drmSession, this));
            try {
                if (create2.get() == null) {
                    return drmSession;
                }
                throw ((DrmSession.DrmSessionException) create2.get());
            } catch (InterruptedException | ExecutionException e3) {
                throw new IllegalStateException(e3);
            }
        } catch (InterruptedException | ExecutionException e7) {
            throw new IllegalStateException(e7);
        }
    }

    private byte[] acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(int i2, byte[] bArr, Format format) throws DrmSession.DrmSessionException {
        DrmSession acquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(i2, bArr, format);
        M create = M.create();
        this.handler.post(new o(this, create, acquireFirstSessionOnHandlerThread, 2));
        try {
            try {
                return (byte[]) v.checkNotNull((byte[]) create.get());
            } finally {
                releaseManagerOnHandlerThread();
            }
        } catch (InterruptedException | ExecutionException e3) {
            throw new IllegalStateException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acquireFirstSessionOnHandlerThread$2(int i2, byte[] bArr, M m7, Format format) {
        try {
            this.drmSessionManager.setPlayer((Looper) v.checkNotNull(Looper.myLooper()), PlayerId.UNSET);
            this.drmSessionManager.prepare();
            try {
                this.drmSessionManager.setMode(i2, bArr);
                m7.set((DrmSession) v.checkNotNull(this.drmSessionManager.acquireSession(this.eventDispatcher, format)));
            } catch (Throwable th) {
                this.drmSessionManager.release();
                throw th;
            }
        } catch (Throwable th2) {
            m7.setException(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acquireFirstSessionOnHandlerThread$3(DrmSession drmSession, M m7) {
        try {
            DrmSession.DrmSessionException error = drmSession.getError();
            if (drmSession.getState() == 1) {
                drmSession.release(this.eventDispatcher);
                this.drmSessionManager.release();
            }
            m7.set(error);
        } catch (Throwable th) {
            m7.setException(th);
            drmSession.release(this.eventDispatcher);
            this.drmSessionManager.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(M m7, DrmSession drmSession) {
        try {
            m7.set(drmSession.getOfflineLicenseKeySetId());
        } catch (Throwable th) {
            try {
                m7.setException(th);
            } finally {
                drmSession.release(this.eventDispatcher);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getLicenseDurationRemainingSec$0(M m7, DrmSession drmSession) {
        try {
            m7.set((Pair) v.checkNotNull(WidevineUtil.getLicenseDurationRemainingSec(drmSession)));
        } catch (Throwable th) {
            try {
                m7.setException(th);
            } finally {
                drmSession.release(this.eventDispatcher);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseManagerOnHandlerThread$4(M m7) {
        try {
            this.drmSessionManager.release();
            m7.set(null);
        } catch (Throwable th) {
            m7.setException(th);
        }
    }

    public static OfflineLicenseHelper newWidevineInstance(MediaItem.DrmConfiguration drmConfiguration, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        v.checkArgument(drmConfiguration.scheme.equals(C.WIDEVINE_UUID));
        return newWidevineInstance(((Uri) v.checkNotNull(drmConfiguration.licenseUri)).toString(), drmConfiguration.forceDefaultLicenseUri, drmConfiguration.licenseRequestHeaders, factory, null, eventDispatcher);
    }

    private void releaseManagerOnHandlerThread() {
        M create = M.create();
        this.handler.post(new c(1, this, create));
        try {
            create.get();
        } catch (InterruptedException | ExecutionException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public synchronized byte[] downloadLicense(Format format) throws DrmSession.DrmSessionException {
        v.checkArgument(format.drmInitData != null);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, null, format);
    }

    public synchronized Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) throws DrmSession.DrmSessionException {
        M create;
        v.checkNotNull(bArr);
        try {
            DrmSession acquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(1, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
            create = M.create();
            this.handler.post(new o(this, create, acquireFirstSessionOnHandlerThread, 0));
            try {
                try {
                } finally {
                    releaseManagerOnHandlerThread();
                }
            } catch (InterruptedException | ExecutionException e3) {
                throw new IllegalStateException(e3);
            }
        } catch (DrmSession.DrmSessionException e7) {
            if (e7.getCause() instanceof KeysExpiredException) {
                return Pair.create(0L, 0L);
            }
            throw e7;
        }
        return (Pair) create.get();
    }

    public void release() {
        this.handlerThread.quit();
    }

    public synchronized void releaseLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        v.checkNotNull(bArr);
        acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(3, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public synchronized byte[] renewLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        v.checkNotNull(bArr);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, false, factory, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z6, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z6, factory, null, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z6, DataSource.Factory factory, Map<String, String> map, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z6, null, factory, map, eventDispatcher);
    }

    private static OfflineLicenseHelper newWidevineInstance(String str, boolean z6, Map<String, String> map, DataSource.Factory factory, Map<String, String> map2, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        HttpMediaDrmCallback httpMediaDrmCallback = new HttpMediaDrmCallback(str, z6, factory);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpMediaDrmCallback.setKeyRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return new OfflineLicenseHelper(new DefaultDrmSessionManager.Builder().setKeyRequestParameters(map2).build(httpMediaDrmCallback), eventDispatcher);
    }
}
