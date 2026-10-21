package androidx.media3.exoplayer.drm;

import P0.D;
import P0.E;
import P3.v;
import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.analytics.y;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public final class FrameworkMediaDrm implements ExoMediaDrm {
    private static final String CENC_SCHEME_MIME_TYPE = "cenc";

    @UnstableApi
    public static final ExoMediaDrm.Provider DEFAULT_PROVIDER = new k();
    private static final String MOCK_LA_URL = "<LA_URL>https://x</LA_URL>";
    private static final String MOCK_LA_URL_VALUE = "https://x";
    private static final String TAG = "FrameworkMediaDrm";
    private static final int UTF_16_BYTES_PER_CHARACTER = 2;
    private final MediaDrm mediaDrm;
    private int referenceCount;
    private final UUID uuid;

    public static class Api31 {
        private Api31() {
        }

        public static boolean requiresSecureDecoder(MediaDrm mediaDrm, String str, int i2) {
            boolean requiresSecureDecoder;
            requiresSecureDecoder = mediaDrm.requiresSecureDecoder(str, i2);
            return requiresSecureDecoder;
        }

        public static void setLogSessionIdOnMediaDrmSession(MediaDrm mediaDrm, byte[] bArr, PlayerId playerId) {
            boolean equals;
            MediaDrm.PlaybackComponent playbackComponent;
            LogSessionId unused;
            LogSessionId logSessionId = playerId.getLogSessionId();
            unused = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE);
            if (equals) {
                return;
            }
            playbackComponent = mediaDrm.getPlaybackComponent(bArr);
            y.e(v.checkNotNull(playbackComponent)).setLogSessionId(logSessionId);
        }
    }

    private FrameworkMediaDrm(UUID uuid) throws UnsupportedSchemeException {
        v.checkNotNull(uuid);
        v.checkArgument(!C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        MediaDrm mediaDrm = new MediaDrm(adjustUuid(uuid));
        this.mediaDrm = mediaDrm;
        this.referenceCount = 1;
        if (C.WIDEVINE_UUID.equals(uuid) && needsForceWidevineL3Workaround()) {
            forceWidevineL3(mediaDrm);
        }
    }

    private static byte[] addLaUrlAttributeIfMissing(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        short readLittleEndianShort = parsableByteArray.readLittleEndianShort();
        short readLittleEndianShort2 = parsableByteArray.readLittleEndianShort();
        if (readLittleEndianShort != 1 || readLittleEndianShort2 != 1) {
            Log.i(TAG, "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short readLittleEndianShort3 = parsableByteArray.readLittleEndianShort();
        Charset charset = StandardCharsets.UTF_16LE;
        String readString = parsableByteArray.readString(readLittleEndianShort3, charset);
        if (readString.contains("<LA_URL>")) {
            return bArr;
        }
        int indexOf = readString.indexOf("</DATA>");
        if (indexOf == -1) {
            Log.w(TAG, "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = readString.substring(0, indexOf) + MOCK_LA_URL + readString.substring(indexOf);
        int i2 = readLittleEndianInt + 52;
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(i2);
        allocate.putShort(readLittleEndianShort);
        allocate.putShort(readLittleEndianShort2);
        allocate.putShort((short) (str.length() * 2));
        allocate.put(str.getBytes(charset));
        return allocate.array();
    }

    private String adjustLicenseServerUrl(String str) {
        if (MOCK_LA_URL.equals(str)) {
            return "";
        }
        if (Build.VERSION.SDK_INT >= 33 && "https://default.url".equals(str)) {
            String propertyString = getPropertyString(ClientCookie.VERSION_ATTR);
            if (Objects.equals(propertyString, "1.2") || Objects.equals(propertyString, "aidl-1")) {
                return "";
            }
        }
        return str;
    }

    private static byte[] adjustRequestData(UUID uuid, byte[] bArr) {
        return C.CLEARKEY_UUID.equals(uuid) ? ClearKeyUtil.adjustRequestData(bArr) : bArr;
    }

    private static byte[] adjustRequestInitData(UUID uuid, byte[] bArr) {
        byte[] parseSchemeSpecificData;
        D parsePsshAtom;
        UUID uuid2 = C.PLAYREADY_UUID;
        if (uuid2.equals(uuid)) {
            byte[] parseSchemeSpecificData2 = E.parseSchemeSpecificData(bArr, uuid);
            if (parseSchemeSpecificData2 != null) {
                bArr = parseSchemeSpecificData2;
            }
            bArr = E.buildPsshAtom(uuid2, addLaUrlAttributeIfMissing(bArr));
        }
        if (cdmRequiresCommonPsshUuid(uuid) && (parsePsshAtom = E.parsePsshAtom(bArr)) != null) {
            bArr = E.buildPsshAtom(C.COMMON_PSSH_UUID, parsePsshAtom.f2501d, parsePsshAtom.f2500c);
        }
        if (uuid2.equals(uuid) && "Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if (("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) && (parseSchemeSpecificData = E.parseSchemeSpecificData(bArr, uuid)) != null) {
                return parseSchemeSpecificData;
            }
        }
        return bArr;
    }

    private static String adjustRequestMimeType(UUID uuid, String str) {
        return (Build.VERSION.SDK_INT < 26 && C.CLEARKEY_UUID.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? "cenc" : str;
    }

    private static UUID adjustUuid(UUID uuid) {
        return cdmRequiresCommonPsshUuid(uuid) ? C.COMMON_PSSH_UUID : uuid;
    }

    private static boolean cdmRequiresCommonPsshUuid(UUID uuid) {
        return Build.VERSION.SDK_INT < 27 && Objects.equals(uuid, C.CLEARKEY_UUID);
    }

    private static void forceWidevineL3(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData getSchemeData(UUID uuid, List<DrmInitData.SchemeData> list) {
        if (!C.WIDEVINE_UUID.equals(uuid)) {
            return list.get(0);
        }
        if (Build.VERSION.SDK_INT >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i2 = 0;
            for (int i7 = 0; i7 < list.size(); i7++) {
                DrmInitData.SchemeData schemeData2 = list.get(i7);
                byte[] bArr = (byte[]) v.checkNotNull(schemeData2.data);
                if (Objects.equals(schemeData2.mimeType, schemeData.mimeType) && Objects.equals(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) && E.isPsshAtom(bArr)) {
                    i2 += bArr.length;
                }
            }
            byte[] bArr2 = new byte[i2];
            int i8 = 0;
            for (int i9 = 0; i9 < list.size(); i9++) {
                byte[] bArr3 = (byte[]) v.checkNotNull(list.get(i9).data);
                int length = bArr3.length;
                System.arraycopy(bArr3, 0, bArr2, i8, length);
                i8 += length;
            }
            return schemeData.copyWithData(bArr2);
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            DrmInitData.SchemeData schemeData3 = list.get(i10);
            if (E.parseVersion((byte[]) v.checkNotNull(schemeData3.data)) == 1) {
                return schemeData3;
            }
        }
        return list.get(0);
    }

    public static boolean isCryptoSchemeSupported(UUID uuid) {
        return MediaDrm.isCryptoSchemeSupported(adjustUuid(uuid));
    }

    private boolean isMediaDrmRequiresSecureDecoderImplemented() {
        if (!this.uuid.equals(C.WIDEVINE_UUID)) {
            return this.uuid.equals(C.CLEARKEY_UUID);
        }
        String propertyString = getPropertyString(ClientCookie.VERSION_ATTR);
        return (propertyString.startsWith("v5.") || propertyString.startsWith("14.") || propertyString.startsWith("15.") || propertyString.startsWith("16.0")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOnEventListener$1(ExoMediaDrm.OnEventListener onEventListener, MediaDrm mediaDrm, byte[] bArr, int i2, int i7, byte[] bArr2) {
        onEventListener.onEvent(this, bArr, i2, i7, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOnExpirationUpdateListener$3(ExoMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener, MediaDrm mediaDrm, byte[] bArr, long j7) {
        onExpirationUpdateListener.onExpirationUpdate(this, bArr, j7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOnKeyStatusChangeListener$2(ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener, MediaDrm mediaDrm, byte[] bArr, List list, boolean z6) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaDrm.KeyStatus keyStatus = (MediaDrm.KeyStatus) it.next();
            arrayList.add(new ExoMediaDrm.KeyStatus(keyStatus.getStatusCode(), keyStatus.getKeyId()));
        }
        onKeyStatusChangeListener.onKeyStatusChange(this, bArr, arrayList, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ExoMediaDrm lambda$static$0(UUID uuid) {
        try {
            return newInstance(uuid);
        } catch (UnsupportedDrmException unused) {
            Log.e(TAG, "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new DummyExoMediaDrm();
        }
    }

    private static boolean needsForceWidevineL3Workaround() {
        return "ASUS_Z00AD".equals(Build.MODEL);
    }

    @UnstableApi
    public static FrameworkMediaDrm newInstance(UUID uuid) throws UnsupportedDrmException {
        try {
            return new FrameworkMediaDrm(uuid);
        } catch (UnsupportedSchemeException e3) {
            throw new UnsupportedDrmException(1, e3);
        } catch (Exception e7) {
            throw new UnsupportedDrmException(2, e7);
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public synchronized void acquire() {
        v.checkState(this.referenceCount > 0);
        this.referenceCount++;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void closeSession(byte[] bArr) {
        this.mediaDrm.closeSession(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public int getCryptoType() {
        return 2;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @SuppressLint({"WrongConstant"})
    @UnstableApi
    public ExoMediaDrm.KeyRequest getKeyRequest(byte[] bArr, List<DrmInitData.SchemeData> list, int i2, HashMap<String, String> hashMap) throws NotProvisionedException {
        DrmInitData.SchemeData schemeData;
        byte[] bArr2;
        String str;
        if (list != null) {
            schemeData = getSchemeData(this.uuid, list);
            bArr2 = adjustRequestInitData(this.uuid, (byte[]) v.checkNotNull(schemeData.data));
            str = adjustRequestMimeType(this.uuid, schemeData.mimeType);
        } else {
            schemeData = null;
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.mediaDrm.getKeyRequest(bArr, bArr2, str, i2, hashMap);
        byte[] adjustRequestData = adjustRequestData(this.uuid, keyRequest.getData());
        String adjustLicenseServerUrl = adjustLicenseServerUrl(keyRequest.getDefaultUrl());
        if (TextUtils.isEmpty(adjustLicenseServerUrl) && schemeData != null && !TextUtils.isEmpty(schemeData.licenseServerUrl)) {
            adjustLicenseServerUrl = schemeData.licenseServerUrl;
        }
        return new ExoMediaDrm.KeyRequest(adjustRequestData, adjustLicenseServerUrl, keyRequest.getRequestType());
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public PersistableBundle getMetrics() {
        PersistableBundle metrics;
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        metrics = this.mediaDrm.getMetrics();
        return metrics;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public List<byte[]> getOfflineLicenseKeySetIds() {
        List<byte[]> offlineLicenseKeySetIds;
        if (Build.VERSION.SDK_INT < 29) {
            throw new UnsupportedOperationException();
        }
        offlineLicenseKeySetIds = this.mediaDrm.getOfflineLicenseKeySetIds();
        return offlineLicenseKeySetIds;
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.mediaDrm.getProvisionRequest();
        return new ExoMediaDrm.ProvisionRequest(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public byte[] openSession() throws MediaDrmException {
        return this.mediaDrm.openSession();
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        if (C.CLEARKEY_UUID.equals(this.uuid)) {
            bArr2 = ClearKeyUtil.adjustResponseData(bArr2);
        }
        return this.mediaDrm.provideKeyResponse(bArr, bArr2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.mediaDrm.provideProvisionResponse(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public synchronized void release() {
        int i2 = this.referenceCount - 1;
        this.referenceCount = i2;
        if (i2 == 0) {
            this.mediaDrm.release();
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void removeOfflineLicense(byte[] bArr) {
        if (Build.VERSION.SDK_INT < 29) {
            throw new UnsupportedOperationException();
        }
        this.mediaDrm.removeOfflineLicense(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public boolean requiresSecureDecoder(byte[] bArr, String str) {
        MediaCrypto mediaCrypto;
        int securityLevel;
        if (Build.VERSION.SDK_INT >= 31 && isMediaDrmRequiresSecureDecoderImplemented()) {
            MediaDrm mediaDrm = this.mediaDrm;
            securityLevel = mediaDrm.getSecurityLevel(bArr);
            return Api31.requiresSecureDecoder(mediaDrm, str, securityLevel);
        }
        MediaCrypto mediaCrypto2 = null;
        try {
            try {
                mediaCrypto = new MediaCrypto(adjustUuid(this.uuid), bArr);
            } catch (Throwable th) {
                th = th;
            }
        } catch (MediaCryptoException unused) {
        }
        try {
            boolean requiresSecureDecoderComponent = mediaCrypto.requiresSecureDecoderComponent(str);
            mediaCrypto.release();
            return requiresSecureDecoderComponent;
        } catch (MediaCryptoException unused2) {
            mediaCrypto2 = mediaCrypto;
            boolean z6 = !this.uuid.equals(C.CLEARKEY_UUID);
            if (mediaCrypto2 != null) {
                mediaCrypto2.release();
            }
            return z6;
        } catch (Throwable th2) {
            th = th2;
            mediaCrypto2 = mediaCrypto;
            if (mediaCrypto2 != null) {
                mediaCrypto2.release();
            }
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.mediaDrm.restoreKeys(bArr, bArr2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void setOnEventListener(final ExoMediaDrm.OnEventListener onEventListener) {
        this.mediaDrm.setOnEventListener(onEventListener == null ? null : new MediaDrm.OnEventListener() { // from class: androidx.media3.exoplayer.drm.m
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i2, int i7, byte[] bArr2) {
                FrameworkMediaDrm.this.lambda$setOnEventListener$1(onEventListener, mediaDrm, bArr, i2, i7, bArr2);
            }
        });
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void setOnExpirationUpdateListener(final ExoMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener) {
        this.mediaDrm.setOnExpirationUpdateListener(onExpirationUpdateListener == null ? null : new MediaDrm.OnExpirationUpdateListener() { // from class: androidx.media3.exoplayer.drm.l
            @Override // android.media.MediaDrm.OnExpirationUpdateListener
            public final void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j7) {
                FrameworkMediaDrm.this.lambda$setOnExpirationUpdateListener$3(onExpirationUpdateListener, mediaDrm, bArr, j7);
            }
        }, (Handler) null);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void setOnKeyStatusChangeListener(final ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener) {
        this.mediaDrm.setOnKeyStatusChangeListener(onKeyStatusChangeListener == null ? null : new MediaDrm.OnKeyStatusChangeListener() { // from class: androidx.media3.exoplayer.drm.n
            @Override // android.media.MediaDrm.OnKeyStatusChangeListener
            public final void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List list, boolean z6) {
                FrameworkMediaDrm.this.lambda$setOnKeyStatusChangeListener$2(onKeyStatusChangeListener, mediaDrm, bArr, list, z6);
            }
        }, (Handler) null);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void setPlayerIdForSession(byte[] bArr, PlayerId playerId) {
        if (Build.VERSION.SDK_INT >= 31) {
            try {
                Api31.setLogSessionIdOnMediaDrmSession(this.mediaDrm, bArr, playerId);
            } catch (UnsupportedOperationException unused) {
                Log.w(TAG, "setLogSessionId failed.");
            }
        }
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void setPropertyByteArray(String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public void setPropertyString(String str, String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }

    @Override // androidx.media3.exoplayer.drm.ExoMediaDrm
    @UnstableApi
    public FrameworkCryptoConfig createCryptoConfig(byte[] bArr) throws MediaCryptoException {
        return new FrameworkCryptoConfig(adjustUuid(this.uuid), bArr);
    }
}
