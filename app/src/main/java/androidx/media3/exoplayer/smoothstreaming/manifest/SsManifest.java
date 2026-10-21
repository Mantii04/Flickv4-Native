package androidx.media3.exoplayer.smoothstreaming.manifest;

import P0.K;
import P3.v;
import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.offline.FilterableManifest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

@UnstableApi
/* loaded from: classes.dex */
public class SsManifest implements FilterableManifest<SsManifest> {
    public static final int UNSET_LOOKAHEAD = -1;
    public final long durationUs;
    public final long dvrWindowLengthUs;
    public final boolean isLive;
    public final int lookAheadCount;
    public final int majorVersion;
    public final int minorVersion;
    public final ProtectionElement protectionElement;
    public final StreamElement[] streamElements;

    public static class ProtectionElement {
        public final byte[] data;
        public final K[] trackEncryptionBoxes;
        public final UUID uuid;

        public ProtectionElement(UUID uuid, byte[] bArr, K[] kArr) {
            this.uuid = uuid;
            this.data = bArr;
            this.trackEncryptionBoxes = kArr;
        }
    }

    public SsManifest(int i2, int i7, long j7, long j8, long j9, int i8, boolean z6, ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this(i2, i7, j8 == 0 ? -9223372036854775807L : Util.scaleLargeTimestamp(j8, 1000000L, j7), j9 != 0 ? Util.scaleLargeTimestamp(j9, 1000000L, j7) : C.TIME_UNSET, i8, z6, protectionElement, streamElementArr);
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public /* bridge */ /* synthetic */ SsManifest copy(List list) {
        return copy((List<StreamKey>) list);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public final SsManifest copy(List<StreamKey> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        StreamElement streamElement = null;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            StreamKey streamKey = (StreamKey) arrayList.get(i2);
            StreamElement streamElement2 = this.streamElements[streamKey.groupIndex];
            if (streamElement2 != streamElement && streamElement != null) {
                arrayList2.add(streamElement.copy((Format[]) arrayList3.toArray(new Format[0])));
                arrayList3.clear();
            }
            arrayList3.add(streamElement2.formats[streamKey.streamIndex]);
            i2++;
            streamElement = streamElement2;
        }
        if (streamElement != null) {
            arrayList2.add(streamElement.copy((Format[]) arrayList3.toArray(new Format[0])));
        }
        return new SsManifest(this.majorVersion, this.minorVersion, this.durationUs, this.dvrWindowLengthUs, this.lookAheadCount, this.isLive, this.protectionElement, (StreamElement[]) arrayList2.toArray(new StreamElement[0]));
    }

    public static class StreamElement {
        private static final String URL_PLACEHOLDER_BITRATE_1 = "{bitrate}";
        private static final String URL_PLACEHOLDER_BITRATE_2 = "{Bitrate}";
        private static final String URL_PLACEHOLDER_START_TIME_1 = "{start time}";
        private static final String URL_PLACEHOLDER_START_TIME_2 = "{start_time}";
        private final String baseUri;
        public final int chunkCount;
        private final List<Long> chunkStartTimes;
        private final long[] chunkStartTimesUs;
        private final String chunkTemplate;
        public final int displayHeight;
        public final int displayWidth;
        public final Format[] formats;
        public final String language;
        private final long lastChunkDurationUs;
        public final int maxHeight;
        public final int maxWidth;
        public final String name;
        public final String subType;
        public final long timescale;
        public final int type;

        public StreamElement(String str, String str2, int i2, String str3, long j7, String str4, int i7, int i8, int i9, int i10, String str5, Format[] formatArr, List<Long> list, long j8) {
            this(str, str2, i2, str3, j7, str4, i7, i8, i9, i10, str5, formatArr, list, Util.scaleLargeTimestamps(list, 1000000L, j7), Util.scaleLargeTimestamp(j8, 1000000L, j7));
        }

        public Uri buildRequestUri(int i2, int i7) {
            v.checkState(this.formats != null);
            v.checkState(this.chunkStartTimes != null);
            v.checkState(i7 < this.chunkStartTimes.size());
            String num = Integer.toString(this.formats[i2].bitrate);
            String l7 = this.chunkStartTimes.get(i7).toString();
            return UriUtil.resolveToUri(this.baseUri, this.chunkTemplate.replace(URL_PLACEHOLDER_BITRATE_1, num).replace(URL_PLACEHOLDER_BITRATE_2, num).replace(URL_PLACEHOLDER_START_TIME_1, l7).replace(URL_PLACEHOLDER_START_TIME_2, l7));
        }

        public StreamElement copy(Format[] formatArr) {
            return new StreamElement(this.baseUri, this.chunkTemplate, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.chunkStartTimes, this.chunkStartTimesUs, this.lastChunkDurationUs);
        }

        public long getChunkDurationUs(int i2) {
            if (i2 == this.chunkCount - 1) {
                return this.lastChunkDurationUs;
            }
            long[] jArr = this.chunkStartTimesUs;
            return jArr[i2 + 1] - jArr[i2];
        }

        public int getChunkIndex(long j7) {
            return Util.binarySearchFloor(this.chunkStartTimesUs, j7, true, true);
        }

        public long getStartTimeUs(int i2) {
            return this.chunkStartTimesUs[i2];
        }

        private StreamElement(String str, String str2, int i2, String str3, long j7, String str4, int i7, int i8, int i9, int i10, String str5, Format[] formatArr, List<Long> list, long[] jArr, long j8) {
            this.baseUri = str;
            this.chunkTemplate = str2;
            this.type = i2;
            this.subType = str3;
            this.timescale = j7;
            this.name = str4;
            this.maxWidth = i7;
            this.maxHeight = i8;
            this.displayWidth = i9;
            this.displayHeight = i10;
            this.language = str5;
            this.formats = formatArr;
            this.chunkStartTimes = list;
            this.chunkStartTimesUs = jArr;
            this.lastChunkDurationUs = j8;
            this.chunkCount = list.size();
        }
    }

    private SsManifest(int i2, int i7, long j7, long j8, int i8, boolean z6, ProtectionElement protectionElement, StreamElement[] streamElementArr) {
        this.majorVersion = i2;
        this.minorVersion = i7;
        this.durationUs = j7;
        this.dvrWindowLengthUs = j8;
        this.lookAheadCount = i8;
        this.isLive = z6;
        this.protectionElement = protectionElement;
        this.streamElements = streamElementArr;
    }
}
