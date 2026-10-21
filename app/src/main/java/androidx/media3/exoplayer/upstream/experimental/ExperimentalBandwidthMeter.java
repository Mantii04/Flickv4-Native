package androidx.media3.exoplayer.upstream.experimental;

import P3.AbstractC0226a;
import P3.B;
import P3.v;
import android.content.Context;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.TimeToFirstByteEstimator;
import androidx.media3.exoplayer.upstream.experimental.SplitParallelSampleBandwidthEstimator;
import androidx.media3.exoplayer.upstream.f;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@UnstableApi
/* loaded from: classes.dex */
public final class ExperimentalBandwidthMeter implements BandwidthMeter, TransferListener {
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
    public static final float DEFAULT_TIME_TO_FIRST_BYTE_PERCENTILE = 0.5f;
    public static final int DEFAULT_TIME_TO_FIRST_BYTE_SAMPLES = 20;
    private final BandwidthEstimator bandwidthEstimator;
    private final Context context;
    private String countryCode;
    private long initialBitrateEstimate;
    private final ImmutableMap<Integer, Long> initialBitrateEstimates;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private final TimeToFirstByteEstimator timeToFirstByteEstimator;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.upstream.experimental.ExperimentalBandwidthMeter.getInitialBitrateCountryGroupAssignment(java.lang.String):int[]");
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

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z6) {
        return z6 && !dataSpec.isFlagSet(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i2) {
        int i7 = this.networkType;
        if (i7 == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i2 = this.networkTypeOverride;
            }
            if (i7 != i2 || this.countryCode == null) {
                this.networkType = i2;
                if (i2 != 1 && i2 != 0 && i2 != 8) {
                    if (this.countryCode == null) {
                        this.countryCode = Util.getCountryCode(this.context);
                    }
                    long initialBitrateEstimateForNetworkType = getInitialBitrateEstimateForNetworkType(i2);
                    this.initialBitrateEstimate = initialBitrateEstimateForNetworkType;
                    this.bandwidthEstimator.onNetworkTypeChange(initialBitrateEstimateForNetworkType);
                    this.timeToFirstByteEstimator.reset();
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        v.checkNotNull(handler);
        v.checkNotNull(eventListener);
        this.bandwidthEstimator.addEventListener(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        long bandwidthEstimate;
        bandwidthEstimate = this.bandwidthEstimator.getBandwidthEstimate();
        if (bandwidthEstimate == Long.MIN_VALUE) {
            bandwidthEstimate = this.initialBitrateEstimate;
        }
        return bandwidthEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getTimeToFirstByteEstimateUs() {
        return this.timeToFirstByteEstimator.getTimeToFirstByteEstimateUs();
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z6, int i2) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z6)) {
            this.bandwidthEstimator.onBytesTransferred(dataSource, i2);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z6)) {
            this.bandwidthEstimator.onTransferEnd(dataSource);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z6)) {
            this.timeToFirstByteEstimator.onTransferInitializing(dataSpec);
            this.bandwidthEstimator.onTransferInitializing(dataSource);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z6)) {
            this.timeToFirstByteEstimator.onTransferStart(dataSpec);
            this.bandwidthEstimator.onTransferStart(dataSource);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.bandwidthEstimator.removeEventListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i2) {
        this.networkTypeOverride = i2;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i2);
    }

    public static final class Builder {
        private final Context context;
        private final Map<Integer, Long> initialBitrateEstimates;
        private TimeToFirstByteEstimator timeToFirstByteEstimator = new PercentileTimeToFirstByteEstimator(20, 0.5f);
        private BandwidthEstimator bandwidthEstimator = new SplitParallelSampleBandwidthEstimator.Builder().build();
        private boolean resetOnNetworkTypeChange = true;

        public Builder(Context context) {
            this.context = context.getApplicationContext();
            HashMap hashMap = new HashMap(8);
            this.initialBitrateEstimates = hashMap;
            hashMap.put(0, 1000000L);
            Long valueOf = Long.valueOf(C.TIME_UNSET);
            hashMap.put(2, valueOf);
            hashMap.put(3, valueOf);
            hashMap.put(4, valueOf);
            hashMap.put(5, valueOf);
            hashMap.put(10, valueOf);
            hashMap.put(9, valueOf);
            hashMap.put(7, valueOf);
        }

        public ExperimentalBandwidthMeter build() {
            return new ExperimentalBandwidthMeter(this.context, this.initialBitrateEstimates, this.timeToFirstByteEstimator, this.bandwidthEstimator, this.resetOnNetworkTypeChange);
        }

        public Builder setBandwidthEstimator(BandwidthEstimator bandwidthEstimator) {
            this.bandwidthEstimator = bandwidthEstimator;
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

        public Builder setTimeToFirstByteEstimator(TimeToFirstByteEstimator timeToFirstByteEstimator) {
            this.timeToFirstByteEstimator = timeToFirstByteEstimator;
            return this;
        }

        public Builder setInitialBitrateEstimate(int i2, long j7) {
            this.initialBitrateEstimates.put(Integer.valueOf(i2), Long.valueOf(j7));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            String upperCase = AbstractC0226a.toUpperCase(str);
            for (Integer num : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(num.intValue(), ExperimentalBandwidthMeter.getInitialBitrateEstimatesForCountry(upperCase, num.intValue()));
            }
            return this;
        }
    }

    private ExperimentalBandwidthMeter(Context context, Map<Integer, Long> map, TimeToFirstByteEstimator timeToFirstByteEstimator, BandwidthEstimator bandwidthEstimator, boolean z6) {
        this.context = context == null ? null : context.getApplicationContext();
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) map);
        this.timeToFirstByteEstimator = timeToFirstByteEstimator;
        this.bandwidthEstimator = bandwidthEstimator;
        this.resetOnNetworkTypeChange = z6;
        NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.initialBitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new f(this, 1), BackgroundExecutor.get());
    }
}
