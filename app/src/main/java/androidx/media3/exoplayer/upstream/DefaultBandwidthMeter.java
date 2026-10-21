package androidx.media3.exoplayer.upstream;

import P3.AbstractC0226a;
import P3.B;
import P3.v;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@UnstableApi
/* loaded from: classes.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;

    @SuppressLint({"NonFinalStaticField", "StaticFieldLeak"})
    private static DefaultBandwidthMeter singletonInstance;
    private long bitrateEstimate;
    private final Clock clock;
    private final Context context;
    private String countryCode;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private final ImmutableMap<Integer, Long> initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.of(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.of(1500000L, 980000L, 750000L, 520000L, 290000L);

    static {
        Long valueOf = Long.valueOf(SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.of((long) valueOf, 1300000L, 1000000L, 860000L, 610000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.of(2500000L, 1700000L, 1200000L, 970000L, 680000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.of(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
        DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.of(2700000L, (long) valueOf, 1600000L, 1300000L, 1000000L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:1041:0x0cd7, code lost:
    
        if (r8.equals("AI") == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] getInitialBitrateCountryGroupAssignment(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 8434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.upstream.DefaultBandwidthMeter.getInitialBitrateCountryGroupAssignment(java.lang.String):int[]");
    }

    private long getInitialBitrateEstimateForNetworkType(int i2) {
        Long l7 = this.initialBitrateEstimates.get(Integer.valueOf(i2));
        if (l7 == null) {
            l7 = this.initialBitrateEstimates.get(0);
        } else if (l7.longValue() == C.TIME_UNSET) {
            l7 = Long.valueOf(getInitialBitrateEstimatesForCountry(this.countryCode, i2));
        }
        if (l7 == null) {
            l7 = 1000000L;
        }
        return l7.longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getInitialBitrateEstimatesForCountry(String str, int i2) {
        int[] initialBitrateCountryGroupAssignment = getInitialBitrateCountryGroupAssignment(B.nullToEmpty(str));
        if (i2 != 2) {
            if (i2 == 3) {
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(initialBitrateCountryGroupAssignment[1]).longValue();
            }
            if (i2 == 4) {
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(initialBitrateCountryGroupAssignment[2]).longValue();
            }
            if (i2 == 5) {
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(initialBitrateCountryGroupAssignment[3]).longValue();
            }
            if (i2 != 7) {
                if (i2 == 9) {
                    return DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(initialBitrateCountryGroupAssignment[5]).longValue();
                }
                if (i2 != 10) {
                    return 1000000L;
                }
                return DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(initialBitrateCountryGroupAssignment[4]).longValue();
            }
        }
        return DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(initialBitrateCountryGroupAssignment[0]).longValue();
    }

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        DefaultBandwidthMeter defaultBandwidthMeter;
        synchronized (DefaultBandwidthMeter.class) {
            try {
                if (singletonInstance == null) {
                    singletonInstance = new Builder(context).build();
                }
                defaultBandwidthMeter = singletonInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return defaultBandwidthMeter;
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z6) {
        return z6 && !dataSpec.isFlagSet(8);
    }

    private void maybeNotifyBandwidthSample(int i2, long j7, long j8) {
        if (i2 == 0 && j7 == 0 && j8 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j8;
        this.eventDispatcher.bandwidthSample(i2, j7, j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i2) {
        Throwable th;
        try {
            try {
                int i7 = this.networkType;
                if (i7 != 0) {
                    try {
                        if (!this.resetOnNetworkTypeChange) {
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                if (this.networkTypeOverrideSet) {
                    i2 = this.networkTypeOverride;
                }
                if (i7 != i2 || this.countryCode == null) {
                    this.networkType = i2;
                    if (i2 == 1 || i2 == 0 || i2 == 8) {
                        return;
                    }
                    if (this.countryCode == null) {
                        this.countryCode = Util.getCountryCode(this.context);
                    }
                    this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(i2);
                    long elapsedRealtime = this.clock.elapsedRealtime();
                    maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (elapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = elapsedRealtime;
                    this.sampleBytesTransferred = 0L;
                    this.totalBytesTransferred = 0L;
                    this.totalElapsedTimeMs = 0L;
                    this.slidingPercentile.reset();
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        v.checkNotNull(handler);
        v.checkNotNull(eventListener);
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public final /* synthetic */ long getTimeToFirstByteEstimateUs() {
        return a.a(this);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z6, int i2) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z6)) {
            this.sampleBytesTransferred += i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
    
        if (r10.totalBytesTransferred >= android.support.v4.media.session.PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) goto L22;
     */
    @Override // androidx.media3.datasource.TransferListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void onTransferEnd(androidx.media3.datasource.DataSource r11, androidx.media3.datasource.DataSpec r12, boolean r13) {
        /*
            r10 = this;
            monitor-enter(r10)
            boolean r11 = isTransferAtFullNetworkSpeed(r12, r13)     // Catch: java.lang.Throwable -> L72
            if (r11 != 0) goto L9
            monitor-exit(r10)
            return
        L9:
            int r11 = r10.streamCount     // Catch: java.lang.Throwable -> L72
            r12 = 1
            if (r11 <= 0) goto L10
            r11 = r12
            goto L11
        L10:
            r11 = 0
        L11:
            P3.v.checkState(r11)     // Catch: java.lang.Throwable -> L72
            androidx.media3.common.util.Clock r11 = r10.clock     // Catch: java.lang.Throwable -> L72
            long r0 = r11.elapsedRealtime()     // Catch: java.lang.Throwable -> L72
            long r2 = r10.sampleStartTimeMs     // Catch: java.lang.Throwable -> L72
            long r2 = r0 - r2
            int r5 = (int) r2     // Catch: java.lang.Throwable -> L72
            long r2 = r10.totalElapsedTimeMs     // Catch: java.lang.Throwable -> L72
            long r6 = (long) r5     // Catch: java.lang.Throwable -> L72
            long r2 = r2 + r6
            r10.totalElapsedTimeMs = r2     // Catch: java.lang.Throwable -> L72
            long r2 = r10.totalBytesTransferred     // Catch: java.lang.Throwable -> L72
            long r6 = r10.sampleBytesTransferred     // Catch: java.lang.Throwable -> L72
            long r2 = r2 + r6
            r10.totalBytesTransferred = r2     // Catch: java.lang.Throwable -> L72
            if (r5 <= 0) goto L75
            float r11 = (float) r6     // Catch: java.lang.Throwable -> L72
            r13 = 1174011904(0x45fa0000, float:8000.0)
            float r11 = r11 * r13
            float r13 = (float) r5     // Catch: java.lang.Throwable -> L72
            float r11 = r11 / r13
            androidx.media3.exoplayer.upstream.SlidingPercentile r13 = r10.slidingPercentile     // Catch: java.lang.Throwable -> L72
            double r2 = (double) r6     // Catch: java.lang.Throwable -> L72
            double r2 = java.lang.Math.sqrt(r2)     // Catch: java.lang.Throwable -> L72
            int r2 = (int) r2     // Catch: java.lang.Throwable -> L72
            r13.addSample(r2, r11)     // Catch: java.lang.Throwable -> L72
            long r2 = r10.totalElapsedTimeMs     // Catch: java.lang.Throwable -> L72
            r6 = 2000(0x7d0, double:9.88E-321)
            int r11 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r11 >= 0) goto L55
            long r2 = r10.totalBytesTransferred     // Catch: java.lang.Throwable -> L51
            r6 = 524288(0x80000, double:2.590327E-318)
            int r11 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r11 < 0) goto L60
            goto L55
        L51:
            r0 = move-exception
            r11 = r0
            r4 = r10
            goto L7d
        L55:
            androidx.media3.exoplayer.upstream.SlidingPercentile r11 = r10.slidingPercentile     // Catch: java.lang.Throwable -> L72
            r13 = 1056964608(0x3f000000, float:0.5)
            float r11 = r11.getPercentile(r13)     // Catch: java.lang.Throwable -> L72
            long r2 = (long) r11     // Catch: java.lang.Throwable -> L72
            r10.bitrateEstimate = r2     // Catch: java.lang.Throwable -> L72
        L60:
            long r6 = r10.sampleBytesTransferred     // Catch: java.lang.Throwable -> L72
            long r8 = r10.bitrateEstimate     // Catch: java.lang.Throwable -> L72
            r4 = r10
            r4.maybeNotifyBandwidthSample(r5, r6, r8)     // Catch: java.lang.Throwable -> L6f
            r4.sampleStartTimeMs = r0     // Catch: java.lang.Throwable -> L6f
            r0 = 0
            r4.sampleBytesTransferred = r0     // Catch: java.lang.Throwable -> L6f
            goto L76
        L6f:
            r0 = move-exception
        L70:
            r11 = r0
            goto L7d
        L72:
            r0 = move-exception
            r4 = r10
            goto L70
        L75:
            r4 = r10
        L76:
            int r11 = r4.streamCount     // Catch: java.lang.Throwable -> L6f
            int r11 = r11 - r12
            r4.streamCount = r11     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r10)
            return
        L7d:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L6f
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.upstream.DefaultBandwidthMeter.onTransferEnd(androidx.media3.datasource.DataSource, androidx.media3.datasource.DataSpec, boolean):void");
    }

    @Override // androidx.media3.datasource.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z6) {
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        try {
            if (isTransferAtFullNetworkSpeed(dataSpec, z6)) {
                if (this.streamCount == 0) {
                    this.sampleStartTimeMs = this.clock.elapsedRealtime();
                }
                this.streamCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i2) {
        this.networkTypeOverride = i2;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i2);
    }

    public static final class Builder {
        private Clock clock;
        private final Context context;
        private final Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
            HashMap hashMap = new HashMap(8);
            this.initialBitrateEstimates = hashMap;
            hashMap.put(0, 1000000L);
            hashMap.put(2, Long.valueOf(C.TIME_UNSET));
            hashMap.put(3, Long.valueOf(C.TIME_UNSET));
            hashMap.put(4, Long.valueOf(C.TIME_UNSET));
            hashMap.put(5, Long.valueOf(C.TIME_UNSET));
            hashMap.put(10, Long.valueOf(C.TIME_UNSET));
            hashMap.put(9, Long.valueOf(C.TIME_UNSET));
            hashMap.put(7, Long.valueOf(C.TIME_UNSET));
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j7) {
            Iterator<Integer> it = this.initialBitrateEstimates.keySet().iterator();
            while (it.hasNext()) {
                setInitialBitrateEstimate(it.next().intValue(), j7);
            }
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean z6) {
            this.resetOnNetworkTypeChange = z6;
            return this;
        }

        public Builder setSlidingWindowMaxWeight(int i2) {
            this.slidingWindowMaxWeight = i2;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i2, long j7) {
            this.initialBitrateEstimates.put(Integer.valueOf(i2), Long.valueOf(j7));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            String upperCase = AbstractC0226a.toUpperCase(str);
            for (Integer num : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(num.intValue(), DefaultBandwidthMeter.getInitialBitrateEstimatesForCountry(upperCase, num.intValue()));
            }
            return this;
        }
    }

    private DefaultBandwidthMeter(Context context, Map<Integer, Long> map, int i2, Clock clock, boolean z6) {
        this.context = context == null ? null : context.getApplicationContext();
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) map);
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new SlidingPercentile(i2);
        this.clock = clock;
        this.resetOnNetworkTypeChange = z6;
        if (context == null) {
            this.networkType = 0;
            this.bitrateEstimate = 1000000L;
            return;
        }
        NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new f(this, 0), BackgroundExecutor.get());
    }
}
