package androidx.media3.exoplayer.upstream;

import P3.r;
import P3.v;
import Q3.x0;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.w;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;

@UnstableApi
/* loaded from: classes.dex */
public final class CmcdData {
    private static final r COMMA_JOINER = r.on(",");
    public static final String OBJECT_TYPE_AUDIO_ONLY = "a";
    public static final String OBJECT_TYPE_INIT_SEGMENT = "i";
    public static final String OBJECT_TYPE_MANIFEST = "m";
    public static final String OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO = "av";
    public static final String OBJECT_TYPE_VIDEO_ONLY = "v";
    public static final String STREAMING_FORMAT_DASH = "d";
    public static final String STREAMING_FORMAT_HLS = "h";
    public static final String STREAMING_FORMAT_SS = "s";
    public static final String STREAM_TYPE_LIVE = "l";
    public static final String STREAM_TYPE_VOD = "v";
    private final CmcdObject cmcdObject;
    private final CmcdRequest cmcdRequest;
    private final CmcdSession cmcdSession;
    private final CmcdStatus cmcdStatus;
    private final int dataTransmissionMode;

    public static final class CmcdObject {
        public final int bitrateKbps;
        public final ImmutableList<String> customDataList;
        public final long objectDurationMs;
        public final String objectType;
        public final int topBitrateKbps;

        public static final class Builder {
            private String objectType;
            private int bitrateKbps = C.RATE_UNSET_INT;
            private int topBitrateKbps = C.RATE_UNSET_INT;
            private long objectDurationMs = C.TIME_UNSET;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdObject build() {
                return new CmcdObject(this);
            }

            public Builder setBitrateKbps(int i2) {
                v.checkArgument(i2 >= 0 || i2 == -2147483647);
                this.bitrateKbps = i2;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setObjectDurationMs(long j7) {
                v.checkArgument(j7 >= 0 || j7 == C.TIME_UNSET);
                this.objectDurationMs = j7;
                return this;
            }

            public Builder setObjectType(String str) {
                this.objectType = str;
                return this;
            }

            public Builder setTopBitrateKbps(int i2) {
                v.checkArgument(i2 >= 0 || i2 == -2147483647);
                this.topBitrateKbps = i2;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (this.bitrateKbps != -2147483647) {
                arrayList.add("br=" + this.bitrateKbps);
            }
            if (this.topBitrateKbps != -2147483647) {
                arrayList.add("tb=" + this.topBitrateKbps);
            }
            if (this.objectDurationMs != C.TIME_UNSET) {
                arrayList.add("d=" + this.objectDurationMs);
            }
            if (!TextUtils.isEmpty(this.objectType)) {
                arrayList.add("ot=" + this.objectType);
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_OBJECT, arrayList);
        }

        private CmcdObject(Builder builder) {
            this.bitrateKbps = builder.bitrateKbps;
            this.topBitrateKbps = builder.topBitrateKbps;
            this.objectDurationMs = builder.objectDurationMs;
            this.objectType = builder.objectType;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class CmcdRequest {
        public final long bufferLengthMs;
        public final ImmutableList<String> customDataList;
        public final long deadlineMs;
        public final long measuredThroughputInKbps;
        public final String nextObjectRequest;
        public final String nextRangeRequest;
        public final boolean startup;

        public static final class Builder {
            private String nextObjectRequest;
            private String nextRangeRequest;
            private boolean startup;
            private long bufferLengthMs = C.TIME_UNSET;
            private long measuredThroughputInKbps = -2147483647L;
            private long deadlineMs = C.TIME_UNSET;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdRequest build() {
                return new CmcdRequest(this);
            }

            public Builder setBufferLengthMs(long j7) {
                if (j7 == C.TIME_UNSET) {
                    this.bufferLengthMs = j7;
                    return this;
                }
                if (j7 < 0) {
                    throw new IllegalArgumentException();
                }
                this.bufferLengthMs = ((j7 + 50) / 100) * 100;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setDeadlineMs(long j7) {
                if (j7 == C.TIME_UNSET) {
                    this.deadlineMs = j7;
                    return this;
                }
                if (j7 < 0) {
                    throw new IllegalArgumentException();
                }
                this.deadlineMs = ((j7 + 50) / 100) * 100;
                return this;
            }

            public Builder setMeasuredThroughputInKbps(long j7) {
                if (j7 == -2147483647L) {
                    this.measuredThroughputInKbps = j7;
                    return this;
                }
                if (j7 < 0) {
                    throw new IllegalArgumentException();
                }
                this.measuredThroughputInKbps = ((j7 + 50) / 100) * 100;
                return this;
            }

            public Builder setNextObjectRequest(String str) {
                this.nextObjectRequest = str == null ? null : Uri.encode(str);
                return this;
            }

            public Builder setNextRangeRequest(String str) {
                this.nextRangeRequest = str;
                return this;
            }

            public Builder setStartup(boolean z6) {
                this.startup = z6;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (this.bufferLengthMs != C.TIME_UNSET) {
                arrayList.add("bl=" + this.bufferLengthMs);
            }
            if (this.measuredThroughputInKbps != -2147483647L) {
                arrayList.add("mtp=" + this.measuredThroughputInKbps);
            }
            if (this.deadlineMs != C.TIME_UNSET) {
                arrayList.add("dl=" + this.deadlineMs);
            }
            if (this.startup) {
                arrayList.add(CmcdConfiguration.KEY_STARTUP);
            }
            if (!TextUtils.isEmpty(this.nextObjectRequest)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_NEXT_OBJECT_REQUEST, this.nextObjectRequest));
            }
            if (!TextUtils.isEmpty(this.nextRangeRequest)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_NEXT_RANGE_REQUEST, this.nextRangeRequest));
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_REQUEST, arrayList);
        }

        private CmcdRequest(Builder builder) {
            this.bufferLengthMs = builder.bufferLengthMs;
            this.measuredThroughputInKbps = builder.measuredThroughputInKbps;
            this.deadlineMs = builder.deadlineMs;
            this.startup = builder.startup;
            this.nextObjectRequest = builder.nextObjectRequest;
            this.nextRangeRequest = builder.nextRangeRequest;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class CmcdSession {
        public static final int VERSION = 1;
        public final String contentId;
        public final ImmutableList<String> customDataList;
        public final float playbackRate;
        public final String sessionId;
        public final String streamType;
        public final String streamingFormat;

        public static final class Builder {
            private String contentId;
            private String sessionId;
            private String streamType;
            private String streamingFormat;
            private float playbackRate = -3.4028235E38f;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdSession build() {
                return new CmcdSession(this);
            }

            public Builder setContentId(String str) {
                v.checkArgument(str == null || str.length() <= 64);
                this.contentId = str;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setPlaybackRate(float f3) {
                v.checkArgument(f3 > 0.0f || f3 == -3.4028235E38f);
                this.playbackRate = f3;
                return this;
            }

            public Builder setSessionId(String str) {
                v.checkArgument(str == null || str.length() <= 64);
                this.sessionId = str;
                return this;
            }

            public Builder setStreamType(String str) {
                this.streamType = str;
                return this;
            }

            public Builder setStreamingFormat(String str) {
                this.streamingFormat = str;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(this.contentId)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_CONTENT_ID, this.contentId));
            }
            if (!TextUtils.isEmpty(this.sessionId)) {
                arrayList.add(Util.formatInvariant("%s=\"%s\"", CmcdConfiguration.KEY_SESSION_ID, this.sessionId));
            }
            if (!TextUtils.isEmpty(this.streamingFormat)) {
                arrayList.add("sf=" + this.streamingFormat);
            }
            if (!TextUtils.isEmpty(this.streamType)) {
                arrayList.add("st=" + this.streamType);
            }
            float f3 = this.playbackRate;
            if (f3 != -3.4028235E38f && f3 != 1.0f) {
                arrayList.add(Util.formatInvariant("%s=%.2f", CmcdConfiguration.KEY_PLAYBACK_RATE, Float.valueOf(f3)));
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_SESSION, arrayList);
        }

        private CmcdSession(Builder builder) {
            this.contentId = builder.contentId;
            this.sessionId = builder.sessionId;
            this.streamingFormat = builder.streamingFormat;
            this.streamType = builder.streamType;
            this.playbackRate = builder.playbackRate;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class CmcdStatus {
        public final boolean bufferStarvation;
        public final ImmutableList<String> customDataList;
        public final int maximumRequestedThroughputKbps;

        public static final class Builder {
            private boolean bufferStarvation;
            private int maximumRequestedThroughputKbps = C.RATE_UNSET_INT;
            private ImmutableList<String> customDataList = ImmutableList.of();

            public CmcdStatus build() {
                return new CmcdStatus(this);
            }

            public Builder setBufferStarvation(boolean z6) {
                this.bufferStarvation = z6;
                return this;
            }

            public Builder setCustomDataList(List<String> list) {
                this.customDataList = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setMaximumRequestedThroughputKbps(int i2) {
                v.checkArgument(i2 >= 0 || i2 == -2147483647);
                if (i2 != -2147483647) {
                    i2 = ((i2 + 50) / 100) * 100;
                }
                this.maximumRequestedThroughputKbps = i2;
                return this;
            }
        }

        public void populateCmcdDataMap(ArrayListMultimap<String, String> arrayListMultimap) {
            ArrayList arrayList = new ArrayList();
            if (this.maximumRequestedThroughputKbps != -2147483647) {
                arrayList.add("rtp=" + this.maximumRequestedThroughputKbps);
            }
            if (this.bufferStarvation) {
                arrayList.add(CmcdConfiguration.KEY_BUFFER_STARVATION);
            }
            arrayList.addAll(this.customDataList);
            if (arrayList.isEmpty()) {
                return;
            }
            arrayListMultimap.putAll(CmcdConfiguration.KEY_CMCD_STATUS, arrayList);
        }

        private CmcdStatus(Builder builder) {
            this.maximumRequestedThroughputKbps = builder.maximumRequestedThroughputKbps;
            this.bufferStarvation = builder.bufferStarvation;
            this.customDataList = builder.customDataList;
        }
    }

    public static final class Factory {
        private static final Pattern CUSTOM_KEY_NAME_PATTERN = Pattern.compile(".*-.*");
        private final CmcdConfiguration cmcdConfiguration;
        private boolean didRebuffer;
        private boolean isBufferEmpty;
        private Boolean isLive;
        private String nextObjectRequest;
        private String nextRangeRequest;
        private String objectType;
        private final String streamingFormat;
        private ExoTrackSelection trackSelection;
        private long bufferedDurationUs = C.TIME_UNSET;
        private float playbackRate = -3.4028235E38f;
        private long chunkDurationUs = C.TIME_UNSET;

        public Factory(CmcdConfiguration cmcdConfiguration, String str) {
            this.cmcdConfiguration = cmcdConfiguration;
            this.streamingFormat = str;
        }

        private static String getObjectTypeFromFormat(Format format) {
            String audioMediaMimeType = MimeTypes.getAudioMediaMimeType(format.codecs);
            String videoMediaMimeType = MimeTypes.getVideoMediaMimeType(format.codecs);
            if (audioMediaMimeType != null && videoMediaMimeType != null) {
                return CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO;
            }
            int trackType = MimeTypes.getTrackType(format.sampleMimeType);
            if (trackType == -1) {
                trackType = MimeTypes.getTrackType(format.containerMimeType);
            }
            if (trackType == 1) {
                return CmcdData.OBJECT_TYPE_AUDIO_ONLY;
            }
            if (trackType == 2) {
                return "v";
            }
            return null;
        }

        private static boolean isManifestObjectType(String str) {
            return Objects.equals(str, CmcdData.OBJECT_TYPE_MANIFEST);
        }

        private static boolean isMediaObjectType(String str) {
            return Objects.equals(str, CmcdData.OBJECT_TYPE_AUDIO_ONLY) || Objects.equals(str, "v") || Objects.equals(str, CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO);
        }

        private void validateCustomDataListFormat(List<String> list) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                v.checkState(CUSTOM_KEY_NAME_PATTERN.matcher(Util.split(it.next(), "=")[0]).matches());
            }
        }

        public CmcdData createCmcdData() {
            int i2;
            int i7;
            int i8;
            boolean isManifestObjectType = isManifestObjectType(this.objectType);
            if (!isManifestObjectType) {
                v.checkNotNull(this.trackSelection, "Track selection must be set");
            }
            if (this.objectType == null) {
                this.objectType = getObjectTypeFromFormat(((ExoTrackSelection) v.checkNotNull(this.trackSelection)).getSelectedFormat());
            }
            boolean isMediaObjectType = isMediaObjectType(this.objectType);
            if (isMediaObjectType) {
                v.checkState(this.bufferedDurationUs != C.TIME_UNSET, "Buffered duration must be set");
                v.checkState(this.chunkDurationUs != C.TIME_UNSET, "Chunk duration must be set");
            }
            ImmutableListMultimap<String, String> customData = this.cmcdConfiguration.requestConfig.getCustomData();
            x0 it = customData.keySet().iterator();
            while (it.hasNext()) {
                validateCustomDataListFormat(customData.get((ImmutableListMultimap<String, String>) it.next()));
            }
            if (isManifestObjectType) {
                i2 = C.RATE_UNSET_INT;
                i7 = -2147483647;
                i8 = -2147483647;
            } else {
                ExoTrackSelection exoTrackSelection = (ExoTrackSelection) v.checkNotNull(this.trackSelection);
                int i9 = exoTrackSelection.getSelectedFormat().bitrate;
                i2 = Util.ceilDivide(i9, 1000);
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                for (int i10 = 0; i10 < trackGroup.length; i10++) {
                    i9 = Math.max(i9, trackGroup.getFormat(i10).bitrate);
                }
                i8 = Util.ceilDivide(i9, 1000);
                r6 = exoTrackSelection.getLatestBitrateEstimate() != -2147483647L ? Util.ceilDivide(exoTrackSelection.getLatestBitrateEstimate(), 1000L) : -2147483647L;
                i7 = this.cmcdConfiguration.requestConfig.getRequestedMaximumThroughputKbps(i2);
            }
            CmcdObject.Builder builder = new CmcdObject.Builder();
            if (this.cmcdConfiguration.isBitrateLoggingAllowed()) {
                builder.setBitrateKbps(i2);
            }
            if (this.cmcdConfiguration.isTopBitrateLoggingAllowed()) {
                builder.setTopBitrateKbps(i8);
            }
            if (isMediaObjectType && this.cmcdConfiguration.isObjectDurationLoggingAllowed()) {
                builder.setObjectDurationMs(Util.usToMs(this.chunkDurationUs));
            }
            if (this.cmcdConfiguration.isObjectTypeLoggingAllowed()) {
                builder.setObjectType(this.objectType);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_OBJECT)) {
                builder.setCustomDataList(customData.get((ImmutableListMultimap<String, String>) CmcdConfiguration.KEY_CMCD_OBJECT));
            }
            CmcdRequest.Builder builder2 = new CmcdRequest.Builder();
            if (isMediaObjectType) {
                if (this.cmcdConfiguration.isBufferLengthLoggingAllowed()) {
                    builder2.setBufferLengthMs(Util.usToMs(this.bufferedDurationUs));
                }
                if (this.cmcdConfiguration.isDeadlineLoggingAllowed()) {
                    builder2.setDeadlineMs(Util.usToMs((long) (this.bufferedDurationUs / this.playbackRate)));
                }
            }
            if (this.cmcdConfiguration.isMeasuredThroughputLoggingAllowed()) {
                builder2.setMeasuredThroughputInKbps(r6);
            }
            if (this.cmcdConfiguration.isStartupLoggingAllowed()) {
                builder2.setStartup(this.didRebuffer || this.isBufferEmpty);
            }
            if (this.cmcdConfiguration.isNextObjectRequestLoggingAllowed()) {
                builder2.setNextObjectRequest(this.nextObjectRequest);
            }
            if (this.cmcdConfiguration.isNextRangeRequestLoggingAllowed()) {
                builder2.setNextRangeRequest(this.nextRangeRequest);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_REQUEST)) {
                builder2.setCustomDataList(customData.get((ImmutableListMultimap<String, String>) CmcdConfiguration.KEY_CMCD_REQUEST));
            }
            CmcdSession.Builder builder3 = new CmcdSession.Builder();
            if (this.cmcdConfiguration.isContentIdLoggingAllowed()) {
                builder3.setContentId(this.cmcdConfiguration.contentId);
            }
            if (this.cmcdConfiguration.isSessionIdLoggingAllowed()) {
                builder3.setSessionId(this.cmcdConfiguration.sessionId);
            }
            if (this.cmcdConfiguration.isStreamingFormatLoggingAllowed()) {
                builder3.setStreamingFormat(this.streamingFormat);
            }
            if (this.isLive != null && this.cmcdConfiguration.isStreamTypeLoggingAllowed()) {
                builder3.setStreamType(((Boolean) v.checkNotNull(this.isLive)).booleanValue() ? CmcdData.STREAM_TYPE_LIVE : "v");
            }
            if (this.cmcdConfiguration.isPlaybackRateLoggingAllowed()) {
                builder3.setPlaybackRate(this.playbackRate);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_SESSION)) {
                builder3.setCustomDataList(customData.get((ImmutableListMultimap<String, String>) CmcdConfiguration.KEY_CMCD_SESSION));
            }
            CmcdStatus.Builder builder4 = new CmcdStatus.Builder();
            if (this.cmcdConfiguration.isMaximumRequestThroughputLoggingAllowed()) {
                builder4.setMaximumRequestedThroughputKbps(i7);
            }
            if (this.cmcdConfiguration.isBufferStarvationLoggingAllowed()) {
                builder4.setBufferStarvation(this.didRebuffer);
            }
            if (customData.containsKey(CmcdConfiguration.KEY_CMCD_STATUS)) {
                builder4.setCustomDataList(customData.get((ImmutableListMultimap<String, String>) CmcdConfiguration.KEY_CMCD_STATUS));
            }
            return new CmcdData(builder.build(), builder2.build(), builder3.build(), builder4.build(), this.cmcdConfiguration.dataTransmissionMode);
        }

        public Factory setBufferedDurationUs(long j7) {
            v.checkArgument(j7 >= 0);
            this.bufferedDurationUs = j7;
            return this;
        }

        public Factory setChunkDurationUs(long j7) {
            v.checkArgument(j7 >= 0);
            this.chunkDurationUs = j7;
            return this;
        }

        public Factory setDidRebuffer(boolean z6) {
            this.didRebuffer = z6;
            return this;
        }

        public Factory setIsBufferEmpty(boolean z6) {
            this.isBufferEmpty = z6;
            return this;
        }

        public Factory setIsLive(boolean z6) {
            this.isLive = Boolean.valueOf(z6);
            return this;
        }

        public Factory setNextObjectRequest(String str) {
            this.nextObjectRequest = str;
            return this;
        }

        public Factory setNextRangeRequest(String str) {
            this.nextRangeRequest = str;
            return this;
        }

        public Factory setObjectType(String str) {
            this.objectType = str;
            return this;
        }

        public Factory setPlaybackRate(float f3) {
            v.checkArgument(f3 == -3.4028235E38f || f3 > 0.0f);
            this.playbackRate = f3;
            return this;
        }

        public Factory setTrackSelection(ExoTrackSelection exoTrackSelection) {
            this.trackSelection = exoTrackSelection;
            return this;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ObjectType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamingFormat {
    }

    public static DataSpec removeFromDataSpec(DataSpec dataSpec) {
        Uri removeFromUri = removeFromUri(dataSpec.uri);
        if (!Objects.equals(removeFromUri, dataSpec.uri)) {
            dataSpec = dataSpec.withUri(removeFromUri);
        }
        if (!dataSpec.httpRequestHeaders.containsKey(CmcdConfiguration.KEY_CMCD_OBJECT) && !dataSpec.httpRequestHeaders.containsKey(CmcdConfiguration.KEY_CMCD_REQUEST) && !dataSpec.httpRequestHeaders.containsKey(CmcdConfiguration.KEY_CMCD_STATUS) && !dataSpec.httpRequestHeaders.containsKey(CmcdConfiguration.KEY_CMCD_SESSION)) {
            return dataSpec;
        }
        w builder = ImmutableMap.builder();
        for (Map.Entry<String, String> entry : dataSpec.httpRequestHeaders.entrySet()) {
            if (!entry.getKey().equals(CmcdConfiguration.KEY_CMCD_OBJECT) && !entry.getKey().equals(CmcdConfiguration.KEY_CMCD_REQUEST) && !entry.getKey().equals(CmcdConfiguration.KEY_CMCD_STATUS) && !entry.getKey().equals(CmcdConfiguration.KEY_CMCD_SESSION)) {
                builder.put(entry);
            }
        }
        return dataSpec.withRequestHeaders(builder.buildOrThrow());
    }

    public static Uri removeFromUri(Uri uri) {
        return (!uri.isHierarchical() || uri.getQueryParameter(CmcdConfiguration.CMCD_QUERY_PARAMETER_KEY) == null) ? uri : UriUtil.removeQueryParameter(uri, CmcdConfiguration.CMCD_QUERY_PARAMETER_KEY);
    }

    public DataSpec addToDataSpec(DataSpec dataSpec) {
        ArrayListMultimap<String, String> create = ArrayListMultimap.create();
        this.cmcdObject.populateCmcdDataMap(create);
        this.cmcdRequest.populateCmcdDataMap(create);
        this.cmcdSession.populateCmcdDataMap(create);
        this.cmcdStatus.populateCmcdDataMap(create);
        if (this.dataTransmissionMode != 0) {
            ArrayList arrayList = new ArrayList();
            Iterator it = create.asMap().values().iterator();
            while (it.hasNext()) {
                arrayList.addAll((Collection) it.next());
            }
            Collections.sort(arrayList);
            return dataSpec.buildUpon().setUri(dataSpec.uri.buildUpon().appendQueryParameter(CmcdConfiguration.CMCD_QUERY_PARAMETER_KEY, COMMA_JOINER.join(arrayList)).build()).build();
        }
        w builder = ImmutableMap.builder();
        for (String str : create.keySet()) {
            List list = create.get((Object) str);
            Collections.sort(list);
            builder.put(str, COMMA_JOINER.join(list));
        }
        return dataSpec.withAdditionalHeaders(builder.buildOrThrow());
    }

    private CmcdData(CmcdObject cmcdObject, CmcdRequest cmcdRequest, CmcdSession cmcdSession, CmcdStatus cmcdStatus, int i2) {
        this.cmcdObject = cmcdObject;
        this.cmcdRequest = cmcdRequest;
        this.cmcdSession = cmcdSession;
        this.cmcdStatus = cmcdStatus;
        this.dataTransmissionMode = i2;
    }
}
