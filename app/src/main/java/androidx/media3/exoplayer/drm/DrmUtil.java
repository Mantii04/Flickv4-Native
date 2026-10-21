package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.os.Build;
import android.os.SystemClock;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.MediaDrmCallback;
import androidx.media3.exoplayer.source.LoadEventInfo;
import cz.msebera.android.httpclient.HttpHeaders;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

@UnstableApi
/* loaded from: classes.dex */
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;
    private static final int MAX_MANUAL_REDIRECTS = 5;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorSource {
    }

    private DrmUtil() {
    }

    public static MediaDrmCallback.Response executePost(DataSource dataSource, String str, byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        DataSpec dataSpec;
        DataSourceInputStream dataSourceInputStream;
        StatsDataSource statsDataSource = new StatsDataSource(dataSource);
        DataSpec build = new DataSpec.Builder().setUri(str).setHttpRequestHeaders(map).setHttpMethod(2).setHttpBody(bArr).setFlags(1).build();
        int i2 = 0;
        DataSpec dataSpec2 = build;
        while (true) {
            try {
                DataSourceInputStream dataSourceInputStream2 = new DataSourceInputStream(statsDataSource, dataSpec2);
                try {
                    try {
                        dataSpec = build;
                        dataSourceInputStream = dataSourceInputStream2;
                        try {
                            MediaDrmCallback.Response build2 = new MediaDrmCallback.Response.Builder(R3.g.toByteArray(dataSourceInputStream2)).setLoadEventInfo(new LoadEventInfo(-1L, dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), SystemClock.elapsedRealtime(), 0L, r0.length)).build();
                            Util.closeQuietly(dataSourceInputStream);
                            return build2;
                        } catch (HttpDataSource.InvalidResponseCodeException e3) {
                            e = e3;
                            try {
                                String redirectUrl = getRedirectUrl(e, i2);
                                if (redirectUrl == null) {
                                    throw e;
                                }
                                i2++;
                                dataSpec2 = dataSpec2.buildUpon().setUri(redirectUrl).build();
                                try {
                                    Util.closeQuietly(dataSourceInputStream);
                                    build = dataSpec;
                                } catch (Exception e7) {
                                    e = e7;
                                    throw new MediaDrmCallbackException(dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getResponseHeaders(), statsDataSource.getBytesRead(), e);
                                }
                            } catch (Throwable th) {
                                th = th;
                                Util.closeQuietly(dataSourceInputStream);
                                throw th;
                            }
                        }
                    } catch (HttpDataSource.InvalidResponseCodeException e8) {
                        e = e8;
                        dataSpec = build;
                        dataSourceInputStream = dataSourceInputStream2;
                    } catch (Throwable th2) {
                        th = th2;
                        dataSourceInputStream = dataSourceInputStream2;
                        Util.closeQuietly(dataSourceInputStream);
                        throw th;
                    }
                } catch (HttpDataSource.InvalidResponseCodeException e9) {
                    e = e9;
                    dataSourceInputStream = dataSourceInputStream2;
                    dataSpec = build;
                } catch (Throwable th3) {
                    th = th3;
                    dataSourceInputStream = dataSourceInputStream2;
                }
                build = dataSpec;
            } catch (Exception e10) {
                e = e10;
                dataSpec = build;
            }
        }
    }

    public static int getErrorCodeForMediaDrmException(Throwable th, int i2) {
        if (th instanceof MediaDrm.MediaDrmStateException) {
            return Util.getErrorCodeForMediaDrmErrorCode(Util.getErrorCodeFromPlatformDiagnosticsInfo(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
        if (th instanceof MediaDrmResetException) {
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if ((th instanceof NotProvisionedException) || isFailureToConstructNotProvisionedException(th)) {
            return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        if (th instanceof DeniedByServerException) {
            return PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED;
        }
        if (th instanceof UnsupportedDrmException) {
            return PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED;
        }
        if (th instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        if (th instanceof KeysExpiredException) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_EXPIRED;
        }
        if (i2 == 1) {
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if (i2 == 2) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (i2 == 3) {
            return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        throw new IllegalArgumentException();
    }

    private static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i2) {
        Map<String, List<String>> map;
        List<String> list;
        int i7 = invalidResponseCodeException.responseCode;
        if ((i7 != 307 && i7 != 308) || i2 >= 5 || (map = invalidResponseCodeException.headerFields) == null || (list = map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static boolean isFailureToConstructNotProvisionedException(Throwable th) {
        return Build.VERSION.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(");
    }

    public static boolean isFailureToConstructResourceBusyException(Throwable th) {
        return Build.VERSION.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(");
    }
}
