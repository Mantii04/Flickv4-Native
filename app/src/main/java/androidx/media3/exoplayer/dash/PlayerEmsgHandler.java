package androidx.media3.exoplayer.dash;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.upstream.Allocator;
import com.uwetrottmann.trakt5.TraktV2;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import v0.p0;
import v0.q0;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public final class PlayerEmsgHandler implements Handler.Callback {
    private static final int EMSG_MANIFEST_EXPIRED = 1;
    private final Allocator allocator;
    private boolean chunkLoadedCompletedSinceLastManifestRefreshRequest;
    private long expiredManifestPublishTimeUs;
    private boolean isWaitingForManifestRefresh;
    private DashManifest manifest;
    private final PlayerEmsgCallback playerEmsgCallback;
    private boolean released;
    private final TreeMap<Long, Long> manifestPublishTimeToExpiryTimeUs = new TreeMap<>();
    private final Handler handler = Util.createHandlerForCurrentLooper(this);
    private final G0.b decoder = new G0.b();

    public static final class ManifestExpiryEventInfo {
        public final long eventTimeUs;
        public final long manifestPublishTimeMsInEmsg;

        public ManifestExpiryEventInfo(long j7, long j8) {
            this.eventTimeUs = j7;
            this.manifestPublishTimeMsInEmsg = j8;
        }
    }

    public interface PlayerEmsgCallback {
        void onDashManifestPublishTimeExpired(long j7);

        void onDashManifestRefreshRequested();
    }

    public final class PlayerTrackEmsgHandler implements r0 {
        private final SampleQueue sampleQueue;
        private final FormatHolder formatHolder = new FormatHolder();
        private final E0.b buffer = new E0.b();
        private long maxLoadedChunkEndTimeUs = C.TIME_UNSET;

        public PlayerTrackEmsgHandler(Allocator allocator) {
            this.sampleQueue = SampleQueue.createWithoutDrm(allocator);
        }

        private E0.b dequeueSample() {
            this.buffer.clear();
            if (this.sampleQueue.read(this.formatHolder, this.buffer, 0, false) != -4) {
                return null;
            }
            this.buffer.flip();
            return this.buffer;
        }

        private void onManifestExpiredMessageEncountered(long j7, long j8) {
            PlayerEmsgHandler.this.handler.sendMessage(PlayerEmsgHandler.this.handler.obtainMessage(1, new ManifestExpiryEventInfo(j7, j8)));
        }

        private void parseAndDiscardSamples() {
            while (this.sampleQueue.isReady(false)) {
                E0.b dequeueSample = dequeueSample();
                if (dequeueSample != null) {
                    long j7 = dequeueSample.timeUs;
                    Metadata decode = PlayerEmsgHandler.this.decoder.decode(dequeueSample);
                    if (decode != null) {
                        G0.a aVar = (G0.a) decode.get(0);
                        if (PlayerEmsgHandler.isPlayerEmsgEvent(aVar.f1006a, aVar.f1007b)) {
                            parsePlayerEmsgEvent(j7, aVar);
                        }
                    }
                }
            }
            this.sampleQueue.discardToRead();
        }

        private void parsePlayerEmsgEvent(long j7, G0.a aVar) {
            long manifestPublishTimeMsInEmsg = PlayerEmsgHandler.getManifestPublishTimeMsInEmsg(aVar);
            if (manifestPublishTimeMsInEmsg == C.TIME_UNSET) {
                return;
            }
            onManifestExpiredMessageEncountered(j7, manifestPublishTimeMsInEmsg);
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ void durationUs(long j7) {
            p0.a(this, j7);
        }

        @Override // v0.r0
        public void format(Format format) {
            this.sampleQueue.format(format);
        }

        public boolean maybeRefreshManifestBeforeLoadingNextChunk(long j7) {
            return PlayerEmsgHandler.this.maybeRefreshManifestBeforeLoadingNextChunk(j7);
        }

        public void onChunkLoadCompleted(Chunk chunk) {
            long j7 = this.maxLoadedChunkEndTimeUs;
            if (j7 == C.TIME_UNSET || chunk.endTimeUs > j7) {
                this.maxLoadedChunkEndTimeUs = chunk.endTimeUs;
            }
            PlayerEmsgHandler.this.onChunkLoadCompleted(chunk);
        }

        public boolean onChunkLoadError(Chunk chunk) {
            long j7 = this.maxLoadedChunkEndTimeUs;
            return PlayerEmsgHandler.this.onChunkLoadError(j7 != C.TIME_UNSET && j7 < chunk.startTimeUs);
        }

        public void release() {
            this.sampleQueue.release();
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) throws IOException {
            return p0.b(this, dataReader, i2, z6);
        }

        @Override // v0.r0
        public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
            this.sampleQueue.sampleMetadata(j7, i2, i7, i8, q0Var);
            parseAndDiscardSamples();
        }

        @Override // v0.r0
        public /* bridge */ /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
            p0.c(this, parsableByteArray, i2);
        }

        @Override // v0.r0
        public int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
            return this.sampleQueue.sampleData(dataReader, i2, z6);
        }

        @Override // v0.r0
        public void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
            this.sampleQueue.sampleData(parsableByteArray, i2);
        }
    }

    public PlayerEmsgHandler(DashManifest dashManifest, PlayerEmsgCallback playerEmsgCallback, Allocator allocator) {
        this.manifest = dashManifest;
        this.playerEmsgCallback = playerEmsgCallback;
        this.allocator = allocator;
    }

    private Map.Entry<Long, Long> ceilingExpiryEntryForPublishTime(long j7) {
        return this.manifestPublishTimeToExpiryTimeUs.ceilingEntry(Long.valueOf(j7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getManifestPublishTimeMsInEmsg(G0.a aVar) {
        try {
            return Util.parseXsDateTime(Util.fromUtf8Bytes(aVar.f1010e));
        } catch (ParserException unused) {
            return C.TIME_UNSET;
        }
    }

    private void handleManifestExpiredMessage(long j7, long j8) {
        Long l7 = this.manifestPublishTimeToExpiryTimeUs.get(Long.valueOf(j8));
        if (l7 == null) {
            this.manifestPublishTimeToExpiryTimeUs.put(Long.valueOf(j8), Long.valueOf(j7));
        } else if (l7.longValue() > j7) {
            this.manifestPublishTimeToExpiryTimeUs.put(Long.valueOf(j8), Long.valueOf(j7));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPlayerEmsgEvent(String str, String str2) {
        if ("urn:mpeg:dash:event:2012".equals(str)) {
            return "1".equals(str2) || TraktV2.API_VERSION.equals(str2) || "3".equals(str2);
        }
        return false;
    }

    private void maybeNotifyDashManifestRefreshNeeded() {
        if (this.chunkLoadedCompletedSinceLastManifestRefreshRequest) {
            this.isWaitingForManifestRefresh = true;
            this.chunkLoadedCompletedSinceLastManifestRefreshRequest = false;
            this.playerEmsgCallback.onDashManifestRefreshRequested();
        }
    }

    private void notifyManifestPublishTimeExpired() {
        this.playerEmsgCallback.onDashManifestPublishTimeExpired(this.expiredManifestPublishTimeUs);
    }

    private void removePreviouslyExpiredManifestPublishTimeValues() {
        Iterator<Map.Entry<Long, Long>> it = this.manifestPublishTimeToExpiryTimeUs.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().longValue() < this.manifest.publishTimeMs) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.released) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        ManifestExpiryEventInfo manifestExpiryEventInfo = (ManifestExpiryEventInfo) message.obj;
        handleManifestExpiredMessage(manifestExpiryEventInfo.eventTimeUs, manifestExpiryEventInfo.manifestPublishTimeMsInEmsg);
        return true;
    }

    public boolean maybeRefreshManifestBeforeLoadingNextChunk(long j7) {
        DashManifest dashManifest = this.manifest;
        boolean z6 = false;
        if (!dashManifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        Map.Entry<Long, Long> ceilingExpiryEntryForPublishTime = ceilingExpiryEntryForPublishTime(dashManifest.publishTimeMs);
        if (ceilingExpiryEntryForPublishTime != null && ceilingExpiryEntryForPublishTime.getValue().longValue() < j7) {
            this.expiredManifestPublishTimeUs = ceilingExpiryEntryForPublishTime.getKey().longValue();
            notifyManifestPublishTimeExpired();
            z6 = true;
        }
        if (z6) {
            maybeNotifyDashManifestRefreshNeeded();
        }
        return z6;
    }

    public PlayerTrackEmsgHandler newPlayerTrackEmsgHandler() {
        return new PlayerTrackEmsgHandler(this.allocator);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        this.chunkLoadedCompletedSinceLastManifestRefreshRequest = true;
    }

    public boolean onChunkLoadError(boolean z6) {
        if (!this.manifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        if (!z6) {
            return false;
        }
        maybeNotifyDashManifestRefreshNeeded();
        return true;
    }

    public void release() {
        this.released = true;
        this.handler.removeCallbacksAndMessages(null);
    }

    public void updateManifest(DashManifest dashManifest) {
        this.isWaitingForManifestRefresh = false;
        this.expiredManifestPublishTimeUs = C.TIME_UNSET;
        this.manifest = dashManifest;
        removePreviouslyExpiredManifestPublishTimeValues();
    }
}
