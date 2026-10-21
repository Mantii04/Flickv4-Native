package androidx.media3.common.util;

import B4.RunnableC0061y;
import P3.AbstractC0226a;
import P3.v;
import V3.A;
import V3.F;
import V3.M;
import V3.q;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Notification;
import android.app.Service;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Parcel;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.util.SparseLongArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.collect.ImmutableList;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.HttpStatus;
import cz.msebera.android.httpclient.client.config.CookieSpecs;
import io.reactivex.annotations.SchedulerSupport;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.GZIPOutputStream;
import java.util.zip.Inflater;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes.dex */
public final class Util {
    private static final int[] CRC16_BYTES_MSBF;
    private static final int[] CRC32_BYTES_MSBF;
    private static final int[] CRC8_BYTES_MSBF;

    @UnstableApi
    @Deprecated
    public static final String DEVICE;

    @UnstableApi
    public static final String DEVICE_DEBUG_INFO;

    @UnstableApi
    public static final byte[] EMPTY_BYTE_ARRAY;

    @UnstableApi
    public static final long[] EMPTY_LONG_ARRAY;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    private static final String ISM_DASH_FORMAT_EXTENSION = "format=mpd-time-csf";
    private static final String ISM_HLS_FORMAT_EXTENSION = "format=m3u8-aapl";
    private static final Pattern ISM_PATH_PATTERN;

    @UnstableApi
    @Deprecated
    public static final String MANUFACTURER;

    @UnstableApi
    @Deprecated
    public static final String MODEL;

    @UnstableApi
    @Deprecated
    public static final int SDK_INT;
    private static final String TAG = "Util";
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;
    private static final int ZLIB_INFLATE_HEADER = 120;
    private static final String[] additionalIsoLanguageReplacements;
    private static final String[] isoLegacyTagReplacements;
    private static HashMap<String, String> languageTagReplacementMap;

    public static class Api29 {
        private Api29() {
        }

        public static void startForeground(Service service, int i2, Notification notification, int i7, String str) {
            try {
                service.startForeground(i2, notification, i7);
            } catch (RuntimeException e3) {
                Log.e(Util.TAG, "The service must be declared with a foregroundServiceType that includes " + str);
                throw e3;
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        SDK_INT = i2;
        String str = Build.DEVICE;
        DEVICE = str;
        String str2 = Build.MANUFACTURER;
        MANUFACTURER = str2;
        String str3 = Build.MODEL;
        MODEL = str3;
        DEVICE_DEBUG_INFO = str + ", " + str3 + ", " + str2 + ", " + i2;
        EMPTY_BYTE_ARRAY = new byte[0];
        EMPTY_LONG_ARRAY = new long[0];
        XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt ](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)?))?");
        XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
        ISM_PATH_PATTERN = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        additionalIsoLanguageReplacements = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        isoLegacyTagReplacements = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        CRC16_BYTES_MSBF = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        CRC8_BYTES_MSBF = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, WebSocketProtocol.PAYLOAD_SHORT, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, HttpStatus.SC_ACCEPTED, HttpStatus.SC_RESET_CONTENT, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, HttpStatus.SC_CREATED, HttpStatus.SC_PARTIAL_CONTENT, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, HttpStatus.SC_PROCESSING, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, HttpStatus.SC_MULTI_STATUS, HttpStatus.SC_OK, 221, 218, 211, 212, ModuleDescriptor.MODULE_VERSION, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, ZLIB_INFLATE_HEADER, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, HttpStatus.SC_NO_CONTENT, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    private Util() {
    }

    @UnstableApi
    public static long addWithOverflowDefault(long j7, long j8, long j9) {
        long saturatedAdd = S3.g.saturatedAdd(j7, j8);
        return ((saturatedAdd != Long.MIN_VALUE || j7 + j8 == Long.MIN_VALUE) && (saturatedAdd != Long.MAX_VALUE || j7 + j8 == Long.MAX_VALUE)) ? saturatedAdd : j9;
    }

    @UnstableApi
    @Deprecated
    public static boolean areEqual(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    @UnstableApi
    public static int binarySearchCeil(int[] iArr, int i2, boolean z6, boolean z7) {
        int i7;
        int i8;
        int binarySearch = Arrays.binarySearch(iArr, i2);
        if (binarySearch < 0) {
            i8 = ~binarySearch;
        } else {
            while (true) {
                i7 = binarySearch + 1;
                if (i7 >= iArr.length || iArr[i7] != i2) {
                    break;
                }
                binarySearch = i7;
            }
            i8 = z6 ? binarySearch : i7;
        }
        return z7 ? Math.min(iArr.length - 1, i8) : i8;
    }

    @UnstableApi
    public static int binarySearchFloor(int[] iArr, int i2, boolean z6, boolean z7) {
        int i7;
        int i8;
        int binarySearch = Arrays.binarySearch(iArr, i2);
        if (binarySearch < 0) {
            i8 = -(binarySearch + 2);
        } else {
            while (true) {
                i7 = binarySearch - 1;
                if (i7 < 0 || iArr[i7] != i2) {
                    break;
                }
                binarySearch = i7;
            }
            i8 = z6 ? binarySearch : i7;
        }
        return z7 ? Math.max(0, i8) : i8;
    }

    @UnstableApi
    public static <T> T castNonNull(T t6) {
        return t6;
    }

    @UnstableApi
    public static <T> T[] castNonNullTypeArray(T[] tArr) {
        return tArr;
    }

    @UnstableApi
    public static int ceilDivide(int i2, int i7) {
        return ((i2 + i7) - 1) / i7;
    }

    public static boolean checkCleartextTrafficPermitted(MediaItem... mediaItemArr) {
        if (Build.VERSION.SDK_INT < 24) {
            return true;
        }
        for (MediaItem mediaItem : mediaItemArr) {
            MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                if (isTrafficRestricted(localConfiguration.uri)) {
                    return false;
                }
                for (int i2 = 0; i2 < mediaItem.localConfiguration.subtitleConfigurations.size(); i2++) {
                    if (isTrafficRestricted(mediaItem.localConfiguration.subtitleConfigurations.get(i2).uri)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @UnstableApi
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @UnstableApi
    @Deprecated
    public static int compareLong(long j7, long j8) {
        return Long.compare(j7, j8);
    }

    @UnstableApi
    public static int constrainValue(int i2, int i7, int i8) {
        return Math.max(i7, Math.min(i2, i8));
    }

    @UnstableApi
    public static boolean contains(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    @UnstableApi
    public static <T> boolean contentEquals(SparseArray<T> sparseArray, SparseArray<T> sparseArray2) {
        boolean contentEquals;
        if (sparseArray == null) {
            return sparseArray2 == null;
        }
        if (sparseArray2 != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                contentEquals = sparseArray.contentEquals(sparseArray2);
                return contentEquals;
            }
            int size = sparseArray.size();
            if (size == sparseArray2.size()) {
                for (int i2 = 0; i2 < size; i2++) {
                    if (Objects.equals(sparseArray.valueAt(i2), sparseArray2.get(sparseArray.keyAt(i2)))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @UnstableApi
    public static <T> int contentHashCode(SparseArray<T> sparseArray) {
        int contentHashCode;
        if (Build.VERSION.SDK_INT >= 31) {
            contentHashCode = sparseArray.contentHashCode();
            return contentHashCode;
        }
        int i2 = 17;
        for (int i7 = 0; i7 < sparseArray.size(); i7++) {
            i2 = Objects.hashCode(sparseArray.valueAt(i7)) + ((sparseArray.keyAt(i7) + (i2 * 31)) * 31);
        }
        return i2;
    }

    @UnstableApi
    public static Bundle convertToNullIfInvalid(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader((ClassLoader) v.checkNotNull(Util.class.getClassLoader()));
        try {
            bundle.isEmpty();
            return bundle;
        } catch (RuntimeException e3) {
            Log.e(TAG, "Ignoring invalid bundle", e3);
            return null;
        }
    }

    @UnstableApi
    public static int crc16(byte[] bArr, int i2, int i7, int i8) {
        while (i2 < i7) {
            int i9 = U3.g.toInt(bArr[i2]);
            i8 = crc16UpdateFourBits(i9 & 15, crc16UpdateFourBits(i9 >> 4, i8));
            i2++;
        }
        return i8;
    }

    private static int crc16UpdateFourBits(int i2, int i7) {
        int i8 = (i2 ^ ((i7 >> 12) & 255)) & 255;
        return (CRC16_BYTES_MSBF[i8] ^ ((i7 << 4) & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    @UnstableApi
    public static int crc32(byte[] bArr, int i2, int i7, int i8) {
        while (i2 < i7) {
            i8 = CRC32_BYTES_MSBF[((i8 >>> 24) ^ (bArr[i2] & 255)) & 255] ^ (i8 << 8);
            i2++;
        }
        return i8;
    }

    @UnstableApi
    public static int crc8(byte[] bArr, int i2, int i7, int i8) {
        while (i2 < i7) {
            i8 = CRC8_BYTES_MSBF[i8 ^ (bArr[i2] & 255)];
            i2++;
        }
        return i8;
    }

    @UnstableApi
    public static Handler createHandler(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    @UnstableApi
    public static Handler createHandlerForCurrentLooper() {
        return createHandlerForCurrentLooper(null);
    }

    @UnstableApi
    public static Handler createHandlerForCurrentOrMainLooper() {
        return createHandlerForCurrentOrMainLooper(null);
    }

    private static HashMap<String, String> createIsoLanguageReplacementMap() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + additionalIsoLanguageReplacements.length);
        int i2 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    hashMap.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = additionalIsoLanguageReplacements;
            if (i2 >= strArr.length) {
                return hashMap;
            }
            hashMap.put(strArr[i2], strArr[i2 + 1]);
            i2 += 2;
        }
    }

    @UnstableApi
    public static ByteBuffer createReadOnlyByteBuffer(ByteBuffer byteBuffer) {
        return byteBuffer.asReadOnlyBuffer().order(byteBuffer.order());
    }

    @UnstableApi
    public static File createTempDirectory(Context context, String str) throws IOException {
        File createTempFile = createTempFile(context, str);
        createTempFile.delete();
        createTempFile.mkdir();
        return createTempFile;
    }

    @UnstableApi
    public static File createTempFile(Context context, String str) throws IOException {
        return File.createTempFile(str, null, (File) v.checkNotNull(context.getCacheDir()));
    }

    @UnstableApi
    public static long durationUsToSampleCount(long j7, int i2) {
        return scaleLargeValue(j7, i2, 1000000L, RoundingMode.UP);
    }

    @UnstableApi
    public static String escapeFileName(String str) {
        int length = str.length();
        int i2 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            if (shouldEscapeCharacter(str.charAt(i8))) {
                i7++;
            }
        }
        if (i7 == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder((i7 * 2) + length);
        while (i7 > 0) {
            int i9 = i2 + 1;
            char charAt = str.charAt(i2);
            if (shouldEscapeCharacter(charAt)) {
                sb.append('%');
                sb.append(Integer.toHexString(charAt));
                i7--;
            } else {
                sb.append(charAt);
            }
            i2 = i9;
        }
        if (i2 < length) {
            sb.append((CharSequence) str, i2, length);
        }
        return sb.toString();
    }

    @UnstableApi
    public static Uri fixSmoothStreamingIsmManifestUri(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher(path);
        return (matcher.matches() && matcher.group(1) == null) ? Uri.withAppendedPath(uri, "Manifest") : uri;
    }

    @UnstableApi
    public static String formatInvariant(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    @UnstableApi
    public static String fromUtf8Bytes(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    @UnstableApi
    public static int generateAudioSessionIdV21(Context context) {
        int generateAudioSessionId = AudioManagerCompat.getAudioManager(context).generateAudioSessionId();
        if (generateAudioSessionId != -1) {
            return generateAudioSessionId;
        }
        return 0;
    }

    public static String getAdaptiveMimeTypeForContentType(int i2) {
        if (i2 == 0) {
            return MimeTypes.APPLICATION_MPD;
        }
        if (i2 == 1) {
            return MimeTypes.APPLICATION_SS;
        }
        if (i2 != 2) {
            return null;
        }
        return MimeTypes.APPLICATION_M3U8;
    }

    @UnstableApi
    public static int getApiLevelThatAudioFormatIntroducedAudioEncoding(int i2) {
        if (i2 == 30) {
            return 34;
        }
        switch (i2) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i2) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        switch (i2) {
                            case 20:
                                return 30;
                            case 21:
                            case 22:
                                return 31;
                            default:
                                return Log.LOG_LEVEL_OFF;
                        }
                }
        }
    }

    @UnstableApi
    @Deprecated
    public static int getAudioContentTypeForStreamType(int i2) {
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2 || i2 == 4 || i2 == 5 || i2 == 8) {
                return 4;
            }
            if (i2 != 10) {
                return 2;
            }
        }
        return 1;
    }

    @UnstableApi
    public static AudioFormat getAudioFormat(int i2, int i7, int i8) {
        return new AudioFormat.Builder().setSampleRate(i2).setChannelMask(i7).setEncoding(i8).build();
    }

    @SuppressLint({"InlinedApi"})
    @UnstableApi
    public static int getAudioTrackChannelConfig(int i2) {
        if (i2 == 10) {
            return Build.VERSION.SDK_INT >= 32 ? 737532 : 6396;
        }
        if (i2 == 16) {
            return Build.VERSION.SDK_INT >= 32 ? 205215996 : 0;
        }
        if (i2 == 24) {
            return Build.VERSION.SDK_INT >= 32 ? 67108860 : 0;
        }
        switch (i2) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            default:
                switch (i2) {
                    case 13:
                        if (Build.VERSION.SDK_INT >= 32) {
                        }
                        break;
                    case 14:
                        if (Build.VERSION.SDK_INT >= 32) {
                        }
                        break;
                }
        }
        return 0;
    }

    @UnstableApi
    public static int getAudioUsageForStreamType(int i2) {
        if (i2 == 0) {
            return 2;
        }
        if (i2 == 1) {
            return 13;
        }
        if (i2 == 2) {
            return 6;
        }
        int i7 = 4;
        if (i2 != 4) {
            i7 = 5;
            if (i2 != 5) {
                if (i2 != 8) {
                    return i2 != 10 ? 1 : 11;
                }
                return 3;
            }
        }
        return i7;
    }

    @UnstableApi
    public static String getAuxiliaryTrackTypeString(int i2) {
        if (i2 == 0) {
            return "undefined";
        }
        if (i2 == 1) {
            return "original";
        }
        if (i2 == 2) {
            return "depth-linear";
        }
        if (i2 == 3) {
            return "depth-inverse";
        }
        if (i2 == 4) {
            return "depth metadata";
        }
        throw new IllegalStateException("Unsupported auxiliary track type");
    }

    @UnstableApi
    public static Player.Commands getAvailableCommands(Player player, Player.Commands commands) {
        boolean isPlayingAd = player.isPlayingAd();
        boolean isCurrentMediaItemSeekable = player.isCurrentMediaItemSeekable();
        boolean hasPreviousMediaItem = player.hasPreviousMediaItem();
        boolean hasNextMediaItem = player.hasNextMediaItem();
        boolean isCurrentMediaItemLive = player.isCurrentMediaItemLive();
        boolean isCurrentMediaItemDynamic = player.isCurrentMediaItemDynamic();
        boolean isEmpty = player.getCurrentTimeline().isEmpty();
        boolean z6 = false;
        Player.Commands.Builder addIf = new Player.Commands.Builder().addAll(commands).addIf(4, !isPlayingAd).addIf(5, isCurrentMediaItemSeekable && !isPlayingAd).addIf(6, hasPreviousMediaItem && !isPlayingAd).addIf(7, !isEmpty && (hasPreviousMediaItem || !isCurrentMediaItemLive || isCurrentMediaItemSeekable) && !isPlayingAd).addIf(8, hasNextMediaItem && !isPlayingAd).addIf(9, !isEmpty && (hasNextMediaItem || (isCurrentMediaItemLive && isCurrentMediaItemDynamic)) && !isPlayingAd).addIf(10, !isPlayingAd).addIf(11, isCurrentMediaItemSeekable && !isPlayingAd);
        if (isCurrentMediaItemSeekable && !isPlayingAd) {
            z6 = true;
        }
        return addIf.addIf(12, z6).build();
    }

    @UnstableApi
    public static int getBigEndianInt(ByteBuffer byteBuffer, int i2) {
        int i7 = byteBuffer.getInt(i2);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i7 : Integer.reverseBytes(i7);
    }

    @UnstableApi
    public static int getBufferFlagsFromMediaCodecFlags(int i2) {
        int i7 = (i2 & 1) != 1 ? 0 : 1;
        return (i2 & 4) == 4 ? i7 | 4 : i7;
    }

    @UnstableApi
    public static int getByteDepth(int i2) {
        if (i2 != 2) {
            if (i2 == 3) {
                return 1;
            }
            if (i2 != 4) {
                if (i2 != 21) {
                    if (i2 != 22) {
                        if (i2 != 268435456) {
                            if (i2 != 1342177280) {
                                if (i2 != 1610612736) {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    @UnstableApi
    public static byte[] getBytesFromHexString(String str) {
        return R3.e.base16().ignoreCase().decode(str);
    }

    @UnstableApi
    public static int getCodecCountOfType(String str, int i2) {
        int i7 = 0;
        for (String str2 : splitCodecs(str)) {
            if (i2 == MimeTypes.getTrackTypeOfCodec(str2)) {
                i7++;
            }
        }
        return i7;
    }

    @UnstableApi
    public static String getCodecsOfType(String str, int i2) {
        String[] splitCodecs = splitCodecs(str);
        if (splitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : splitCodecs) {
            if (i2 == MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @UnstableApi
    public static String getCodecsWithoutType(String str, int i2) {
        String[] splitCodecs = splitCodecs(str);
        if (splitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : splitCodecs) {
            if (i2 != MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @UnstableApi
    public static String getCountryCode(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return AbstractC0226a.toUpperCase(networkCountryIso);
            }
        }
        return AbstractC0226a.toUpperCase(Locale.getDefault().getCountry());
    }

    @UnstableApi
    public static Point getCurrentDisplayModeSize(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            display = ((WindowManager) v.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return getCurrentDisplayModeSize(context, display);
    }

    @UnstableApi
    public static Looper getCurrentOrMainLooper() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    @UnstableApi
    public static Uri getDataUriForString(String str, String str2) {
        StringBuilder t6 = A.i.t("data:", str, ";base64,");
        t6.append(Base64.encodeToString(str2.getBytes(), 2));
        return Uri.parse(t6.toString());
    }

    @UnstableApi
    public static Locale getDefaultDisplayLocale() {
        Locale locale;
        Locale.Category unused;
        if (Build.VERSION.SDK_INT < 24) {
            return Locale.getDefault();
        }
        unused = Locale.Category.DISPLAY;
        locale = Locale.getDefault(Locale.Category.DISPLAY);
        return locale;
    }

    private static void getDisplaySize(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    @UnstableApi
    public static Drawable getDrawable(Context context, Resources resources, int i2) {
        return resources.getDrawable(i2, context.getTheme());
    }

    public static UUID getDrmUuid(String str) {
        String lowerCase = AbstractC0226a.toLowerCase(str);
        lowerCase.getClass();
        switch (lowerCase) {
            case "playready":
                return C.PLAYREADY_UUID;
            case "widevine":
                return C.WIDEVINE_UUID;
            case "clearkey":
                return C.CLEARKEY_UUID;
            default:
                try {
                    return UUID.fromString(str);
                } catch (RuntimeException unused) {
                    return null;
                }
        }
    }

    @UnstableApi
    public static int getErrorCodeForMediaDrmErrorCode(int i2) {
        if (i2 == 2 || i2 == 4) {
            return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
        }
        if (i2 == 10) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (i2 == 7) {
            return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
        }
        if (i2 == 8) {
            return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        switch (i2) {
            case 15:
                return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
            case 16:
            case 18:
                return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
            default:
                switch (i2) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
                    default:
                        return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
                }
        }
    }

    @UnstableApi
    public static int getErrorCodeFromPlatformDiagnosticsInfo(String str) {
        String[] split;
        int length;
        int i2 = 0;
        if (str == null || (length = (split = split(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = split[length - 1];
        boolean z6 = length >= 3 && "neg".equals(split[length - 2]);
        try {
            i2 = Integer.parseInt((String) v.checkNotNull(str2));
            if (z6) {
                return -i2;
            }
        } catch (NumberFormatException unused) {
        }
        return i2;
    }

    @UnstableApi
    public static String getFormatSupportString(int i2) {
        if (i2 == 0) {
            return "NO";
        }
        if (i2 == 1) {
            return "NO_UNSUPPORTED_SUBTYPE";
        }
        if (i2 == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i2 == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i2 == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    @UnstableApi
    public static int getInt24(ByteBuffer byteBuffer, int i2) {
        ByteOrder order = byteBuffer.order();
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        byte b7 = byteBuffer.get(order == byteOrder ? i2 : i2 + 2);
        byte b8 = byteBuffer.get(i2 + 1);
        if (byteBuffer.order() == byteOrder) {
            i2 += 2;
        }
        return (((byteBuffer.get(i2) << 8) & 65280) | (((b7 << 24) & (-16777216)) | ((b8 << 16) & 16711680))) >> 8;
    }

    @UnstableApi
    public static int getIntegerCodeForString(String str) {
        int length = str.length();
        v.checkArgument(length <= 4);
        int i2 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            i2 = (i2 << 8) | str.charAt(i7);
        }
        return i2;
    }

    @UnstableApi
    public static String getLocaleLanguageTag(Locale locale) {
        return locale.toLanguageTag();
    }

    @UnstableApi
    public static int getMaxPendingFramesCountForMediaCodecDecoders(Context context) {
        return isFrameDropAllowedOnSurfaceInput(context) ? 1 : 5;
    }

    @UnstableApi
    public static long getMediaDurationForPlayoutDuration(long j7, float f3) {
        return f3 == 1.0f ? j7 : Math.round(j7 * f3);
    }

    @UnstableApi
    public static long getNowUnixTimeMs(long j7) {
        return j7 == C.TIME_UNSET ? System.currentTimeMillis() : android.os.SystemClock.elapsedRealtime() + j7;
    }

    @UnstableApi
    public static int getPcmEncoding(int i2) {
        return getPcmEncoding(i2, ByteOrder.LITTLE_ENDIAN);
    }

    @UnstableApi
    public static Format getPcmFormat(int i2, int i7, int i8) {
        return new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setChannelCount(i7).setSampleRate(i8).setPcmEncoding(i2).build();
    }

    @UnstableApi
    public static int getPcmFrameSize(int i2, int i7) {
        return getByteDepth(i2) * i7;
    }

    @UnstableApi
    public static long getPlayoutDurationForMediaDuration(long j7, float f3) {
        return f3 == 1.0f ? j7 : Math.round(j7 / f3);
    }

    @UnstableApi
    public static List<String> getRoleFlagStrings(int i2) {
        ArrayList arrayList = new ArrayList();
        if ((i2 & 1) != 0) {
            arrayList.add("main");
        }
        if ((i2 & 2) != 0) {
            arrayList.add("alt");
        }
        if ((i2 & 4) != 0) {
            arrayList.add("supplementary");
        }
        if ((i2 & 8) != 0) {
            arrayList.add("commentary");
        }
        if ((i2 & 16) != 0) {
            arrayList.add("dub");
        }
        if ((i2 & 32) != 0) {
            arrayList.add("emergency");
        }
        if ((i2 & 64) != 0) {
            arrayList.add("caption");
        }
        if ((i2 & 128) != 0) {
            arrayList.add("subtitle");
        }
        if ((i2 & 256) != 0) {
            arrayList.add("sign");
        }
        if ((i2 & 512) != 0) {
            arrayList.add("describes-video");
        }
        if ((i2 & 1024) != 0) {
            arrayList.add("describes-music");
        }
        if ((i2 & 2048) != 0) {
            arrayList.add("enhanced-intelligibility");
        }
        if ((i2 & 4096) != 0) {
            arrayList.add("transcribes-dialog");
        }
        if ((i2 & 8192) != 0) {
            arrayList.add("easy-read");
        }
        if ((i2 & 16384) != 0) {
            arrayList.add("trick-play");
        }
        if ((i2 & 32768) != 0) {
            arrayList.add("auxiliary");
        }
        return arrayList;
    }

    @UnstableApi
    public static List<String> getSelectionFlagStrings(int i2) {
        ArrayList arrayList = new ArrayList();
        if ((i2 & 4) != 0) {
            arrayList.add("auto");
        }
        if ((i2 & 1) != 0) {
            arrayList.add(CookieSpecs.DEFAULT);
        }
        if ((i2 & 2) != 0) {
            arrayList.add("forced");
        }
        return arrayList;
    }

    @UnstableApi
    @Deprecated
    public static int getStreamTypeForAudioUsage(int i2) {
        switch (i2) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    @UnstableApi
    public static String getStringForTime(StringBuilder sb, Formatter formatter, long j7) {
        long j8 = j7 == C.TIME_UNSET ? 0L : j7;
        String str = j8 < 0 ? "-" : "";
        long abs = (Math.abs(j8) + 500) / 1000;
        long j9 = abs % 60;
        long j10 = (abs / 60) % 60;
        long j11 = abs / 3600;
        sb.setLength(0);
        return j11 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j11), Long.valueOf(j10), Long.valueOf(j9)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j10), Long.valueOf(j9)).toString();
    }

    @UnstableApi
    public static String[] getSystemLanguageCodes() {
        String[] systemLocales = getSystemLocales();
        for (int i2 = 0; i2 < systemLocales.length; i2++) {
            systemLocales[i2] = normalizeLanguageCode(systemLocales[i2]);
        }
        return systemLocales;
    }

    private static String[] getSystemLocales() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return Build.VERSION.SDK_INT >= 24 ? getSystemLocalesV24(configuration) : new String[]{getLocaleLanguageTag(configuration.locale)};
    }

    private static String[] getSystemLocalesV24(Configuration configuration) {
        LocaleList locales;
        String languageTags;
        locales = configuration.getLocales();
        languageTags = locales.toLanguageTags();
        return split(languageTags, ",");
    }

    private static String getSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e3) {
            Log.e(TAG, "Failed to read system property " + str, e3);
            return null;
        }
    }

    @UnstableApi
    public static String getTrackTypeString(int i2) {
        switch (i2) {
            case -2:
                return SchedulerSupport.NONE;
            case -1:
                return "unknown";
            case 0:
                return CookieSpecs.DEFAULT;
            case 1:
                return MimeTypes.BASE_TYPE_AUDIO;
            case 2:
                return MimeTypes.BASE_TYPE_VIDEO;
            case 3:
                return MimeTypes.BASE_TYPE_TEXT;
            case 4:
                return MimeTypes.BASE_TYPE_IMAGE;
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                return i2 >= 10000 ? A.i.g(i2, "custom (", ")") : "?";
        }
    }

    public static String getUserAgent(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = "?";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(RemoteSettings.FORWARD_SLASH_STRING);
        sb.append(str2);
        sb.append(" (Linux;Android ");
        return A.i.o(sb, Build.VERSION.RELEASE, ") AndroidXMedia3/1.9.2");
    }

    @UnstableApi
    public static byte[] getUtf8Bytes(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    @UnstableApi
    public static byte[] gzip(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (IOException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public static boolean handlePauseButtonAction(Player player) {
        if (player == null || !player.isCommandAvailable(1)) {
            return false;
        }
        player.pause();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean handlePlayButtonAction(androidx.media3.common.Player r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            int r1 = r4.getPlaybackState()
            r2 = 1
            if (r1 != r2) goto L17
            r3 = 2
            boolean r3 = r4.isCommandAvailable(r3)
            if (r3 == 0) goto L17
            r4.prepare()
        L15:
            r0 = r2
            goto L24
        L17:
            r3 = 4
            if (r1 != r3) goto L24
            boolean r1 = r4.isCommandAvailable(r3)
            if (r1 == 0) goto L24
            r4.seekToDefaultPosition()
            goto L15
        L24:
            boolean r1 = r4.isCommandAvailable(r2)
            if (r1 == 0) goto L2e
            r4.play()
            return r2
        L2e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.util.Util.handlePlayButtonAction(androidx.media3.common.Player):boolean");
    }

    public static boolean handlePlayPauseButtonAction(Player player) {
        return handlePlayPauseButtonAction(player, true);
    }

    @UnstableApi
    @Deprecated
    public static int inferContentType(Uri uri, String str) {
        return TextUtils.isEmpty(str) ? inferContentType(uri) : inferContentTypeForExtension(str);
    }

    public static int inferContentTypeForExtension(String str) {
        String lowerCase = AbstractC0226a.toLowerCase(str);
        lowerCase.getClass();
        switch (lowerCase) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }

    public static int inferContentTypeForUriAndMimeType(Uri uri, String str) {
        if (str == null) {
            return inferContentType(uri);
        }
        switch (str) {
            case "application/x-mpegURL":
                return 2;
            case "application/vnd.ms-sstr+xml":
                return 1;
            case "application/dash+xml":
                return 0;
            case "application/x-rtsp":
                return 3;
            default:
                return 4;
        }
    }

    @UnstableApi
    public static boolean inflate(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        if (parsableByteArray.bytesLeft() == 0) {
            return false;
        }
        if (parsableByteArray2.capacity() < parsableByteArray.bytesLeft()) {
            parsableByteArray2.ensureCapacity(parsableByteArray.bytesLeft() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.bytesLeft());
        int i2 = 0;
        while (true) {
            try {
                i2 += inflater.inflate(parsableByteArray2.getData(), i2, parsableByteArray2.capacity() - i2);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                    }
                    if (i2 == parsableByteArray2.capacity()) {
                        parsableByteArray2.ensureCapacity(parsableByteArray2.capacity() * 2);
                    }
                } else {
                    parsableByteArray2.setLimit(i2);
                    inflater.reset();
                    return true;
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    @UnstableApi
    public static String intToStringMaxRadix(int i2) {
        return Integer.toString(i2, 36);
    }

    private static boolean isAppSpecificStorageFileUri(Activity activity, Uri uri) {
        try {
            String path = uri.getPath();
            if (path == null) {
                return false;
            }
            String canonicalPath = new File(path).getCanonicalPath();
            String canonicalPath2 = activity.getFilesDir().getCanonicalPath();
            String str = null;
            File externalFilesDir = activity.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                str = externalFilesDir.getCanonicalPath();
            }
            if (canonicalPath.startsWith(canonicalPath2)) {
                return true;
            }
            if (str != null) {
                if (canonicalPath.startsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
    }

    @UnstableApi
    public static boolean isAutomotive(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    @UnstableApi
    public static boolean isBitmapFactorySupportedMimeType(String str) {
        str.getClass();
        switch (str) {
            case "image/avif":
                return Build.VERSION.SDK_INT >= 34;
            case "image/heic":
            case "image/heif":
                return Build.VERSION.SDK_INT >= 26;
            case "image/jpeg":
            case "image/webp":
            case "image/bmp":
            case "image/png":
                return true;
            default:
                return false;
        }
    }

    @UnstableApi
    public static boolean isEncodingHighResolutionPcm(int i2) {
        return i2 == 21 || i2 == 1342177280 || i2 == 22 || i2 == 1610612736 || i2 == 4;
    }

    @UnstableApi
    public static boolean isEncodingLinearPcm(int i2) {
        return i2 == 3 || i2 == 2 || i2 == 268435456 || i2 == 21 || i2 == 1342177280 || i2 == 22 || i2 == 1610612736 || i2 == 4;
    }

    @UnstableApi
    public static boolean isFrameDropAllowedOnSurfaceInput(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return true;
        }
        if (i2 == 30) {
            String str = Build.MODEL;
            if (AbstractC0226a.equalsIgnoreCase(str, "moto g(20)") || AbstractC0226a.equalsIgnoreCase(str, "rmx3231")) {
                return true;
            }
        }
        return i2 == 34 && AbstractC0226a.equalsIgnoreCase(Build.MODEL, "sm-x200");
    }

    @UnstableApi
    public static boolean isLinebreak(int i2) {
        return i2 == 10 || i2 == 13;
    }

    @UnstableApi
    public static boolean isLocalFileUri(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || Objects.equals(scheme, "file");
    }

    private static boolean isMediaStoreExternalContentUri(Uri uri) {
        if (!Objects.equals(uri.getScheme(), FirebaseAnalytics.Param.CONTENT) || !Objects.equals(uri.getAuthority(), "media")) {
            return false;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.isEmpty()) {
            return false;
        }
        String str = pathSegments.get(0);
        return "external".equals(str) || "external_primary".equals(str);
    }

    private static boolean isReadStoragePermissionRequestNeeded(Activity activity, Uri uri) {
        return isLocalFileUri(uri) ? !isAppSpecificStorageFileUri(activity, uri) : isMediaStoreExternalContentUri(uri);
    }

    @UnstableApi
    public static boolean isRunningOnEmulator() {
        String lowerCase = AbstractC0226a.toLowerCase(Build.DEVICE);
        return lowerCase.contains("emulator") || lowerCase.contains("emu64a") || lowerCase.contains("emu64x") || lowerCase.contains("generic");
    }

    @UnstableApi
    public static boolean isSorted(long[] jArr) {
        int i2 = 0;
        while (i2 < jArr.length - 1) {
            long j7 = jArr[i2];
            i2++;
            if (j7 > jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    private static boolean isTrafficRestricted(Uri uri) {
        boolean isCleartextTrafficPermitted;
        if (!HttpHost.DEFAULT_SCHEME_NAME.equals(uri.getScheme())) {
            return false;
        }
        isCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted((String) v.checkNotNull(uri.getHost()));
        return !isCleartextTrafficPermitted;
    }

    @UnstableApi
    public static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    @UnstableApi
    public static boolean isWear(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$newSingleThreadExecutor$3(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$newSingleThreadScheduledExecutor$4(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$postOrRunWithCompletion$0(M m7, Runnable runnable, Object obj) {
        try {
            if (m7.isCancelled()) {
                return;
            }
            runnable.run();
            m7.set(obj);
        } catch (Throwable th) {
            m7.setException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transformFutureAsync$1(M m7, F f3) {
        if (m7.isCancelled()) {
            f3.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$transformFutureAsync$2(F f3, M m7, q qVar) {
        F lambda$handleReplaceMediaItems$33;
        try {
            try {
                lambda$handleReplaceMediaItems$33 = SimpleBasePlayer.lambda$handleReplaceMediaItems$33((F) ((A0.a) qVar).f3e, A.getDone(f3));
                m7.setFuture(lambda$handleReplaceMediaItems$33);
            } catch (Throwable th) {
                m7.setException(th);
            }
        } catch (Error e3) {
            e = e3;
            m7.setException(e);
        } catch (CancellationException unused) {
            m7.cancel(false);
        } catch (RuntimeException e7) {
            e = e7;
            m7.setException(e);
        } catch (ExecutionException e8) {
            e = e8;
            Throwable cause = e.getCause();
            if (cause != null) {
                e = cause;
            }
            m7.setException(e);
        }
    }

    @UnstableApi
    public static int linearSearch(int[] iArr, int i2) {
        for (int i7 = 0; i7 < iArr.length; i7++) {
            if (iArr[i7] == i2) {
                return i7;
            }
        }
        return -1;
    }

    @UnstableApi
    public static String loadAsset(Context context, String str) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(str);
            return fromUtf8Bytes(R3.g.toByteArray(inputStream));
        } finally {
            closeQuietly(inputStream);
        }
    }

    @UnstableApi
    public static long maxValue(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new NoSuchElementException();
        }
        long j7 = Long.MIN_VALUE;
        for (int i2 = 0; i2 < sparseLongArray.size(); i2++) {
            j7 = Math.max(j7, sparseLongArray.valueAt(i2));
        }
        return j7;
    }

    @UnstableApi
    public static boolean maybeInflate(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        return parsableByteArray.bytesLeft() > 0 && parsableByteArray.peekUnsignedByte() == ZLIB_INFLATE_HEADER && inflate(parsableByteArray, parsableByteArray2, inflater);
    }

    private static String maybeReplaceLegacyLanguageTags(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = isoLegacyTagReplacements;
            if (i2 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i2])) {
                return strArr[i2 + 1] + str.substring(strArr[i2].length());
            }
            i2 += 2;
        }
    }

    @Deprecated
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, Uri... uriArr) {
        for (Uri uri : uriArr) {
            if (maybeRequestReadStoragePermission(activity, uri)) {
                return true;
            }
        }
        return false;
    }

    public static boolean maybeRequestReadStoragePermission(Activity activity, MediaItem... mediaItemArr) {
        for (MediaItem mediaItem : mediaItemArr) {
            MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                if (maybeRequestReadStoragePermission(activity, localConfiguration.uri)) {
                    return true;
                }
                ImmutableList<MediaItem.SubtitleConfiguration> immutableList = mediaItem.localConfiguration.subtitleConfigurations;
                for (int i2 = 0; i2 < immutableList.size(); i2++) {
                    if (maybeRequestReadStoragePermission(activity, immutableList.get(i2).uri)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @UnstableApi
    public static long minValue(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new NoSuchElementException();
        }
        long j7 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < sparseLongArray.size(); i2++) {
            j7 = Math.min(j7, sparseLongArray.valueAt(i2));
        }
        return j7;
    }

    @UnstableApi
    public static <T> void moveItems(List<T> list, int i2, int i7, int i8) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i9 = (i7 - i2) - 1; i9 >= 0; i9--) {
            arrayDeque.addFirst(list.remove(i2 + i9));
        }
        list.addAll(Math.min(i8, list.size()), arrayDeque);
    }

    @UnstableApi
    public static long msToUs(long j7) {
        return (j7 == C.TIME_UNSET || j7 == Long.MIN_VALUE) ? j7 : j7 * 1000;
    }

    @UnstableApi
    public static ExecutorService newSingleThreadExecutor(String str) {
        return Executors.newSingleThreadExecutor(new i(str, 1));
    }

    @UnstableApi
    public static ScheduledExecutorService newSingleThreadScheduledExecutor(String str) {
        return Executors.newSingleThreadScheduledExecutor(new i(str, 0));
    }

    @UnstableApi
    public static String normalizeLanguageCode(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = replace;
        }
        String lowerCase = AbstractC0226a.toLowerCase(str);
        String str2 = splitAtFirst(lowerCase, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = createIsoLanguageReplacementMap();
        }
        String str3 = languageTagReplacementMap.get(str2);
        if (str3 != null) {
            StringBuilder o6 = b.c.o(str3);
            o6.append(lowerCase.substring(str2.length()));
            lowerCase = o6.toString();
            str2 = str3;
        }
        return ("no".equals(str2) || CmcdData.OBJECT_TYPE_INIT_SEGMENT.equals(str2) || "zh".equals(str2)) ? maybeReplaceLegacyLanguageTags(lowerCase) : lowerCase;
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayAppend(T[] tArr, T t6) {
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length + 1);
        copyOf[tArr.length] = t6;
        return (T[]) castNonNullTypeArray(copyOf);
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayConcatenation(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i2) {
        v.checkArgument(i2 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i2);
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayCopyOfRange(T[] tArr, int i2, int i7) {
        v.checkArgument(i2 >= 0);
        v.checkArgument(i7 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i2, i7);
    }

    @UnstableApi
    public static <T> void nullSafeListToArray(List<T> list, T[] tArr) {
        v.checkState(list.size() == tArr.length);
        list.toArray(tArr);
    }

    @UnstableApi
    public static long parseXsDateTime(String str) throws ParserException {
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedContainer("Invalid date/time format: " + str, null);
        }
        int i2 = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            int parseInt = Integer.parseInt(matcher.group(12)) * 60;
            String group = matcher.group(13);
            i2 = group != null ? Integer.parseInt(group) + parseInt : parseInt;
            if ("-".equals(matcher.group(11))) {
                i2 *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone(TimeZones.GMT_ID));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i2 != 0 ? timeInMillis - (i2 * 60000) : timeInMillis;
    }

    @UnstableApi
    public static long parseXsDuration(String str) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
        }
        boolean isEmpty = TextUtils.isEmpty(matcher.group(1));
        String group = matcher.group(3);
        double d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        double parseDouble = group != null ? Double.parseDouble(group) * 3.1556908E7d : 0.0d;
        String group2 = matcher.group(5);
        double parseDouble2 = parseDouble + (group2 != null ? Double.parseDouble(group2) * 2629739.0d : 0.0d);
        String group3 = matcher.group(7);
        double parseDouble3 = parseDouble2 + (group3 != null ? Double.parseDouble(group3) * 86400.0d : 0.0d);
        String group4 = matcher.group(10);
        double parseDouble4 = parseDouble3 + (group4 != null ? Double.parseDouble(group4) * 3600.0d : 0.0d);
        String group5 = matcher.group(12);
        double parseDouble5 = parseDouble4 + (group5 != null ? Double.parseDouble(group5) * 60.0d : 0.0d);
        String group6 = matcher.group(14);
        if (group6 != null) {
            d7 = Double.parseDouble(group6);
        }
        long j7 = (long) ((parseDouble5 + d7) * 1000.0d);
        return !isEmpty ? -j7 : j7;
    }

    @UnstableApi
    public static float percentFloat(long j7, long j8) {
        if (j8 == 0 || j7 != j8) {
            return (j7 / j8) * 100.0f;
        }
        return 100.0f;
    }

    @UnstableApi
    public static int percentInt(long j7, long j8) {
        long saturatedMultiply = S3.g.saturatedMultiply(j7, 100L);
        return com.google.common.primitives.a.saturatedCast((saturatedMultiply == Long.MAX_VALUE || saturatedMultiply == Long.MIN_VALUE) ? j7 / (j8 / 100) : saturatedMultiply / j8);
    }

    @UnstableApi
    public static boolean postOrRun(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    @UnstableApi
    public static <T> F postOrRunWithCompletion(Handler handler, Runnable runnable, T t6) {
        M create = M.create();
        postOrRun(handler, new RunnableC0061y(create, runnable, t6, 2));
        return create;
    }

    @UnstableApi
    public static void putInt24(ByteBuffer byteBuffer, int i2) {
        v.checkArgument(((-16777216) & i2) == 0 || (i2 & (-8388608)) == -8388608, "Value out of range of 24-bit integer: %s", Integer.toHexString(i2));
        v.checkArgument(byteBuffer.remaining() >= 3);
        ByteOrder order = byteBuffer.order();
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        byteBuffer.put((byte) (order == byteOrder ? (i2 & 16711680) >> 16 : i2 & 255)).put((byte) ((65280 & i2) >> 8)).put((byte) (byteBuffer.order() == byteOrder ? i2 & 255 : (i2 & 16711680) >> 16));
    }

    @UnstableApi
    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    @UnstableApi
    public static void recursiveDelete(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    @UnstableApi
    public static Intent registerReceiverNotExported(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        Intent registerReceiver;
        if (Build.VERSION.SDK_INT < 33) {
            return context.registerReceiver(broadcastReceiver, intentFilter);
        }
        registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, 4);
        return registerReceiver;
    }

    @UnstableApi
    public static <T> void removeRange(List<T> list, int i2, int i7) {
        if (i2 < 0 || i7 > list.size() || i2 > i7) {
            throw new IllegalArgumentException();
        }
        if (i2 != i7) {
            list.subList(i2, i7).clear();
        }
    }

    private static boolean requestExternalStoragePermission(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
        return true;
    }

    private static boolean requestReadMediaPermissions(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0 && activity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0 && activity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_AUDIO", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}, 0);
        return true;
    }

    @UnstableApi
    public static long sampleCountToDurationUs(long j7, int i2) {
        return scaleLargeValue(j7, 1000000L, i2, RoundingMode.DOWN);
    }

    @UnstableApi
    public static long scaleLargeTimestamp(long j7, long j8, long j9) {
        return scaleLargeValue(j7, j8, j9, RoundingMode.DOWN);
    }

    @UnstableApi
    public static long[] scaleLargeTimestamps(List<Long> list, long j7, long j8) {
        return scaleLargeValues(list, j7, j8, RoundingMode.DOWN);
    }

    @UnstableApi
    public static void scaleLargeTimestampsInPlace(long[] jArr, long j7, long j8) {
        scaleLargeValuesInPlace(jArr, j7, j8, RoundingMode.DOWN);
    }

    @UnstableApi
    public static long scaleLargeValue(long j7, long j8, long j9, RoundingMode roundingMode) {
        if (j7 == 0 || j8 == 0) {
            return 0L;
        }
        return (j9 < j8 || j9 % j8 != 0) ? (j9 >= j8 || j8 % j9 != 0) ? (j9 < j7 || j9 % j7 != 0) ? (j9 >= j7 || j7 % j9 != 0) ? scaleLargeValueFallback(j7, j8, j9, roundingMode) : S3.g.saturatedMultiply(j8, S3.g.divide(j7, j9, RoundingMode.UNNECESSARY)) : S3.g.divide(j8, S3.g.divide(j9, j7, RoundingMode.UNNECESSARY), roundingMode) : S3.g.saturatedMultiply(j7, S3.g.divide(j8, j9, RoundingMode.UNNECESSARY)) : S3.g.divide(j7, S3.g.divide(j9, j8, RoundingMode.UNNECESSARY), roundingMode);
    }

    private static long scaleLargeValueFallback(long j7, long j8, long j9, RoundingMode roundingMode) {
        long saturatedMultiply = S3.g.saturatedMultiply(j7, j8);
        if (saturatedMultiply != Long.MAX_VALUE && saturatedMultiply != Long.MIN_VALUE) {
            return S3.g.divide(saturatedMultiply, j9, roundingMode);
        }
        long gcd = S3.g.gcd(Math.abs(j8), Math.abs(j9));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long divide = S3.g.divide(j8, gcd, roundingMode2);
        long divide2 = S3.g.divide(j9, gcd, roundingMode2);
        long gcd2 = S3.g.gcd(Math.abs(j7), Math.abs(divide2));
        long divide3 = S3.g.divide(j7, gcd2, roundingMode2);
        long divide4 = S3.g.divide(divide2, gcd2, roundingMode2);
        long saturatedMultiply2 = S3.g.saturatedMultiply(divide3, divide);
        if (saturatedMultiply2 != Long.MAX_VALUE && saturatedMultiply2 != Long.MIN_VALUE) {
            return S3.g.divide(saturatedMultiply2, divide4, roundingMode);
        }
        double d7 = divide3 * (divide / divide4);
        if (d7 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d7 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return S3.c.roundToLong(d7, roundingMode);
    }

    @UnstableApi
    public static long[] scaleLargeValues(List<Long> list, long j7, long j8, RoundingMode roundingMode) {
        long j9 = j7;
        long j10 = j8;
        RoundingMode roundingMode2 = roundingMode;
        int size = list.size();
        long[] jArr = new long[size];
        if (j9 != 0) {
            int i2 = 0;
            if (j10 >= j9 && j10 % j9 == 0) {
                long divide = S3.g.divide(j10, j9, RoundingMode.UNNECESSARY);
                while (i2 < size) {
                    jArr[i2] = S3.g.divide(list.get(i2).longValue(), divide, roundingMode2);
                    i2++;
                }
            } else if (j10 >= j9 || j9 % j10 != 0) {
                int i7 = 0;
                while (i7 < size) {
                    long longValue = list.get(i7).longValue();
                    if (longValue != 0) {
                        if (j10 >= longValue && j10 % longValue == 0) {
                            jArr[i7] = S3.g.divide(j9, S3.g.divide(j10, longValue, RoundingMode.UNNECESSARY), roundingMode2);
                        } else if (j10 >= longValue || longValue % j10 != 0) {
                            jArr[i7] = scaleLargeValueFallback(longValue, j9, j10, roundingMode2);
                        } else {
                            jArr[i7] = S3.g.saturatedMultiply(j9, S3.g.divide(longValue, j10, RoundingMode.UNNECESSARY));
                        }
                    }
                    i7++;
                    j9 = j7;
                    j10 = j8;
                    roundingMode2 = roundingMode;
                }
            } else {
                long divide2 = S3.g.divide(j9, j10, RoundingMode.UNNECESSARY);
                while (i2 < size) {
                    jArr[i2] = S3.g.saturatedMultiply(list.get(i2).longValue(), divide2);
                    i2++;
                }
            }
        }
        return jArr;
    }

    @UnstableApi
    public static void scaleLargeValuesInPlace(long[] jArr, long j7, long j8, RoundingMode roundingMode) {
        if (j7 == 0) {
            Arrays.fill(jArr, 0L);
            return;
        }
        int i2 = 0;
        if (j8 >= j7 && j8 % j7 == 0) {
            long divide = S3.g.divide(j8, j7, RoundingMode.UNNECESSARY);
            while (i2 < jArr.length) {
                jArr[i2] = S3.g.divide(jArr[i2], divide, roundingMode);
                i2++;
            }
            return;
        }
        if (j8 < j7 && j7 % j8 == 0) {
            long divide2 = S3.g.divide(j7, j8, RoundingMode.UNNECESSARY);
            while (i2 < jArr.length) {
                jArr[i2] = S3.g.saturatedMultiply(jArr[i2], divide2);
                i2++;
            }
            return;
        }
        for (int i7 = 0; i7 < jArr.length; i7++) {
            long j9 = jArr[i7];
            if (j9 != 0) {
                if (j8 >= j9 && j8 % j9 == 0) {
                    jArr[i7] = S3.g.divide(j7, S3.g.divide(j8, j9, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j8 >= j9 || j9 % j8 != 0) {
                    jArr[i7] = scaleLargeValueFallback(j9, j7, j8, roundingMode);
                } else {
                    jArr[i7] = S3.g.saturatedMultiply(j7, S3.g.divide(j9, j8, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    @UnstableApi
    public static void setForegroundServiceNotification(Service service, int i2, Notification notification, int i7, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29.startForeground(service, i2, notification, i7, str);
        } else {
            service.startForeground(i2, notification);
        }
    }

    @UnstableApi
    public static boolean shouldEnablePlayPauseButton(Player player) {
        if (player == null || !player.isCommandAvailable(1)) {
            return false;
        }
        return (player.isCommandAvailable(17) && player.getCurrentTimeline().isEmpty()) ? false : true;
    }

    private static boolean shouldEscapeCharacter(char c7) {
        return c7 == '\"' || c7 == '%' || c7 == '*' || c7 == '/' || c7 == ':' || c7 == '<' || c7 == '\\' || c7 == '|' || c7 == '>' || c7 == '?';
    }

    public static boolean shouldShowPlayButton(Player player) {
        return shouldShowPlayButton(player, true);
    }

    @UnstableApi
    public static void sneakyThrow(Throwable th) {
        sneakyThrowInternal(th);
    }

    @UnstableApi
    public static String[] split(String str, String str2) {
        return str.split(str2, -1);
    }

    @UnstableApi
    public static String[] splitAtFirst(String str, String str2) {
        return str.split(str2, 2);
    }

    @UnstableApi
    public static String[] splitCodecs(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : split(str.trim(), "(\\s*,\\s*)");
    }

    @UnstableApi
    public static ComponentName startForegroundService(Context context, Intent intent) {
        ComponentName startForegroundService;
        if (Build.VERSION.SDK_INT < 26) {
            return context.startService(intent);
        }
        startForegroundService = context.startForegroundService(intent);
        return startForegroundService;
    }

    @UnstableApi
    public static long subtractWithOverflowDefault(long j7, long j8, long j9) {
        long saturatedSubtract = S3.g.saturatedSubtract(j7, j8);
        return ((saturatedSubtract != Long.MIN_VALUE || j7 - j8 == Long.MIN_VALUE) && (saturatedSubtract != Long.MAX_VALUE || j7 - j8 == Long.MAX_VALUE)) ? saturatedSubtract : j9;
    }

    @UnstableApi
    public static long sum(long... jArr) {
        long j7 = 0;
        for (long j8 : jArr) {
            j7 += j8;
        }
        return j7;
    }

    @UnstableApi
    public static boolean tableExists(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    @UnstableApi
    @Deprecated
    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        return R3.g.toByteArray(inputStream);
    }

    @UnstableApi
    public static String toFourccString(int i2) {
        return new String(com.google.common.primitives.a.toByteArray(i2), StandardCharsets.US_ASCII);
    }

    @UnstableApi
    public static String toHexString(byte[] bArr) {
        return R3.e.base16().lowerCase().encode(bArr);
    }

    @UnstableApi
    public static long toLong(int i2, int i7) {
        return toUnsignedLong(i7) | (toUnsignedLong(i2) << 32);
    }

    @UnstableApi
    public static long toUnsignedLong(int i2) {
        return i2 & 4294967295L;
    }

    @UnstableApi
    public static <T, U> F transformFutureAsync(F f3, q qVar) {
        M create = M.create();
        create.addListener(new g(5, create, f3), com.google.common.util.concurrent.g.directExecutor());
        f3.addListener(new RunnableC0061y(f3, create, qVar, 3), com.google.common.util.concurrent.g.directExecutor());
        return create;
    }

    @UnstableApi
    public static String unescapeFileName(String str) {
        int length = str.length();
        int i2 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            if (str.charAt(i8) == '%') {
                i7++;
            }
        }
        if (i7 == 0) {
            return str;
        }
        int i9 = length - (i7 * 2);
        StringBuilder sb = new StringBuilder(i9);
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(str);
        while (i7 > 0 && matcher.find()) {
            char parseInt = (char) Integer.parseInt((String) v.checkNotNull(matcher.group(1)), 16);
            sb.append((CharSequence) str, i2, matcher.start());
            sb.append(parseInt);
            i2 = matcher.end();
            i7--;
        }
        if (i2 < length) {
            sb.append((CharSequence) str, i2, length);
        }
        if (sb.length() != i9) {
            return null;
        }
        return sb.toString();
    }

    @UnstableApi
    public static long usToMs(long j7) {
        return (j7 == C.TIME_UNSET || j7 == Long.MIN_VALUE) ? j7 : j7 / 1000;
    }

    @UnstableApi
    public static void writeBoolean(Parcel parcel, boolean z6) {
        parcel.writeInt(z6 ? 1 : 0);
    }

    @UnstableApi
    public static long ceilDivide(long j7, long j8) {
        return ((j7 + j8) - 1) / j8;
    }

    @UnstableApi
    public static long constrainValue(long j7, long j8, long j9) {
        return Math.max(j8, Math.min(j7, j9));
    }

    @UnstableApi
    public static Handler createHandlerForCurrentLooper(Handler.Callback callback) {
        return createHandler((Looper) v.checkNotNull(Looper.myLooper()), callback);
    }

    @UnstableApi
    public static Handler createHandlerForCurrentOrMainLooper(Handler.Callback callback) {
        return createHandler(getCurrentOrMainLooper(), callback);
    }

    @UnstableApi
    public static String fromUtf8Bytes(byte[] bArr, int i2, int i7) {
        return new String(bArr, i2, i7, StandardCharsets.UTF_8);
    }

    @UnstableApi
    public static int getPcmEncoding(int i2, ByteOrder byteOrder) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 == 16) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 2 : 268435456;
        }
        if (i2 == 24) {
            if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                return 21;
            }
            return C.ENCODING_PCM_24BIT_BIG_ENDIAN;
        }
        if (i2 != 32) {
            return 0;
        }
        if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
            return 22;
        }
        return C.ENCODING_PCM_32BIT_BIG_ENDIAN;
    }

    @UnstableApi
    public static boolean handlePlayPauseButtonAction(Player player, boolean z6) {
        return shouldShowPlayButton(player, z6) ? handlePlayButtonAction(player) : handlePauseButtonAction(player);
    }

    @UnstableApi
    public static boolean shouldShowPlayButton(Player player, boolean z6) {
        return player == null || !player.getPlayWhenReady() || player.getPlaybackState() == 1 || player.getPlaybackState() == 4 || !(!z6 || player.getPlaybackSuppressionReason() == 0 || player.getPlaybackSuppressionReason() == 4);
    }

    @UnstableApi
    public static byte[] toByteArray(int... iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        int i2 = 0;
        for (int i7 : iArr) {
            bArr[i2] = (byte) (i7 >> 24);
            bArr[i2 + 1] = (byte) (i7 >> 16);
            int i8 = i2 + 3;
            bArr[i2 + 2] = (byte) (i7 >> 8);
            i2 += 4;
            bArr[i8] = (byte) i7;
        }
        return bArr;
    }

    @UnstableApi
    public static float constrainValue(float f3, float f7, float f8) {
        return Math.max(f7, Math.min(f3, f8));
    }

    @UnstableApi
    public static <T> boolean contains(SparseArray<T> sparseArray, int i2) {
        return sparseArray.indexOfKey(i2) >= 0;
    }

    @UnstableApi
    public static int linearSearch(long[] jArr, long j7) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (jArr[i2] == j7) {
                return i2;
            }
        }
        return -1;
    }

    @Deprecated
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, MediaItem... mediaItemArr) {
        return maybeRequestReadStoragePermission(activity, mediaItemArr);
    }

    @UnstableApi
    public static int binarySearchCeil(long[] jArr, long j7, boolean z6, boolean z7) {
        int i2;
        int i7;
        int binarySearch = Arrays.binarySearch(jArr, j7);
        if (binarySearch < 0) {
            i7 = ~binarySearch;
        } else {
            while (true) {
                i2 = binarySearch + 1;
                if (i2 >= jArr.length || jArr[i2] != j7) {
                    break;
                }
                binarySearch = i2;
            }
            i7 = z6 ? binarySearch : i2;
        }
        return z7 ? Math.min(jArr.length - 1, i7) : i7;
    }

    @UnstableApi
    public static int binarySearchFloor(long[] jArr, long j7, boolean z6, boolean z7) {
        int i2;
        int i7;
        int binarySearch = Arrays.binarySearch(jArr, j7);
        if (binarySearch < 0) {
            i7 = -(binarySearch + 2);
        } else {
            while (true) {
                i2 = binarySearch - 1;
                if (i2 < 0 || jArr[i2] != j7) {
                    break;
                }
                binarySearch = i2;
            }
            i7 = z6 ? binarySearch : i2;
        }
        return z7 ? Math.max(0, i7) : i7;
    }

    public static int inferContentType(Uri uri) {
        int inferContentTypeForExtension;
        String scheme = uri.getScheme();
        if (scheme != null && (AbstractC0226a.equalsIgnoreCase("rtsp", scheme) || AbstractC0226a.equalsIgnoreCase("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int lastIndexOf = lastPathSegment.lastIndexOf(46);
        if (lastIndexOf >= 0 && (inferContentTypeForExtension = inferContentTypeForExtension(lastPathSegment.substring(lastIndexOf + 1))) != 4) {
            return inferContentTypeForExtension;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher((CharSequence) v.checkNotNull(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String group = matcher.group(2);
        if (group != null) {
            if (group.contains(ISM_DASH_FORMAT_EXTENSION)) {
                return 0;
            }
            if (group.contains(ISM_HLS_FORMAT_EXTENSION)) {
                return 2;
            }
        }
        return 1;
    }

    @UnstableApi
    public static boolean postOrRun(HandlerWrapper handlerWrapper, Runnable runnable) {
        Looper looper = handlerWrapper.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handlerWrapper.post(runnable);
    }

    @UnstableApi
    public static <T extends Comparable<? super T>> int binarySearchCeil(List<? extends Comparable<? super T>> list, T t6, boolean z6, boolean z7) {
        int i2;
        int i7;
        int binarySearch = Collections.binarySearch(list, t6);
        if (binarySearch < 0) {
            i7 = ~binarySearch;
        } else {
            int size = list.size();
            while (true) {
                i2 = binarySearch + 1;
                if (i2 >= size || list.get(i2).compareTo(t6) != 0) {
                    break;
                }
                binarySearch = i2;
            }
            i7 = z6 ? binarySearch : i2;
        }
        return z7 ? Math.min(list.size() - 1, i7) : i7;
    }

    @UnstableApi
    public static <T extends Comparable<? super T>> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t6, boolean z6, boolean z7) {
        int i2;
        int i7;
        int binarySearch = Collections.binarySearch(list, t6);
        if (binarySearch < 0) {
            i7 = -(binarySearch + 2);
        } else {
            while (true) {
                i2 = binarySearch - 1;
                if (i2 < 0 || list.get(i2).compareTo(t6) != 0) {
                    break;
                }
                binarySearch = i2;
            }
            i7 = z6 ? binarySearch : i2;
        }
        return z7 ? Math.max(0, i7) : i7;
    }

    @UnstableApi
    public static Format getPcmFormat(AudioProcessor.AudioFormat audioFormat) {
        return getPcmFormat(audioFormat.encoding, audioFormat.channelCount, audioFormat.sampleRate);
    }

    private static boolean maybeRequestReadStoragePermission(Activity activity, Uri uri) {
        if (!isReadStoragePermissionRequestNeeded(activity, uri)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 33) {
            return requestExternalStoragePermission(activity);
        }
        return requestReadMediaPermissions(activity);
    }

    @UnstableApi
    public static Point getCurrentDisplayModeSize(Context context, Display display) {
        String systemProperty;
        if (display.getDisplayId() == 0 && isTv(context)) {
            if (Build.VERSION.SDK_INT < 28) {
                systemProperty = getSystemProperty("sys.display-size");
            } else {
                systemProperty = getSystemProperty("vendor.display-size");
            }
            if (!TextUtils.isEmpty(systemProperty)) {
                try {
                    String[] split = split(systemProperty.trim(), "x");
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                Log.e(TAG, "Invalid display size: " + systemProperty);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        getDisplaySize(display, point);
        return point;
    }

    @UnstableApi
    public static byte[] toByteArray(float f3) {
        return com.google.common.primitives.a.toByteArray(Float.floatToIntBits(f3));
    }

    @UnstableApi
    public static int binarySearchFloor(LongArray longArray, long j7, boolean z6, boolean z7) {
        int i2;
        int size = longArray.size() - 1;
        int i7 = 0;
        while (i7 <= size) {
            int i8 = (i7 + size) >>> 1;
            if (longArray.get(i8) < j7) {
                i7 = i8 + 1;
            } else {
                size = i8 - 1;
            }
        }
        if (z6 && (i2 = size + 1) < longArray.size() && longArray.get(i2) == j7) {
            return i2;
        }
        if (z7 && size == -1) {
            return 0;
        }
        return size;
    }

    @UnstableApi
    public static String getStringForTime(long j7) {
        StringBuilder sb = new StringBuilder();
        return getStringForTime(sb, new Formatter(sb, Locale.getDefault()), j7);
    }

    @UnstableApi
    @Deprecated
    public static int inferContentType(String str) {
        return inferContentType(Uri.parse("file:///" + str));
    }

    private static <T extends Throwable> void sneakyThrowInternal(Throwable th) throws Throwable {
        throw th;
    }
}
