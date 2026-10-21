package androidx.media3.exoplayer.hls.playlist;

import P3.v;
import Q3.A;
import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class HlsMediaPlaylist extends HlsPlaylist {
    public static final int PLAYLIST_TYPE_EVENT = 2;
    public static final int PLAYLIST_TYPE_UNKNOWN = 0;
    public static final int PLAYLIST_TYPE_VOD = 1;
    public final int discontinuitySequence;
    public final long durationUs;
    public final boolean hasDiscontinuitySequence;
    public final boolean hasEndTag;
    public final boolean hasPositiveStartOffset;
    public final boolean hasProgramDateTime;
    public final ImmutableList<Interstitial> interstitials;
    public final long mediaSequence;
    public final long partTargetDurationUs;
    public final int playlistType;
    public final boolean preciseStart;
    public final DrmInitData protectionSchemes;
    public final Map<Uri, RenditionReport> renditionReports;
    public final List<Segment> segments;
    public final ServerControl serverControl;
    public final long startOffsetUs;
    public final long startTimeUs;
    public final long targetDurationUs;
    public final List<Part> trailingParts;
    public final int version;

    public static final class Interstitial {
        public static final String CUE_TRIGGER_ONCE = "ONCE";
        public static final String CUE_TRIGGER_POST = "POST";
        public static final String CUE_TRIGGER_PRE = "PRE";
        public static final String NAVIGATION_RESTRICTION_JUMP = "JUMP";
        public static final String NAVIGATION_RESTRICTION_SKIP = "SKIP";
        public static final String SNAP_TYPE_IN = "IN";
        public static final String SNAP_TYPE_OUT = "OUT";
        public static final String TIMELINE_OCCUPIES_POINT = "POINT";
        public static final String TIMELINE_OCCUPIES_RANGE = "RANGE";
        public static final String TIMELINE_STYLE_HIGHLIGHT = "HIGHLIGHT";
        public static final String TIMELINE_STYLE_PRIMARY = "PRIMARY";
        public final Uri assetListUri;
        public final Uri assetUri;
        public final ImmutableList<ClientDefinedAttribute> clientDefinedAttributes;
        public final boolean contentMayVary;
        public final List<String> cue;
        public final long durationUs;
        public final long endDateUnixUs;
        public final boolean endOnNext;
        public final String id;
        public final long plannedDurationUs;
        public final long playoutLimitUs;
        public final ImmutableList<String> restrictions;
        public final long resumeOffsetUs;
        public final long skipControlDurationUs;
        public final String skipControlLabelId;
        public final long skipControlOffsetUs;
        public final ImmutableList<String> snapTypes;
        public final long startDateUnixUs;
        public final String timelineOccupies;
        public final String timelineStyle;

        public static final class Builder {
            private Uri assetListUri;
            private Uri assetUri;
            private Boolean contentMayVary;
            private boolean endOnNext;
            private final String id;
            private String skipControlLabelId;
            private String timelineOccupies;
            private String timelineStyle;
            private final Map<String, ClientDefinedAttribute> clientDefinedAttributes = new HashMap();
            private long startDateUnixUs = C.TIME_UNSET;
            private long endDateUnixUs = C.TIME_UNSET;
            private long durationUs = C.TIME_UNSET;
            private long plannedDurationUs = C.TIME_UNSET;
            private List<String> cue = new ArrayList();
            private long resumeOffsetUs = C.TIME_UNSET;
            private long playoutLimitUs = C.TIME_UNSET;
            private List<String> snapTypes = new ArrayList();
            private List<String> restrictions = new ArrayList();
            private long skipControlOffsetUs = C.TIME_UNSET;
            private long skipControlDurationUs = C.TIME_UNSET;

            public Builder(String str) {
                this.id = str;
            }

            public Interstitial build() {
                Uri uri = this.assetListUri;
                if ((uri != null || this.assetUri == null) && (uri == null || this.assetUri != null)) {
                    return null;
                }
                long j7 = this.startDateUnixUs;
                if (j7 == C.TIME_UNSET) {
                    return null;
                }
                String str = this.id;
                Uri uri2 = this.assetUri;
                long j8 = this.endDateUnixUs;
                long j9 = this.durationUs;
                long j10 = this.plannedDurationUs;
                List<String> list = this.cue;
                boolean z6 = this.endOnNext;
                long j11 = this.resumeOffsetUs;
                long j12 = this.playoutLimitUs;
                List<String> list2 = this.snapTypes;
                List<String> list3 = this.restrictions;
                ArrayList arrayList = new ArrayList(this.clientDefinedAttributes.values());
                Boolean bool = this.contentMayVary;
                boolean z7 = bool == null || bool.booleanValue();
                String str2 = this.timelineOccupies;
                if (str2 == null) {
                    str2 = Interstitial.TIMELINE_OCCUPIES_POINT;
                }
                String str3 = str2;
                String str4 = this.timelineStyle;
                if (str4 == null) {
                    str4 = Interstitial.TIMELINE_STYLE_HIGHLIGHT;
                }
                return new Interstitial(str, uri2, uri, j7, j8, j9, j10, list, z6, j11, j12, list2, list3, arrayList, z7, str3, str4, this.skipControlOffsetUs, this.skipControlDurationUs, this.skipControlLabelId);
            }

            public Builder setAssetListUri(Uri uri) {
                if (uri == null) {
                    return this;
                }
                Uri uri2 = this.assetListUri;
                if (uri2 != null) {
                    v.checkArgument(uri2.equals(uri), "Can't change assetListUri from %s to %s", this.assetListUri, uri);
                }
                this.assetListUri = uri;
                return this;
            }

            public Builder setAssetUri(Uri uri) {
                if (uri == null) {
                    return this;
                }
                Uri uri2 = this.assetUri;
                if (uri2 != null) {
                    v.checkArgument(uri2.equals(uri), "Can't change assetUri from %s to %s", this.assetUri, uri);
                }
                this.assetUri = uri;
                return this;
            }

            public Builder setClientDefinedAttributes(List<ClientDefinedAttribute> list) {
                if (!list.isEmpty()) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        ClientDefinedAttribute clientDefinedAttribute = list.get(i2);
                        String str = clientDefinedAttribute.name;
                        ClientDefinedAttribute clientDefinedAttribute2 = this.clientDefinedAttributes.get(str);
                        if (clientDefinedAttribute2 != null) {
                            v.checkArgument(clientDefinedAttribute2.equals(clientDefinedAttribute), "Can't change %s from %s %s to %s %s", str, clientDefinedAttribute2.textValue, Double.valueOf(clientDefinedAttribute2.doubleValue), clientDefinedAttribute.textValue, Double.valueOf(clientDefinedAttribute.doubleValue));
                        }
                        this.clientDefinedAttributes.put(str, clientDefinedAttribute);
                    }
                }
                return this;
            }

            public Builder setContentMayVary(Boolean bool) {
                if (bool == null) {
                    return this;
                }
                Boolean bool2 = this.contentMayVary;
                if (bool2 != null) {
                    v.checkArgument(bool2.equals(bool), "Can't change contentMayVary from %s to %s", this.contentMayVary, bool);
                }
                this.contentMayVary = bool;
                return this;
            }

            public Builder setCue(List<String> list) {
                if (list.isEmpty()) {
                    return this;
                }
                if (!this.cue.isEmpty()) {
                    boolean equals = this.cue.equals(list);
                    StringBuilder sb = new StringBuilder("Can't change cue from ");
                    List<String> list2 = this.cue;
                    StringBuilder sb2 = new StringBuilder();
                    Iterator<T> it = list2.iterator();
                    if (it.hasNext()) {
                        while (true) {
                            sb2.append((CharSequence) it.next());
                            if (!it.hasNext()) {
                                break;
                            }
                            sb2.append((CharSequence) ", ");
                        }
                    }
                    sb.append(sb2.toString());
                    sb.append(" to ");
                    StringBuilder sb3 = new StringBuilder();
                    Iterator<T> it2 = list.iterator();
                    if (it2.hasNext()) {
                        while (true) {
                            sb3.append((CharSequence) it2.next());
                            if (!it2.hasNext()) {
                                break;
                            }
                            sb3.append((CharSequence) ", ");
                        }
                    }
                    sb.append(sb3.toString());
                    v.checkArgument(equals, sb.toString());
                }
                this.cue = list;
                return this;
            }

            public Builder setDurationUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.durationUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change durationUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.durationUs = j8;
                return this;
            }

            public Builder setEndDateUnixUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.endDateUnixUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change endDateUnixUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.endDateUnixUs = j8;
                return this;
            }

            public Builder setEndOnNext(boolean z6) {
                if (!z6) {
                    return this;
                }
                this.endOnNext = true;
                return this;
            }

            public Builder setPlannedDurationUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.plannedDurationUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change plannedDurationUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.plannedDurationUs = j8;
                return this;
            }

            public Builder setPlayoutLimitUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.playoutLimitUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change playoutLimitUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.playoutLimitUs = j8;
                return this;
            }

            public Builder setRestrictions(List<String> list) {
                if (list.isEmpty()) {
                    return this;
                }
                if (!this.restrictions.isEmpty()) {
                    boolean equals = this.restrictions.equals(list);
                    StringBuilder sb = new StringBuilder("Can't change restrictions from ");
                    List<String> list2 = this.restrictions;
                    StringBuilder sb2 = new StringBuilder();
                    Iterator<T> it = list2.iterator();
                    if (it.hasNext()) {
                        while (true) {
                            sb2.append((CharSequence) it.next());
                            if (!it.hasNext()) {
                                break;
                            }
                            sb2.append((CharSequence) ", ");
                        }
                    }
                    sb.append(sb2.toString());
                    sb.append(" to ");
                    StringBuilder sb3 = new StringBuilder();
                    Iterator<T> it2 = list.iterator();
                    if (it2.hasNext()) {
                        while (true) {
                            sb3.append((CharSequence) it2.next());
                            if (!it2.hasNext()) {
                                break;
                            }
                            sb3.append((CharSequence) ", ");
                        }
                    }
                    sb.append(sb3.toString());
                    v.checkArgument(equals, sb.toString());
                }
                this.restrictions = list;
                return this;
            }

            public Builder setResumeOffsetUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.resumeOffsetUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change resumeOffsetUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.resumeOffsetUs = j8;
                return this;
            }

            public Builder setSkipControlDurationUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.skipControlDurationUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change skipControlDurationUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.skipControlDurationUs = j8;
                return this;
            }

            public Builder setSkipControlLabelId(String str) {
                if (str == null) {
                    return this;
                }
                String str2 = this.skipControlLabelId;
                if (str2 != null) {
                    v.checkArgument(str2.equals(str), "Can't change skipControlLabelId from %s to %s", this.skipControlLabelId, str);
                }
                this.skipControlLabelId = str;
                return this;
            }

            public Builder setSkipControlOffsetUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.skipControlOffsetUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change skipControlOffsetUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.skipControlOffsetUs = j8;
                return this;
            }

            public Builder setSnapTypes(List<String> list) {
                if (list.isEmpty()) {
                    return this;
                }
                if (!this.snapTypes.isEmpty()) {
                    boolean equals = this.snapTypes.equals(list);
                    StringBuilder sb = new StringBuilder("Can't change snapTypes from ");
                    List<String> list2 = this.snapTypes;
                    StringBuilder sb2 = new StringBuilder();
                    Iterator<T> it = list2.iterator();
                    if (it.hasNext()) {
                        while (true) {
                            sb2.append((CharSequence) it.next());
                            if (!it.hasNext()) {
                                break;
                            }
                            sb2.append((CharSequence) ", ");
                        }
                    }
                    sb.append(sb2.toString());
                    sb.append(" to ");
                    StringBuilder sb3 = new StringBuilder();
                    Iterator<T> it2 = list.iterator();
                    if (it2.hasNext()) {
                        while (true) {
                            sb3.append((CharSequence) it2.next());
                            if (!it2.hasNext()) {
                                break;
                            }
                            sb3.append((CharSequence) ", ");
                        }
                    }
                    sb.append(sb3.toString());
                    v.checkArgument(equals, sb.toString());
                }
                this.snapTypes = list;
                return this;
            }

            public Builder setStartDateUnixUs(long j7) {
                long j8;
                if (j7 == C.TIME_UNSET) {
                    return this;
                }
                long j9 = this.startDateUnixUs;
                if (j9 != C.TIME_UNSET) {
                    j8 = j7;
                    v.checkArgument(j9 == j7, "Can't change startDateUnixUs from %s to %s", j9, j8);
                } else {
                    j8 = j7;
                }
                this.startDateUnixUs = j8;
                return this;
            }

            public Builder setTimelineOccupies(String str) {
                if (str == null) {
                    return this;
                }
                String str2 = this.timelineOccupies;
                if (str2 != null) {
                    v.checkArgument(str2.equals(str), "Can't change timelineOccupies from %s to %s", this.timelineOccupies, str);
                }
                this.timelineOccupies = str;
                return this;
            }

            public Builder setTimelineStyle(String str) {
                if (str == null) {
                    return this;
                }
                String str2 = this.timelineStyle;
                if (str2 != null) {
                    v.checkArgument(str2.equals(str), "Can't change timelineStyle from %s to %s", this.timelineStyle, str);
                }
                this.timelineStyle = str;
                return this;
            }
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface CueTriggerType {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface NavigationRestriction {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface SnapType {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface TimelineOccupiesType {
        }

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface TimelineStyleType {
        }

        public Interstitial(String str, Uri uri, Uri uri2, long j7, long j8, long j9, long j10, List<String> list, boolean z6, long j11, long j12, List<String> list2, List<String> list3, List<ClientDefinedAttribute> list4, boolean z7, String str2, String str3, long j13, long j14, String str4) {
            v.checkArgument((uri == null || uri2 == null) && !(uri == null && uri2 == null));
            this.id = str;
            this.assetUri = uri;
            this.assetListUri = uri2;
            this.startDateUnixUs = j7;
            this.endDateUnixUs = j8;
            this.durationUs = j9;
            this.plannedDurationUs = j10;
            this.cue = list;
            this.endOnNext = z6;
            this.resumeOffsetUs = j11;
            this.playoutLimitUs = j12;
            this.snapTypes = ImmutableList.copyOf((Collection) list2);
            this.restrictions = ImmutableList.copyOf((Collection) list3);
            this.clientDefinedAttributes = ImmutableList.sortedCopyOf(new J.c(5), list4);
            this.contentMayVary = z7;
            this.timelineOccupies = str2;
            this.timelineStyle = str3;
            this.skipControlOffsetUs = j13;
            this.skipControlDurationUs = j14;
            this.skipControlLabelId = str4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$new$0(ClientDefinedAttribute clientDefinedAttribute, ClientDefinedAttribute clientDefinedAttribute2) {
            return clientDefinedAttribute.name.compareTo(clientDefinedAttribute2.name);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interstitial)) {
                return false;
            }
            Interstitial interstitial = (Interstitial) obj;
            return this.startDateUnixUs == interstitial.startDateUnixUs && this.endDateUnixUs == interstitial.endDateUnixUs && this.durationUs == interstitial.durationUs && this.plannedDurationUs == interstitial.plannedDurationUs && this.endOnNext == interstitial.endOnNext && this.resumeOffsetUs == interstitial.resumeOffsetUs && this.playoutLimitUs == interstitial.playoutLimitUs && this.contentMayVary == interstitial.contentMayVary && this.skipControlOffsetUs == interstitial.skipControlOffsetUs && this.skipControlDurationUs == interstitial.skipControlDurationUs && Objects.equals(this.id, interstitial.id) && Objects.equals(this.assetUri, interstitial.assetUri) && Objects.equals(this.assetListUri, interstitial.assetListUri) && Objects.equals(this.cue, interstitial.cue) && Objects.equals(this.snapTypes, interstitial.snapTypes) && Objects.equals(this.restrictions, interstitial.restrictions) && Objects.equals(this.clientDefinedAttributes, interstitial.clientDefinedAttributes) && Objects.equals(this.timelineOccupies, interstitial.timelineOccupies) && Objects.equals(this.timelineStyle, interstitial.timelineStyle) && Objects.equals(this.skipControlLabelId, interstitial.skipControlLabelId);
        }

        public int hashCode() {
            return Objects.hash(this.id, this.assetUri, this.assetListUri, Long.valueOf(this.startDateUnixUs), Long.valueOf(this.endDateUnixUs), Long.valueOf(this.durationUs), Long.valueOf(this.plannedDurationUs), this.cue, Boolean.valueOf(this.endOnNext), Long.valueOf(this.resumeOffsetUs), Long.valueOf(this.playoutLimitUs), this.snapTypes, this.restrictions, this.clientDefinedAttributes, Boolean.valueOf(this.contentMayVary), this.timelineOccupies, this.timelineStyle, Long.valueOf(this.skipControlOffsetUs), Long.valueOf(this.skipControlDurationUs), this.skipControlLabelId);
        }
    }

    public static final class Part extends SegmentBase {
        public final boolean isIndependent;
        public final boolean isPreload;

        public Part(String str, Segment segment, long j7, int i2, long j8, DrmInitData drmInitData, String str2, String str3, long j9, long j10, boolean z6, boolean z7, boolean z8) {
            super(str, segment, j7, i2, j8, drmInitData, str2, str3, j9, j10, z6);
            this.isIndependent = z7;
            this.isPreload = z8;
        }

        public Part copyWith(long j7, int i2) {
            return new Part(this.url, this.initializationSegment, this.durationUs, i2, j7, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, this.isIndependent, this.isPreload);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaylistType {
    }

    public static final class RenditionReport {
        public final long lastMediaSequence;
        public final int lastPartIndex;
        public final Uri playlistUri;

        public RenditionReport(Uri uri, long j7, int i2) {
            this.playlistUri = uri;
            this.lastMediaSequence = j7;
            this.lastPartIndex = i2;
        }
    }

    public static class SegmentBase implements Comparable<Long> {
        public final long byteRangeLength;
        public final long byteRangeOffset;
        public final DrmInitData drmInitData;
        public final long durationUs;
        public final String encryptionIV;
        public final String fullSegmentEncryptionKeyUri;
        public final boolean hasGapTag;
        public final Segment initializationSegment;
        public final int relativeDiscontinuitySequence;
        public final long relativeStartTimeUs;
        public final String url;

        private SegmentBase(String str, Segment segment, long j7, int i2, long j8, DrmInitData drmInitData, String str2, String str3, long j9, long j10, boolean z6) {
            this.url = str;
            this.initializationSegment = segment;
            this.durationUs = j7;
            this.relativeDiscontinuitySequence = i2;
            this.relativeStartTimeUs = j8;
            this.drmInitData = drmInitData;
            this.fullSegmentEncryptionKeyUri = str2;
            this.encryptionIV = str3;
            this.byteRangeOffset = j9;
            this.byteRangeLength = j10;
            this.hasGapTag = z6;
        }

        @Override // java.lang.Comparable
        public int compareTo(Long l7) {
            if (this.relativeStartTimeUs > l7.longValue()) {
                return 1;
            }
            return this.relativeStartTimeUs < l7.longValue() ? -1 : 0;
        }
    }

    public static final class ServerControl {
        public final boolean canBlockReload;
        public final boolean canSkipDateRanges;
        public final long holdBackUs;
        public final long partHoldBackUs;
        public final long skipUntilUs;

        public ServerControl(long j7, boolean z6, long j8, long j9, boolean z7) {
            this.skipUntilUs = j7;
            this.canSkipDateRanges = z6;
            this.holdBackUs = j8;
            this.partHoldBackUs = j9;
            this.canBlockReload = z7;
        }
    }

    public HlsMediaPlaylist(int i2, String str, List<String> list, long j7, boolean z6, long j8, boolean z7, int i7, long j9, int i8, long j10, long j11, boolean z8, boolean z9, boolean z10, DrmInitData drmInitData, List<Segment> list2, List<Part> list3, ServerControl serverControl, Map<Uri, RenditionReport> map, List<Interstitial> list4) {
        super(str, list, z8);
        this.playlistType = i2;
        this.startTimeUs = j8;
        this.preciseStart = z6;
        this.hasDiscontinuitySequence = z7;
        this.discontinuitySequence = i7;
        this.mediaSequence = j9;
        this.version = i8;
        this.targetDurationUs = j10;
        this.partTargetDurationUs = j11;
        this.hasEndTag = z9;
        this.hasProgramDateTime = z10;
        this.protectionSchemes = drmInitData;
        this.segments = ImmutableList.copyOf((Collection) list2);
        this.trailingParts = ImmutableList.copyOf((Collection) list3);
        this.renditionReports = ImmutableMap.copyOf((Map) map);
        this.interstitials = ImmutableList.copyOf((Collection) list4);
        if (!list3.isEmpty()) {
            Part part = (Part) A.getLast(list3);
            this.durationUs = part.relativeStartTimeUs + part.durationUs;
        } else if (list2.isEmpty()) {
            this.durationUs = 0L;
        } else {
            Segment segment = (Segment) A.getLast(list2);
            this.durationUs = segment.relativeStartTimeUs + segment.durationUs;
        }
        this.startOffsetUs = j7 != C.TIME_UNSET ? j7 >= 0 ? Math.min(this.durationUs, j7) : Math.max(0L, this.durationUs + j7) : C.TIME_UNSET;
        this.hasPositiveStartOffset = j7 >= 0;
        this.serverControl = serverControl;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return this;
    }

    public HlsMediaPlaylist copyWith(long j7, int i2) {
        return new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, j7, true, i2, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, this.hasEndTag, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports, this.interstitials);
    }

    public HlsMediaPlaylist copyWithEndTag() {
        return this.hasEndTag ? this : new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.preciseStart, this.startTimeUs, this.hasDiscontinuitySequence, this.discontinuitySequence, this.mediaSequence, this.version, this.targetDurationUs, this.partTargetDurationUs, this.hasIndependentSegments, true, this.hasProgramDateTime, this.protectionSchemes, this.segments, this.trailingParts, this.serverControl, this.renditionReports, this.interstitials);
    }

    public long getEndTimeUs() {
        return this.startTimeUs + this.durationUs;
    }

    public boolean isNewerThan(HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist != null) {
            long j7 = this.mediaSequence;
            long j8 = hlsMediaPlaylist.mediaSequence;
            if (j7 <= j8) {
                if (j7 < j8) {
                    return false;
                }
                int size = this.segments.size() - hlsMediaPlaylist.segments.size();
                if (size != 0) {
                    return size > 0;
                }
                int size2 = this.trailingParts.size();
                int size3 = hlsMediaPlaylist.trailingParts.size();
                if (size2 <= size3 && (size2 != size3 || !this.hasEndTag || hlsMediaPlaylist.hasEndTag)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final class Segment extends SegmentBase {
        public final List<Part> parts;
        public final String title;

        public Segment(String str, long j7, long j8, String str2, String str3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, str2, str3, j7, j8, false, ImmutableList.of());
        }

        public Segment copyWith(long j7, int i2) {
            ArrayList arrayList = new ArrayList();
            long j8 = j7;
            for (int i7 = 0; i7 < this.parts.size(); i7++) {
                Part part = this.parts.get(i7);
                arrayList.add(part.copyWith(j8, i2));
                j8 += part.durationUs;
            }
            return new Segment(this.url, this.initializationSegment, this.title, this.durationUs, i2, j7, this.drmInitData, this.fullSegmentEncryptionKeyUri, this.encryptionIV, this.byteRangeOffset, this.byteRangeLength, this.hasGapTag, arrayList);
        }

        public Segment(String str, Segment segment, String str2, long j7, int i2, long j8, DrmInitData drmInitData, String str3, String str4, long j9, long j10, boolean z6, List<Part> list) {
            super(str, segment, j7, i2, j8, drmInitData, str3, str4, j9, j10, z6);
            this.title = str2;
            this.parts = ImmutableList.copyOf((Collection) list);
        }
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* renamed from: copy, reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ HlsPlaylist copy2(List list) {
        return copy((List<StreamKey>) list);
    }

    public static class ClientDefinedAttribute {
        public static final int TYPE_DOUBLE = 2;
        public static final int TYPE_HEX_TEXT = 1;
        public static final int TYPE_TEXT = 0;
        private final double doubleValue;
        public final String name;
        private final String textValue;
        public final int type;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        public ClientDefinedAttribute(String str, double d7) {
            this.name = str;
            this.type = 2;
            this.doubleValue = d7;
            this.textValue = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClientDefinedAttribute)) {
                return false;
            }
            ClientDefinedAttribute clientDefinedAttribute = (ClientDefinedAttribute) obj;
            return this.type == clientDefinedAttribute.type && Double.compare(this.doubleValue, clientDefinedAttribute.doubleValue) == 0 && Objects.equals(this.name, clientDefinedAttribute.name) && Objects.equals(this.textValue, clientDefinedAttribute.textValue);
        }

        public double getDoubleValue() {
            v.checkState(this.type == 2);
            return this.doubleValue;
        }

        public String getTextValue() {
            v.checkState(this.type != 2);
            return (String) v.checkNotNull(this.textValue);
        }

        public int hashCode() {
            return Objects.hash(this.name, Integer.valueOf(this.type), Double.valueOf(this.doubleValue), this.textValue);
        }

        public ClientDefinedAttribute(String str, String str2, int i2) {
            boolean z6 = true;
            if (i2 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z6 = false;
            }
            v.checkState(z6);
            this.name = str;
            this.type = i2;
            this.textValue = str2;
            this.doubleValue = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
    }
}
