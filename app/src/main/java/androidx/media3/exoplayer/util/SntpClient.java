package androidx.media3.exoplayer.util;

import P3.v;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.i;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

@UnstableApi
/* loaded from: classes.dex */
public final class SntpClient {
    public static final String DEFAULT_NTP_HOST = "time.android.com";
    public static final int DEFAULT_TIMEOUT_MS = 1000;
    private static final int MAX_RETRY_COUNT = 10;
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final int TRANSMIT_TIME_OFFSET = 40;
    private static long elapsedRealtimeOffsetMs = 0;
    private static boolean isInitialized = false;
    private static long lastUpdateElapsedRealtime = -9223372036854775807L;
    private static long maxElapsedTimeUntilUpdateMs = -9223372036854775807L;
    private static String ntpHost = "time.android.com";
    private static int timeoutMs = 1000;
    private static final Object loaderLock = new Object();
    private static final Object valueLock = new Object();

    public interface InitializationCallback {
        void onInitializationFailed(IOException iOException);

        void onInitialized();
    }

    public static final class NtpTimeCallback implements Loader.Callback<Loader.Loadable> {
        private final InitializationCallback callback;

        public NtpTimeCallback(InitializationCallback initializationCallback) {
            this.callback = initializationCallback;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(Loader.Loadable loadable, long j7, long j8, boolean z6) {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(Loader.Loadable loadable, long j7, long j8) {
            if (this.callback != null) {
                if (SntpClient.isInitialized()) {
                    this.callback.onInitialized();
                } else {
                    this.callback.onInitializationFailed(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(Loader.Loadable loadable, long j7, long j8, IOException iOException, int i2) {
            InitializationCallback initializationCallback = this.callback;
            if (initializationCallback != null) {
                initializationCallback.onInitializationFailed(iOException);
            }
            return Loader.DONT_RETRY;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public final /* synthetic */ void onLoadStarted(Loader.Loadable loadable, long j7, long j8, int i2) {
            i.a(this, loadable, j7, j8, i2);
        }
    }

    public static final class NtpTimeLoadable implements Loader.Loadable {
        private NtpTimeLoadable() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            synchronized (SntpClient.loaderLock) {
                synchronized (SntpClient.valueLock) {
                    if (SntpClient.isInitialized) {
                        return;
                    }
                    long loadNtpTimeOffsetMs = SntpClient.loadNtpTimeOffsetMs();
                    synchronized (SntpClient.valueLock) {
                        long unused = SntpClient.lastUpdateElapsedRealtime = SystemClock.elapsedRealtime();
                        long unused2 = SntpClient.elapsedRealtimeOffsetMs = loadNtpTimeOffsetMs;
                        boolean unused3 = SntpClient.isInitialized = true;
                    }
                }
            }
        }
    }

    private SntpClient() {
    }

    private static void checkValidServerReply(byte b7, byte b8, int i2, long j7) throws IOException {
        if (b7 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b8 != 4 && b8 != 5) {
            throw new IOException(A.i.f(b8, "SNTP: Untrusted mode: "));
        }
        if (i2 == 0 || i2 > 15) {
            throw new IOException(A.i.f(i2, "SNTP: Untrusted stratum: "));
        }
        if (j7 == 0) {
            throw new IOException("SNTP: Zero transmitTime");
        }
    }

    public static long getElapsedRealtimeOffsetMs() {
        long j7;
        synchronized (valueLock) {
            try {
                j7 = isInitialized ? elapsedRealtimeOffsetMs : C.TIME_UNSET;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j7;
    }

    public static long getMaxElapsedTimeUntilUpdateMs() {
        long j7;
        synchronized (valueLock) {
            j7 = maxElapsedTimeUntilUpdateMs;
        }
        return j7;
    }

    public static String getNtpHost() {
        String str;
        synchronized (valueLock) {
            str = ntpHost;
        }
        return str;
    }

    public static int getTimeoutMs() {
        int i2;
        synchronized (valueLock) {
            i2 = timeoutMs;
        }
        return i2;
    }

    public static void initialize(Loader loader, InitializationCallback initializationCallback) {
        if (isInitialized()) {
            if (initializationCallback != null) {
                initializationCallback.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.startLoading(new NtpTimeLoadable(), new NtpTimeCallback(initializationCallback), 1);
        }
    }

    public static boolean isInitialized() {
        boolean z6;
        synchronized (valueLock) {
            try {
                if (lastUpdateElapsedRealtime != C.TIME_UNSET && maxElapsedTimeUntilUpdateMs != C.TIME_UNSET) {
                    isInitialized = isInitialized && SystemClock.elapsedRealtime() - lastUpdateElapsedRealtime < maxElapsedTimeUntilUpdateMs;
                }
                z6 = isInitialized;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long loadNtpTimeOffsetMs() throws IOException {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(getTimeoutMs());
            InetAddress[] allByName = InetAddress.getAllByName(getNtpHost());
            int length = allByName.length;
            SocketTimeoutException socketTimeoutException = null;
            int i2 = 0;
            int i7 = 0;
            while (i2 < length) {
                InetAddress inetAddress = allByName[i2];
                byte[] bArr = new byte[NTP_PACKET_SIZE];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, NTP_PACKET_SIZE, inetAddress, NTP_PORT);
                bArr[0] = 27;
                long currentTimeMillis = System.currentTimeMillis();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                writeTimestamp(bArr, TRANSMIT_TIME_OFFSET, currentTimeMillis);
                datagramSocket.send(datagramPacket);
                try {
                    datagramSocket.receive(new DatagramPacket(bArr, NTP_PACKET_SIZE));
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j7 = (elapsedRealtime2 - elapsedRealtime) + currentTimeMillis;
                    byte b7 = bArr[0];
                    int i8 = bArr[1] & 255;
                    long readTimestamp = readTimestamp(bArr, 24);
                    long readTimestamp2 = readTimestamp(bArr, 32);
                    long readTimestamp3 = readTimestamp(bArr, TRANSMIT_TIME_OFFSET);
                    checkValidServerReply((byte) ((b7 >> 6) & 3), (byte) (b7 & 7), i8, readTimestamp3);
                    long j8 = (j7 + (((readTimestamp3 - j7) + (readTimestamp2 - readTimestamp)) / 2)) - elapsedRealtime2;
                    datagramSocket.close();
                    return j8;
                } catch (SocketTimeoutException e3) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException = e3;
                    } else {
                        socketTimeoutException.addSuppressed(e3);
                    }
                    int i9 = i7 + 1;
                    if (i7 >= 10) {
                        break;
                    }
                    i2++;
                    i7 = i9;
                }
            }
            throw ((SocketTimeoutException) v.checkNotNull(socketTimeoutException));
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static long read32(byte[] bArr, int i2) {
        int i7 = bArr[i2];
        int i8 = bArr[i2 + 1];
        int i9 = bArr[i2 + 2];
        int i10 = bArr[i2 + 3];
        if ((i7 & 128) == 128) {
            i7 = (i7 & 127) + 128;
        }
        if ((i8 & 128) == 128) {
            i8 = (i8 & 127) + 128;
        }
        if ((i9 & 128) == 128) {
            i9 = (i9 & 127) + 128;
        }
        if ((i10 & 128) == 128) {
            i10 = (i10 & 127) + 128;
        }
        return (i7 << 24) + (i8 << 16) + (i9 << 8) + i10;
    }

    private static long readTimestamp(byte[] bArr, int i2) {
        long read32 = read32(bArr, i2);
        long read322 = read32(bArr, i2 + 4);
        if (read32 == 0 && read322 == 0) {
            return 0L;
        }
        return ((read322 * 1000) / 4294967296L) + ((read32 - OFFSET_1900_TO_1970) * 1000);
    }

    public static void setMaxElapsedTimeUntilUpdateMs(long j7) {
        synchronized (valueLock) {
            maxElapsedTimeUntilUpdateMs = j7;
        }
    }

    public static void setNtpHost(String str) {
        synchronized (valueLock) {
            try {
                if (!ntpHost.equals(str)) {
                    ntpHost = str;
                    isInitialized = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setTimeoutMs(int i2) {
        synchronized (valueLock) {
            try {
                if (timeoutMs != i2) {
                    timeoutMs = i2;
                    isInitialized = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void writeTimestamp(byte[] bArr, int i2, long j7) {
        if (j7 == 0) {
            Arrays.fill(bArr, i2, i2 + 8, (byte) 0);
            return;
        }
        long j8 = j7 / 1000;
        long j9 = j7 - (j8 * 1000);
        long j10 = j8 + OFFSET_1900_TO_1970;
        bArr[i2] = (byte) (j10 >> 24);
        bArr[i2 + 1] = (byte) (j10 >> 16);
        bArr[i2 + 2] = (byte) (j10 >> 8);
        bArr[i2 + 3] = (byte) j10;
        long j11 = (j9 * 4294967296L) / 1000;
        bArr[i2 + 4] = (byte) (j11 >> 24);
        bArr[i2 + 5] = (byte) (j11 >> 16);
        bArr[i2 + 6] = (byte) (j11 >> 8);
        bArr[i2 + 7] = (byte) (Math.random() * 255.0d);
    }
}
