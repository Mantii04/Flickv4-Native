package androidx.media3.exoplayer.source.mediaparser;

import P3.v;
import android.media.DrmInitData;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaParser;
import android.media.MediaParser$InputReader;
import android.media.MediaParser$OutputConsumer;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.hls.o;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import v0.F;
import v0.a0;
import v0.d0;
import v0.e0;
import v0.f0;
import v0.g0;
import v0.h0;
import v0.q0;
import v0.r;
import v0.r0;

@UnstableApi
/* loaded from: classes.dex */
public final class OutputConsumerAdapterV30 implements MediaParser$OutputConsumer {
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS = "chunk-index-long-us-durations";
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS = "chunk-index-long-offsets";
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES = "chunk-index-int-sizes";
    private static final String MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES = "chunk-index-long-us-times";
    private static final String MEDIA_FORMAT_KEY_TRACK_TYPE = "track-type-string";
    private static final Pattern REGEX_CRYPTO_INFO_PATTERN;
    private static final Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> SEEK_POINT_PAIR_START;
    private static final String TAG = "OConsumerAdapterV30";
    private String containerMimeType;
    private MediaParser.SeekMap dummySeekMap;
    private final boolean expectDummySeekMap;
    private F extractorOutput;
    private r lastChunkIndex;
    private final ArrayList<q0> lastOutputCryptoDatas;
    private final ArrayList<MediaCodec.CryptoInfo> lastReceivedCryptoInfos;
    private MediaParser.SeekMap lastSeekMap;
    private List<Format> muxedCaptionFormats;
    private int primaryTrackIndex;
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private long sampleTimestampUpperLimitFilterUs;
    private final DataReaderAdapter scratchDataReaderAdapter;
    private boolean seekingDisabled;
    private TimestampAdjuster timestampAdjuster;
    private final ArrayList<Format> trackFormats;
    private final ArrayList<r0> trackOutputs;
    private boolean tracksEnded;
    private boolean tracksFoundCalled;

    public static final class DataReaderAdapter implements DataReader {
        public MediaParser$InputReader input;

        private DataReaderAdapter() {
        }

        @Override // androidx.media3.common.DataReader
        public int read(byte[] bArr, int i2, int i7) throws IOException {
            int read;
            read = o.h(Util.castNonNull(this.input)).read(bArr, i2, i7);
            return read;
        }
    }

    public static final class SeekMapAdapter implements g0 {
        private final MediaParser.SeekMap adaptedSeekMap;

        public SeekMapAdapter(MediaParser.SeekMap seekMap) {
            this.adaptedSeekMap = seekMap;
        }

        private static h0 asExoPlayerSeekPoint(MediaParser.SeekPoint seekPoint) {
            long j7;
            long j8;
            j7 = seekPoint.timeMicros;
            j8 = seekPoint.position;
            return new h0(j7, j8);
        }

        @Override // v0.g0
        public long getDurationUs() {
            long durationMicros;
            durationMicros = this.adaptedSeekMap.getDurationMicros();
            return durationMicros != -2147483648L ? durationMicros : C.TIME_UNSET;
        }

        @Override // v0.g0
        public e0 getSeekPoints(long j7) {
            Pair seekPoints;
            seekPoints = this.adaptedSeekMap.getSeekPoints(j7);
            Object obj = seekPoints.first;
            return obj == seekPoints.second ? new e0(asExoPlayerSeekPoint(o.j(obj))) : new e0(asExoPlayerSeekPoint(o.j(obj)), asExoPlayerSeekPoint(o.j(seekPoints.second)));
        }

        @Override // v0.g0
        public /* bridge */ /* synthetic */ boolean isEstimated() {
            return d0.a(this);
        }

        @Override // v0.g0
        public boolean isSeekable() {
            boolean isSeekable;
            isSeekable = this.adaptedSeekMap.isSeekable();
            return isSeekable;
        }
    }

    static {
        MediaParser.SeekPoint seekPoint;
        MediaParser.SeekPoint seekPoint2;
        seekPoint = MediaParser.SeekPoint.START;
        seekPoint2 = MediaParser.SeekPoint.START;
        SEEK_POINT_PAIR_START = Pair.create(seekPoint, seekPoint2);
        REGEX_CRYPTO_INFO_PATTERN = Pattern.compile("pattern \\(encrypt: (\\d+), skip: (\\d+)\\)");
    }

    public OutputConsumerAdapterV30() {
        this(null, -2, false);
    }

    private void ensureSpaceForTrackIndex(int i2) {
        for (int size = this.trackOutputs.size(); size <= i2; size++) {
            this.trackOutputs.add(null);
            this.trackFormats.add(null);
            this.lastReceivedCryptoInfos.add(null);
            this.lastOutputCryptoDatas.add(null);
        }
    }

    private static int getFlag(MediaFormat mediaFormat, String str, int i2) {
        int integer;
        integer = mediaFormat.getInteger(str, 0);
        if (integer != 0) {
            return i2;
        }
        return 0;
    }

    private static List<byte[]> getInitializationData(MediaFormat mediaFormat) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            StringBuilder sb = new StringBuilder("csd-");
            int i7 = i2 + 1;
            sb.append(i2);
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(sb.toString());
            if (byteBuffer == null) {
                return arrayList;
            }
            arrayList.add(MediaFormatUtil.getArray(byteBuffer));
            i2 = i7;
        }
    }

    private static String getMimeType(String str) {
        str.getClass();
        switch (str) {
            case "android.media.mediaparser.Mp4Parser":
            case "android.media.mediaparser.FragmentedMp4Parser":
                return MimeTypes.VIDEO_MP4;
            case "android.media.mediaparser.OggParser":
                return MimeTypes.AUDIO_OGG;
            case "android.media.mediaparser.TsParser":
                return MimeTypes.VIDEO_MP2T;
            case "android.media.mediaparser.AdtsParser":
                return MimeTypes.AUDIO_AAC;
            case "android.media.mediaparser.WavParser":
                return MimeTypes.AUDIO_RAW;
            case "android.media.mediaparser.PsParser":
                return MimeTypes.VIDEO_PS;
            case "android.media.mediaparser.Ac3Parser":
                return MimeTypes.AUDIO_AC3;
            case "android.media.mediaparser.AmrParser":
                return MimeTypes.AUDIO_AMR;
            case "android.media.mediaparser.FlacParser":
                return MimeTypes.AUDIO_FLAC;
            case "android.media.mediaparser.MatroskaParser":
                return MimeTypes.VIDEO_WEBM;
            case "android.media.mediaparser.Ac4Parser":
                return MimeTypes.AUDIO_AC4;
            case "android.media.mediaparser.Mp3Parser":
                return MimeTypes.AUDIO_MPEG;
            case "android.media.mediaparser.FlvParser":
                return MimeTypes.VIDEO_FLV;
            default:
                throw new IllegalArgumentException("Illegal parser name: ".concat(str));
        }
    }

    private static int getSelectionFlags(MediaFormat mediaFormat) {
        return getFlag(mediaFormat, "is-forced-subtitle", 2) | getFlag(mediaFormat, "is-autoselect", 4) | getFlag(mediaFormat, "is-default", 1);
    }

    private void maybeEndTracks() {
        if (!this.tracksFoundCalled || this.tracksEnded) {
            return;
        }
        int size = this.trackOutputs.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.trackOutputs.get(i2) == null) {
                return;
            }
        }
        this.extractorOutput.endTracks();
        this.tracksEnded = true;
    }

    private boolean maybeObtainChunkIndex(MediaFormat mediaFormat) {
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES);
        if (byteBuffer == null) {
            return false;
        }
        IntBuffer asIntBuffer = byteBuffer.asIntBuffer();
        LongBuffer asLongBuffer = ((ByteBuffer) v.checkNotNull(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS))).asLongBuffer();
        LongBuffer asLongBuffer2 = ((ByteBuffer) v.checkNotNull(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS))).asLongBuffer();
        LongBuffer asLongBuffer3 = ((ByteBuffer) v.checkNotNull(mediaFormat.getByteBuffer(MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES))).asLongBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        long[] jArr = new long[asLongBuffer.remaining()];
        long[] jArr2 = new long[asLongBuffer2.remaining()];
        long[] jArr3 = new long[asLongBuffer3.remaining()];
        asIntBuffer.get(iArr);
        asLongBuffer.get(jArr);
        asLongBuffer2.get(jArr2);
        asLongBuffer3.get(jArr3);
        r rVar = new r(iArr, jArr, jArr2, jArr3);
        this.lastChunkIndex = rVar;
        this.extractorOutput.seekMap(rVar);
        return true;
    }

    private q0 toExoPlayerCryptoData(int i2, MediaCodec.CryptoInfo cryptoInfo) {
        int i7;
        int i8;
        if (cryptoInfo == null) {
            return null;
        }
        if (this.lastReceivedCryptoInfos.get(i2) == cryptoInfo) {
            return (q0) v.checkNotNull(this.lastOutputCryptoDatas.get(i2));
        }
        try {
            Matcher matcher = REGEX_CRYPTO_INFO_PATTERN.matcher(cryptoInfo.toString());
            matcher.find();
            i7 = Integer.parseInt((String) Util.castNonNull(matcher.group(1)));
            i8 = Integer.parseInt((String) Util.castNonNull(matcher.group(2)));
        } catch (RuntimeException e3) {
            Log.e(TAG, "Unexpected error while parsing CryptoInfo: " + cryptoInfo, e3);
            i7 = 0;
            i8 = 0;
        }
        q0 q0Var = new q0(cryptoInfo.mode, cryptoInfo.key, i7, i8);
        this.lastReceivedCryptoInfos.set(i2, cryptoInfo);
        this.lastOutputCryptoDatas.set(i2, q0Var);
        return q0Var;
    }

    private static DrmInitData toExoPlayerDrmInitData(String str, android.media.DrmInitData drmInitData) {
        int schemeInitDataCount;
        DrmInitData.SchemeInitData schemeInitDataAt;
        UUID uuid;
        String str2;
        byte[] bArr;
        if (drmInitData == null) {
            return null;
        }
        schemeInitDataCount = drmInitData.getSchemeInitDataCount();
        DrmInitData.SchemeData[] schemeDataArr = new DrmInitData.SchemeData[schemeInitDataCount];
        for (int i2 = 0; i2 < schemeInitDataCount; i2++) {
            schemeInitDataAt = drmInitData.getSchemeInitDataAt(i2);
            uuid = schemeInitDataAt.uuid;
            str2 = schemeInitDataAt.mimeType;
            bArr = schemeInitDataAt.data;
            schemeDataArr[i2] = new DrmInitData.SchemeData(uuid, str2, bArr);
        }
        return new androidx.media3.common.DrmInitData(str, schemeDataArr);
    }

    private Format toExoPlayerFormat(MediaParser.TrackData trackData) {
        MediaFormat mediaFormat;
        int integer;
        android.media.DrmInitData drmInitData;
        int integer2;
        int integer3;
        float f3;
        int integer4;
        int integer5;
        int integer6;
        int integer7;
        int integer8;
        int integer9;
        int integer10;
        int integer11;
        float f7;
        long j7;
        mediaFormat = trackData.mediaFormat;
        String string = mediaFormat.getString("mime");
        integer = mediaFormat.getInteger("caption-service-number", -1);
        Format.Builder builder = new Format.Builder();
        String string2 = mediaFormat.getString("crypto-mode-fourcc");
        drmInitData = trackData.drmInitData;
        Format.Builder containerMimeType = builder.setDrmInitData(toExoPlayerDrmInitData(string2, drmInitData)).setContainerMimeType(this.containerMimeType);
        integer2 = mediaFormat.getInteger("bitrate", -1);
        Format.Builder peakBitrate = containerMimeType.setPeakBitrate(integer2);
        integer3 = mediaFormat.getInteger("channel-count", -1);
        Format.Builder codecs = peakBitrate.setChannelCount(integer3).setColorInfo(MediaFormatUtil.getColorInfo(mediaFormat)).setSampleMimeType(string).setCodecs(mediaFormat.getString("codecs-string"));
        f3 = mediaFormat.getFloat("frame-rate", -1.0f);
        Format.Builder frameRate = codecs.setFrameRate(f3);
        integer4 = mediaFormat.getInteger("width", -1);
        Format.Builder width = frameRate.setWidth(integer4);
        integer5 = mediaFormat.getInteger("height", -1);
        Format.Builder language = width.setHeight(integer5).setInitializationData(getInitializationData(mediaFormat)).setLanguage(mediaFormat.getString("language"));
        integer6 = mediaFormat.getInteger("max-input-size", -1);
        Format.Builder maxInputSize = language.setMaxInputSize(integer6);
        integer7 = mediaFormat.getInteger("exo-pcm-encoding", -1);
        Format.Builder pcmEncoding = maxInputSize.setPcmEncoding(integer7);
        integer8 = mediaFormat.getInteger("rotation-degrees", 0);
        Format.Builder rotationDegrees = pcmEncoding.setRotationDegrees(integer8);
        integer9 = mediaFormat.getInteger("sample-rate", -1);
        Format.Builder selectionFlags = rotationDegrees.setSampleRate(integer9).setSelectionFlags(getSelectionFlags(mediaFormat));
        integer10 = mediaFormat.getInteger("encoder-delay", 0);
        Format.Builder encoderDelay = selectionFlags.setEncoderDelay(integer10);
        integer11 = mediaFormat.getInteger("encoder-padding", 0);
        Format.Builder encoderPadding = encoderDelay.setEncoderPadding(integer11);
        f7 = mediaFormat.getFloat("pixel-width-height-ratio-float", 1.0f);
        Format.Builder pixelWidthHeightRatio = encoderPadding.setPixelWidthHeightRatio(f7);
        j7 = mediaFormat.getLong("subsample-offset-us-long", Long.MAX_VALUE);
        Format.Builder accessibilityChannel = pixelWidthHeightRatio.setSubsampleOffsetUs(j7).setAccessibilityChannel(integer);
        int i2 = 0;
        while (true) {
            if (i2 >= this.muxedCaptionFormats.size()) {
                break;
            }
            Format format = this.muxedCaptionFormats.get(i2);
            if (Objects.equals(format.sampleMimeType, string) && format.accessibilityChannel == integer) {
                accessibilityChannel.setLanguage(format.language).setRoleFlags(format.roleFlags).setSelectionFlags(format.selectionFlags).setLabel(format.label).setLabels(format.labels).setMetadata(format.metadata);
                break;
            }
            i2++;
        }
        return accessibilityChannel.build();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int toTrackTypeConstant(String str) {
        char c7;
        if (str == null) {
            return -1;
        }
        switch (str.hashCode()) {
            case -450004177:
                if (str.equals("metadata")) {
                    c7 = 0;
                    break;
                }
                c7 = 65535;
                break;
            case -284840886:
                if (str.equals("unknown")) {
                    c7 = 1;
                    break;
                }
                c7 = 65535;
                break;
            case 3556653:
                if (str.equals(MimeTypes.BASE_TYPE_TEXT)) {
                    c7 = 2;
                    break;
                }
                c7 = 65535;
                break;
            case 93166550:
                if (str.equals(MimeTypes.BASE_TYPE_AUDIO)) {
                    c7 = 3;
                    break;
                }
                c7 = 65535;
                break;
            case 112202875:
                if (str.equals(MimeTypes.BASE_TYPE_VIDEO)) {
                    c7 = 4;
                    break;
                }
                c7 = 65535;
                break;
            default:
                c7 = 65535;
                break;
        }
        switch (c7) {
            case 0:
                return 5;
            case 1:
                return -1;
            case 2:
                return 3;
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return MimeTypes.getTrackType(str);
        }
    }

    public void disableSeeking() {
        this.seekingDisabled = true;
    }

    public r getChunkIndex() {
        return this.lastChunkIndex;
    }

    public MediaParser.SeekMap getDummySeekMap() {
        return this.dummySeekMap;
    }

    public Format[] getSampleFormats() {
        if (!this.tracksFoundCalled) {
            return null;
        }
        Format[] formatArr = new Format[this.trackFormats.size()];
        for (int i2 = 0; i2 < this.trackFormats.size(); i2++) {
            formatArr[i2] = (Format) v.checkNotNull(this.trackFormats.get(i2));
        }
        return formatArr;
    }

    public Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> getSeekPoints(long j7) {
        Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> seekPoints;
        MediaParser.SeekMap seekMap = this.lastSeekMap;
        if (seekMap == null) {
            return SEEK_POINT_PAIR_START;
        }
        seekPoints = seekMap.getSeekPoints(j7);
        return seekPoints;
    }

    public void onSampleCompleted(int i2, long j7, int i7, int i8, int i9, MediaCodec.CryptoInfo cryptoInfo) {
        long j8 = this.sampleTimestampUpperLimitFilterUs;
        if (j8 == C.TIME_UNSET || j7 < j8) {
            TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
            if (timestampAdjuster != null) {
                j7 = timestampAdjuster.adjustSampleTimestamp(j7);
            }
            ((r0) v.checkNotNull(this.trackOutputs.get(i2))).sampleMetadata(j7, i7, i8, i9, toExoPlayerCryptoData(i2, cryptoInfo));
        }
    }

    public void onSampleDataFound(int i2, MediaParser$InputReader mediaParser$InputReader) throws IOException {
        long length;
        ensureSpaceForTrackIndex(i2);
        this.scratchDataReaderAdapter.input = mediaParser$InputReader;
        r0 r0Var = this.trackOutputs.get(i2);
        if (r0Var == null) {
            r0Var = this.extractorOutput.track(i2, -1);
            this.trackOutputs.set(i2, r0Var);
        }
        DataReaderAdapter dataReaderAdapter = this.scratchDataReaderAdapter;
        length = mediaParser$InputReader.getLength();
        r0Var.sampleData((DataReader) dataReaderAdapter, (int) length, true);
    }

    public void onSeekMapFound(MediaParser.SeekMap seekMap) {
        long durationMicros;
        g0 seekMapAdapter;
        if (this.expectDummySeekMap && this.dummySeekMap == null) {
            this.dummySeekMap = seekMap;
            return;
        }
        this.lastSeekMap = seekMap;
        durationMicros = seekMap.getDurationMicros();
        F f3 = this.extractorOutput;
        if (this.seekingDisabled) {
            if (durationMicros == -2147483648L) {
                durationMicros = C.TIME_UNSET;
            }
            seekMapAdapter = new f0(durationMicros);
        } else {
            seekMapAdapter = new SeekMapAdapter(seekMap);
        }
        f3.seekMap(seekMapAdapter);
    }

    public void onTrackCountFound(int i2) {
        this.tracksFoundCalled = true;
        maybeEndTracks();
    }

    public void onTrackDataFound(int i2, MediaParser.TrackData trackData) {
        MediaFormat mediaFormat;
        MediaFormat mediaFormat2;
        MediaFormat mediaFormat3;
        String string;
        mediaFormat = trackData.mediaFormat;
        if (maybeObtainChunkIndex(mediaFormat)) {
            return;
        }
        ensureSpaceForTrackIndex(i2);
        r0 r0Var = this.trackOutputs.get(i2);
        if (r0Var == null) {
            mediaFormat2 = trackData.mediaFormat;
            String string2 = mediaFormat2.getString(MEDIA_FORMAT_KEY_TRACK_TYPE);
            if (string2 != null) {
                string = string2;
            } else {
                mediaFormat3 = trackData.mediaFormat;
                string = mediaFormat3.getString("mime");
            }
            int trackTypeConstant = toTrackTypeConstant(string);
            if (trackTypeConstant == this.primaryTrackType) {
                this.primaryTrackIndex = i2;
            }
            r0 track = this.extractorOutput.track(i2, trackTypeConstant);
            this.trackOutputs.set(i2, track);
            if (string2 != null) {
                return;
            } else {
                r0Var = track;
            }
        }
        Format exoPlayerFormat = toExoPlayerFormat(trackData);
        Format format = this.primaryTrackManifestFormat;
        r0Var.format((format == null || i2 != this.primaryTrackIndex) ? exoPlayerFormat : exoPlayerFormat.withManifestFormatInfo(format));
        this.trackFormats.set(i2, exoPlayerFormat);
        maybeEndTracks();
    }

    public void setExtractorOutput(F f3) {
        this.extractorOutput = f3;
    }

    public void setMuxedCaptionFormats(List<Format> list) {
        this.muxedCaptionFormats = list;
    }

    public void setSampleTimestampUpperLimitFilterUs(long j7) {
        this.sampleTimestampUpperLimitFilterUs = j7;
    }

    public void setSelectedParserName(String str) {
        this.containerMimeType = getMimeType(str);
    }

    public void setTimestampAdjuster(TimestampAdjuster timestampAdjuster) {
        this.timestampAdjuster = timestampAdjuster;
    }

    public OutputConsumerAdapterV30(Format format, int i2, boolean z6) {
        this.expectDummySeekMap = z6;
        this.primaryTrackManifestFormat = format;
        this.primaryTrackType = i2;
        this.trackOutputs = new ArrayList<>();
        this.trackFormats = new ArrayList<>();
        this.lastReceivedCryptoInfos = new ArrayList<>();
        this.lastOutputCryptoDatas = new ArrayList<>();
        this.scratchDataReaderAdapter = new DataReaderAdapter();
        this.extractorOutput = new a0();
        this.sampleTimestampUpperLimitFilterUs = C.TIME_UNSET;
        this.muxedCaptionFormats = ImmutableList.of();
    }
}
