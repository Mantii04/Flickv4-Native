package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class AdPlaybackState {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public final int adGroupCount;
    private final AdGroup[] adGroups;
    public final long adResumePositionUs;
    public final Object adsId;
    public final long contentDurationUs;
    public final int removedAdGroupCount;
    public static final AdPlaybackState NONE = new AdPlaybackState(null, new AdGroup[0], 0, C.TIME_UNSET, 0);
    private static final AdGroup REMOVED_AD_GROUP = new AdGroup(0).withAdCount(0);
    private static final String FIELD_AD_GROUPS = Util.intToStringMaxRadix(1);
    private static final String FIELD_AD_RESUME_POSITION_US = Util.intToStringMaxRadix(2);
    private static final String FIELD_CONTENT_DURATION_US = Util.intToStringMaxRadix(3);
    private static final String FIELD_REMOVED_AD_GROUP_COUNT = Util.intToStringMaxRadix(4);

    public static final class AdGroup {
        public final long contentResumeOffsetUs;
        public final int count;
        public final long[] durationsUs;
        public final String[] ids;
        public final boolean isPlaceholder;
        public final boolean isServerSideInserted;
        public final MediaItem[] mediaItems;
        public final int originalCount;
        public final SkipInfo[] skipInfos;
        public final int[] states;
        public final long timeUs;

        @Deprecated
        public final Uri[] uris;
        private static final String FIELD_TIME_US = Util.intToStringMaxRadix(0);
        private static final String FIELD_COUNT = Util.intToStringMaxRadix(1);
        private static final String FIELD_URIS = Util.intToStringMaxRadix(2);
        private static final String FIELD_STATES = Util.intToStringMaxRadix(3);
        private static final String FIELD_DURATIONS_US = Util.intToStringMaxRadix(4);
        private static final String FIELD_CONTENT_RESUME_OFFSET_US = Util.intToStringMaxRadix(5);
        private static final String FIELD_IS_SERVER_SIDE_INSERTED = Util.intToStringMaxRadix(6);
        private static final String FIELD_ORIGINAL_COUNT = Util.intToStringMaxRadix(7);
        static final String FIELD_MEDIA_ITEMS = Util.intToStringMaxRadix(8);
        static final String FIELD_IDS = Util.intToStringMaxRadix(9);
        static final String FIELD_IS_PLACEHOLDER = Util.intToStringMaxRadix(10);
        private static final String FIELD_SKIP_INFOS = Util.intToStringMaxRadix(11);

        private static long[] copyDurationsUsWithSpaceForAdCount(long[] jArr, int i2) {
            int length = jArr.length;
            int max = Math.max(i2, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, C.TIME_UNSET);
            return copyOf;
        }

        private static SkipInfo[] copySkipInfosWithSpaceForAdCount(SkipInfo[] skipInfoArr, int i2) {
            return (SkipInfo[]) Arrays.copyOf(skipInfoArr, Math.max(i2, skipInfoArr.length));
        }

        private static int[] copyStatesWithSpaceForAdCount(int[] iArr, int i2) {
            int length = iArr.length;
            int max = Math.max(i2, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        public static AdGroup fromBundle(Bundle bundle) {
            long j7 = bundle.getLong(FIELD_TIME_US);
            int i2 = bundle.getInt(FIELD_COUNT);
            int i7 = bundle.getInt(FIELD_ORIGINAL_COUNT);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_URIS);
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(FIELD_MEDIA_ITEMS);
            int[] intArray = bundle.getIntArray(FIELD_STATES);
            long[] longArray = bundle.getLongArray(FIELD_DURATIONS_US);
            long j8 = bundle.getLong(FIELD_CONTENT_RESUME_OFFSET_US);
            boolean z6 = bundle.getBoolean(FIELD_IS_SERVER_SIDE_INSERTED);
            ArrayList<String> stringArrayList = bundle.getStringArrayList(FIELD_IDS);
            ArrayList parcelableArrayList3 = bundle.getParcelableArrayList(FIELD_SKIP_INFOS);
            boolean z7 = bundle.getBoolean(FIELD_IS_PLACEHOLDER);
            if (intArray == null) {
                intArray = new int[0];
            }
            MediaItem[] mediaItemsFromBundleArrays = getMediaItemsFromBundleArrays(parcelableArrayList2, parcelableArrayList);
            if (longArray == null) {
                longArray = new long[0];
            }
            String[] strArr = new String[0];
            if (stringArrayList != null) {
                strArr = (String[]) stringArrayList.toArray(strArr);
            }
            return new AdGroup(j7, i2, i7, intArray, mediaItemsFromBundleArrays, longArray, j8, z6, strArr, parcelableArrayList3 == null ? new SkipInfo[0] : getSkipInfosFromBundleArrays(parcelableArrayList3), z7);
        }

        private ArrayList<Bundle> getMediaItemsArrayBundles() {
            ArrayList<Bundle> arrayList = new ArrayList<>();
            MediaItem[] mediaItemArr = this.mediaItems;
            int length = mediaItemArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                MediaItem mediaItem = mediaItemArr[i2];
                arrayList.add(mediaItem == null ? null : mediaItem.toBundleIncludeLocalConfiguration());
            }
            return arrayList;
        }

        private static MediaItem[] getMediaItemsFromBundleArrays(ArrayList<Bundle> arrayList, ArrayList<Uri> arrayList2) {
            int i2 = 0;
            if (arrayList != null) {
                MediaItem[] mediaItemArr = new MediaItem[arrayList.size()];
                while (i2 < arrayList.size()) {
                    Bundle bundle = arrayList.get(i2);
                    mediaItemArr[i2] = bundle == null ? null : MediaItem.fromBundle(bundle);
                    i2++;
                }
                return mediaItemArr;
            }
            if (arrayList2 == null) {
                return new MediaItem[0];
            }
            MediaItem[] mediaItemArr2 = new MediaItem[arrayList2.size()];
            while (i2 < arrayList2.size()) {
                Uri uri = arrayList2.get(i2);
                mediaItemArr2[i2] = uri == null ? null : MediaItem.fromUri(uri);
                i2++;
            }
            return mediaItemArr2;
        }

        private ArrayList<Bundle> getSkipInfoArrayBundles() {
            ArrayList<Bundle> arrayList = new ArrayList<>();
            SkipInfo[] skipInfoArr = this.skipInfos;
            int length = skipInfoArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                SkipInfo skipInfo = skipInfoArr[i2];
                arrayList.add(skipInfo == null ? null : skipInfo.toBundle());
            }
            return arrayList;
        }

        private static SkipInfo[] getSkipInfosFromBundleArrays(List<Bundle> list) {
            SkipInfo[] skipInfoArr = new SkipInfo[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                Bundle bundle = list.get(i2);
                skipInfoArr[i2] = bundle == null ? null : SkipInfo.fromBundle(bundle);
            }
            return skipInfoArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AdGroup withIsPlaceholder(boolean z6, boolean z7) {
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, z7, this.ids, this.skipInfos, z6);
        }

        public AdGroup copy() {
            long j7 = this.timeUs;
            int i2 = this.count;
            int i7 = this.originalCount;
            int[] iArr = this.states;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            MediaItem[] mediaItemArr = this.mediaItems;
            MediaItem[] mediaItemArr2 = (MediaItem[]) Arrays.copyOf(mediaItemArr, mediaItemArr.length);
            long[] jArr = this.durationsUs;
            long[] copyOf2 = Arrays.copyOf(jArr, jArr.length);
            long j8 = this.contentResumeOffsetUs;
            boolean z6 = this.isServerSideInserted;
            String[] strArr = this.ids;
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
            SkipInfo[] skipInfoArr = this.skipInfos;
            return new AdGroup(j7, i2, i7, copyOf, mediaItemArr2, copyOf2, j8, z6, strArr2, (SkipInfo[]) Arrays.copyOf(skipInfoArr, skipInfoArr.length), this.isPlaceholder);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && AdGroup.class == obj.getClass()) {
                AdGroup adGroup = (AdGroup) obj;
                if (this.timeUs == adGroup.timeUs && this.count == adGroup.count && this.originalCount == adGroup.originalCount && Arrays.equals(this.mediaItems, adGroup.mediaItems) && Arrays.equals(this.states, adGroup.states) && Arrays.equals(this.durationsUs, adGroup.durationsUs) && this.contentResumeOffsetUs == adGroup.contentResumeOffsetUs && this.isServerSideInserted == adGroup.isServerSideInserted && Arrays.equals(this.ids, adGroup.ids) && Arrays.equals(this.skipInfos, adGroup.skipInfos) && this.isPlaceholder == adGroup.isPlaceholder) {
                    return true;
                }
            }
            return false;
        }

        public int getFirstAdIndexToPlay() {
            return getNextAdIndexToPlay(-1);
        }

        public int getIndexOfAdId(String str) {
            int i2 = 0;
            while (true) {
                String[] strArr = this.ids;
                if (i2 >= strArr.length) {
                    return -1;
                }
                if (Objects.equals(strArr[i2], str)) {
                    return i2;
                }
                i2++;
            }
        }

        public int getNextAdIndexToPlay(int i2) {
            int i7;
            int i8 = i2 + 1;
            while (true) {
                int[] iArr = this.states;
                if (i8 >= iArr.length || this.isServerSideInserted || (i7 = iArr[i8]) == 0 || i7 == 1) {
                    break;
                }
                i8++;
            }
            return i8;
        }

        public boolean hasUnplayedAds() {
            if (this.count == -1) {
                return true;
            }
            for (int i2 = 0; i2 < this.count; i2++) {
                int i7 = this.states[i2];
                if (i7 == 0 || i7 == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i2 = ((this.count * 31) + this.originalCount) * 31;
            long j7 = this.timeUs;
            int hashCode = (Arrays.hashCode(this.durationsUs) + ((Arrays.hashCode(this.states) + ((Arrays.hashCode(this.mediaItems) + ((i2 + ((int) (j7 ^ (j7 >>> 32)))) * 31)) * 31)) * 31)) * 31;
            long j8 = this.contentResumeOffsetUs;
            return ((Arrays.hashCode(this.skipInfos) + ((((((hashCode + ((int) ((j8 >>> 32) ^ j8))) * 31) + (this.isServerSideInserted ? 1 : 0)) * 31) + Arrays.hashCode(this.ids)) * 31)) * 31) + (this.isPlaceholder ? 1 : 0);
        }

        public boolean isLivePostrollPlaceholder(boolean z6) {
            return this.isServerSideInserted == z6 && isLivePostrollPlaceholder();
        }

        public boolean shouldPlayAdGroup() {
            return this.count == -1 || getFirstAdIndexToPlay() < this.count;
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(FIELD_TIME_US, this.timeUs);
            bundle.putInt(FIELD_COUNT, this.count);
            bundle.putInt(FIELD_ORIGINAL_COUNT, this.originalCount);
            bundle.putParcelableArrayList(FIELD_URIS, new ArrayList<>(Arrays.asList(this.uris)));
            bundle.putParcelableArrayList(FIELD_MEDIA_ITEMS, getMediaItemsArrayBundles());
            bundle.putIntArray(FIELD_STATES, this.states);
            bundle.putLongArray(FIELD_DURATIONS_US, this.durationsUs);
            bundle.putLong(FIELD_CONTENT_RESUME_OFFSET_US, this.contentResumeOffsetUs);
            bundle.putBoolean(FIELD_IS_SERVER_SIDE_INSERTED, this.isServerSideInserted);
            bundle.putStringArrayList(FIELD_IDS, new ArrayList<>(Arrays.asList(this.ids)));
            bundle.putParcelableArrayList(FIELD_SKIP_INFOS, getSkipInfoArrayBundles());
            bundle.putBoolean(FIELD_IS_PLACEHOLDER, this.isPlaceholder);
            return bundle;
        }

        public AdGroup withAdCount(int i2) {
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i2);
            long[] copyDurationsUsWithSpaceForAdCount = copyDurationsUsWithSpaceForAdCount(this.durationsUs, i2);
            return new AdGroup(this.timeUs, i2, this.originalCount, copyStatesWithSpaceForAdCount, (MediaItem[]) Arrays.copyOf(this.mediaItems, i2), copyDurationsUsWithSpaceForAdCount, this.contentResumeOffsetUs, this.isServerSideInserted, (String[]) Arrays.copyOf(this.ids, i2), copySkipInfosWithSpaceForAdCount(this.skipInfos, i2), this.isPlaceholder);
        }

        public AdGroup withAdDurationsUs(long[] jArr) {
            int length = jArr.length;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (length < mediaItemArr.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, mediaItemArr.length);
            } else if (this.count != -1 && jArr.length > mediaItemArr.length) {
                jArr = Arrays.copyOf(jArr, mediaItemArr.length);
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, jArr, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdId(String str, int i2) {
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i2 + 1);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            long[] jArr2 = jArr;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (mediaItemArr.length != copyStatesWithSpaceForAdCount.length) {
                mediaItemArr = (MediaItem[]) Arrays.copyOf(mediaItemArr, copyStatesWithSpaceForAdCount.length);
            }
            MediaItem[] mediaItemArr2 = mediaItemArr;
            String[] strArr = (String[]) Arrays.copyOf(this.ids, copyStatesWithSpaceForAdCount.length);
            strArr[i2] = str;
            return new AdGroup(this.timeUs, this.count, this.originalCount, copyStatesWithSpaceForAdCount, mediaItemArr2, jArr2, this.contentResumeOffsetUs, this.isServerSideInserted, strArr, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAdMediaItem(MediaItem mediaItem, int i2) {
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i2 + 1);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            long[] jArr2 = jArr;
            MediaItem[] mediaItemArr = (MediaItem[]) Arrays.copyOf(this.mediaItems, copyStatesWithSpaceForAdCount.length);
            mediaItemArr[i2] = mediaItem;
            copyStatesWithSpaceForAdCount[i2] = 1;
            String[] strArr = this.ids;
            if (strArr.length != copyStatesWithSpaceForAdCount.length) {
                strArr = (String[]) Arrays.copyOf(strArr, copyStatesWithSpaceForAdCount.length);
            }
            String[] strArr2 = strArr;
            SkipInfo[] skipInfoArr = this.skipInfos;
            if (skipInfoArr.length != copyStatesWithSpaceForAdCount.length) {
                skipInfoArr = copySkipInfosWithSpaceForAdCount(skipInfoArr, copyStatesWithSpaceForAdCount.length);
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, copyStatesWithSpaceForAdCount, mediaItemArr, jArr2, this.contentResumeOffsetUs, this.isServerSideInserted, strArr2, skipInfoArr, this.isPlaceholder);
        }

        public AdGroup withAdSkipInfo(SkipInfo skipInfo, int i2) {
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i2 + 1);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            long[] jArr2 = jArr;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (mediaItemArr.length != copyStatesWithSpaceForAdCount.length) {
                mediaItemArr = (MediaItem[]) Arrays.copyOf(mediaItemArr, copyStatesWithSpaceForAdCount.length);
            }
            MediaItem[] mediaItemArr2 = mediaItemArr;
            String[] strArr = this.ids;
            if (strArr.length != copyStatesWithSpaceForAdCount.length) {
                strArr = (String[]) Arrays.copyOf(strArr, copyStatesWithSpaceForAdCount.length);
            }
            String[] strArr2 = strArr;
            SkipInfo[] copySkipInfosWithSpaceForAdCount = copySkipInfosWithSpaceForAdCount(this.skipInfos, copyStatesWithSpaceForAdCount.length);
            copySkipInfosWithSpaceForAdCount[i2] = skipInfo;
            return new AdGroup(this.timeUs, this.count, this.originalCount, copyStatesWithSpaceForAdCount, mediaItemArr2, jArr2, this.contentResumeOffsetUs, this.isServerSideInserted, strArr2, copySkipInfosWithSpaceForAdCount, this.isPlaceholder);
        }

        public AdGroup withAdState(int i2, int i7) {
            int i8 = this.count;
            P3.v.checkArgument(i8 == -1 || i7 < i8);
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i7 + 1);
            int i9 = copyStatesWithSpaceForAdCount[i7];
            P3.v.checkArgument(i9 == 0 || i9 == 1 || i9 == i2);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            long[] jArr2 = jArr;
            MediaItem[] mediaItemArr = this.mediaItems;
            if (mediaItemArr.length != copyStatesWithSpaceForAdCount.length) {
                mediaItemArr = (MediaItem[]) Arrays.copyOf(mediaItemArr, copyStatesWithSpaceForAdCount.length);
            }
            MediaItem[] mediaItemArr2 = mediaItemArr;
            String[] strArr = this.ids;
            if (strArr.length != copyStatesWithSpaceForAdCount.length) {
                strArr = (String[]) Arrays.copyOf(strArr, copyStatesWithSpaceForAdCount.length);
            }
            String[] strArr2 = strArr;
            copyStatesWithSpaceForAdCount[i7] = i2;
            SkipInfo[] skipInfoArr = this.skipInfos;
            if (skipInfoArr.length != copyStatesWithSpaceForAdCount.length) {
                skipInfoArr = copySkipInfosWithSpaceForAdCount(skipInfoArr, copyStatesWithSpaceForAdCount.length);
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, copyStatesWithSpaceForAdCount, mediaItemArr2, jArr2, this.contentResumeOffsetUs, this.isServerSideInserted, strArr2, skipInfoArr, this.isPlaceholder);
        }

        @Deprecated
        public AdGroup withAdUri(Uri uri, int i2) {
            return withAdMediaItem(MediaItem.fromUri(uri), i2);
        }

        public AdGroup withAllAdsReset() {
            if (this.count == -1) {
                return this;
            }
            int[] iArr = this.states;
            int length = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr, length);
            for (int i2 = 0; i2 < length; i2++) {
                int i7 = copyOf[i2];
                if (i7 == 3 || i7 == 2 || i7 == 4) {
                    copyOf[i2] = this.mediaItems[i2] == null ? 0 : 1;
                }
            }
            return new AdGroup(this.timeUs, length, this.originalCount, copyOf, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withAllAdsSkipped() {
            if (this.count == -1) {
                return new AdGroup(this.timeUs, 0, this.originalCount, new int[0], new MediaItem[0], new long[0], this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
            }
            int[] iArr = this.states;
            int length = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr, length);
            for (int i2 = 0; i2 < length; i2++) {
                int i7 = copyOf[i2];
                if (i7 == 1 || i7 == 0) {
                    copyOf[i2] = 2;
                }
            }
            return new AdGroup(this.timeUs, length, this.originalCount, copyOf, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withContentResumeOffsetUs(long j7) {
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, j7, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withIsServerSideInserted(boolean z6) {
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, z6, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withLastAdRemoved() {
            int[] iArr = this.states;
            int length = iArr.length - 1;
            int[] copyOf = Arrays.copyOf(iArr, length);
            MediaItem[] mediaItemArr = (MediaItem[]) Arrays.copyOf(this.mediaItems, length);
            long[] jArr = this.durationsUs;
            if (jArr.length > length) {
                jArr = Arrays.copyOf(jArr, length);
            }
            long[] jArr2 = jArr;
            return new AdGroup(this.timeUs, length, this.originalCount, copyOf, mediaItemArr, jArr2, Util.sum(jArr2), this.isServerSideInserted, (String[]) Arrays.copyOf(this.ids, length), (SkipInfo[]) Arrays.copyOf(this.skipInfos, length), this.isPlaceholder);
        }

        public AdGroup withOriginalAdCount(int i2) {
            return new AdGroup(this.timeUs, this.count, i2, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup withTimeUs(long j7) {
            return new AdGroup(j7, this.count, this.originalCount, this.states, this.mediaItems, this.durationsUs, this.contentResumeOffsetUs, this.isServerSideInserted, this.ids, this.skipInfos, this.isPlaceholder);
        }

        public AdGroup(long j7) {
            this(j7, -1, -1, new int[0], new MediaItem[0], new long[0], 0L, false, new String[0], new SkipInfo[0], false);
        }

        public boolean isLivePostrollPlaceholder() {
            return this.isPlaceholder && this.timeUs == Long.MIN_VALUE && this.count == -1;
        }

        private AdGroup(long j7, int i2, int i7, int[] iArr, MediaItem[] mediaItemArr, long[] jArr, long j8, boolean z6, String[] strArr, SkipInfo[] skipInfoArr, boolean z7) {
            int i8 = 0;
            P3.v.checkArgument(iArr.length == mediaItemArr.length);
            P3.v.checkArgument(iArr.length == skipInfoArr.length);
            this.timeUs = j7;
            this.count = i2;
            this.originalCount = i7;
            this.states = iArr;
            this.mediaItems = mediaItemArr;
            this.durationsUs = jArr;
            this.contentResumeOffsetUs = j8;
            this.isServerSideInserted = z6;
            this.uris = new Uri[mediaItemArr.length];
            while (true) {
                Uri[] uriArr = this.uris;
                if (i8 < uriArr.length) {
                    MediaItem mediaItem = mediaItemArr[i8];
                    uriArr[i8] = mediaItem == null ? null : ((MediaItem.LocalConfiguration) P3.v.checkNotNull(mediaItem.localConfiguration)).uri;
                    i8++;
                } else {
                    this.ids = strArr;
                    this.skipInfos = skipInfoArr;
                    this.isPlaceholder = z7;
                    return;
                }
            }
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    public static final class SkipInfo {
        public final String labelId;
        public final long skipDurationUs;
        public final long skipOffsetUs;
        private static final String FIELD_SKIP_OFFSET_US = Util.intToStringMaxRadix(0);
        private static final String FIELD_SKIP_DURATION_US = Util.intToStringMaxRadix(1);
        private static final String FIELD_LABEL_ID = Util.intToStringMaxRadix(2);

        public SkipInfo(long j7, long j8, String str) {
            P3.v.checkArgument((j7 == C.TIME_UNSET && j8 == C.TIME_UNSET && str == null) ? false : true);
            this.skipOffsetUs = j7 == C.TIME_UNSET ? 0L : j7;
            this.skipDurationUs = j8;
            this.labelId = str;
        }

        public static SkipInfo fromBundle(Bundle bundle) {
            return new SkipInfo(bundle.getLong(FIELD_SKIP_OFFSET_US), bundle.getLong(FIELD_SKIP_DURATION_US), bundle.getString(FIELD_LABEL_ID));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SkipInfo.class == obj.getClass()) {
                SkipInfo skipInfo = (SkipInfo) obj;
                if (this.skipOffsetUs == skipInfo.skipOffsetUs && this.skipDurationUs == skipInfo.skipDurationUs && Objects.equals(this.labelId, skipInfo.labelId)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.skipOffsetUs), Long.valueOf(this.skipDurationUs), this.labelId);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(FIELD_SKIP_OFFSET_US, this.skipOffsetUs);
            bundle.putLong(FIELD_SKIP_DURATION_US, this.skipDurationUs);
            bundle.putString(FIELD_LABEL_ID, this.labelId);
            return bundle;
        }
    }

    public AdPlaybackState(Object obj, long... jArr) {
        this(obj, createEmptyAdGroups(jArr), 0L, C.TIME_UNSET, 0);
    }

    private static AdGroup[] createEmptyAdGroups(long[] jArr) {
        int length = jArr.length;
        AdGroup[] adGroupArr = new AdGroup[length];
        for (int i2 = 0; i2 < length; i2++) {
            adGroupArr[i2] = new AdGroup(jArr[i2]);
        }
        return adGroupArr;
    }

    public static AdPlaybackState fromAdPlaybackState(Object obj, AdPlaybackState adPlaybackState) {
        int i2 = adPlaybackState.adGroupCount - adPlaybackState.removedAdGroupCount;
        AdGroup[] adGroupArr = new AdGroup[i2];
        int i7 = 0;
        while (i7 < i2) {
            AdGroup adGroup = adPlaybackState.adGroups[i7];
            long j7 = adGroup.timeUs;
            int i8 = adGroup.count;
            int i9 = adGroup.originalCount;
            int[] iArr = adGroup.states;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            MediaItem[] mediaItemArr = adGroup.mediaItems;
            MediaItem[] mediaItemArr2 = (MediaItem[]) Arrays.copyOf(mediaItemArr, mediaItemArr.length);
            long[] jArr = adGroup.durationsUs;
            adGroupArr[i7] = new AdGroup(j7, i8, i9, copyOf, mediaItemArr2, Arrays.copyOf(jArr, jArr.length), adGroup.contentResumeOffsetUs, adGroup.isServerSideInserted, adGroup.ids, adGroup.skipInfos, adGroup.isPlaceholder);
            i7++;
            i2 = i2;
        }
        return new AdPlaybackState(obj, adGroupArr, adPlaybackState.adResumePositionUs, adPlaybackState.contentDurationUs, adPlaybackState.removedAdGroupCount);
    }

    public static AdPlaybackState fromBundle(Bundle bundle) {
        AdGroup[] adGroupArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_AD_GROUPS);
        if (parcelableArrayList == null) {
            adGroupArr = new AdGroup[0];
        } else {
            AdGroup[] adGroupArr2 = new AdGroup[parcelableArrayList.size()];
            for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
                adGroupArr2[i2] = AdGroup.fromBundle((Bundle) parcelableArrayList.get(i2));
            }
            adGroupArr = adGroupArr2;
        }
        String str = FIELD_AD_RESUME_POSITION_US;
        AdPlaybackState adPlaybackState = NONE;
        return new AdPlaybackState(null, adGroupArr, bundle.getLong(str, adPlaybackState.adResumePositionUs), bundle.getLong(FIELD_CONTENT_DURATION_US, adPlaybackState.contentDurationUs), bundle.getInt(FIELD_REMOVED_AD_GROUP_COUNT, adPlaybackState.removedAdGroupCount));
    }

    private boolean isPositionBeforeAdGroup(long j7, long j8, int i2) {
        if (j7 == Long.MIN_VALUE) {
            return false;
        }
        AdGroup adGroup = getAdGroup(i2);
        long j9 = adGroup.timeUs;
        return j9 == Long.MIN_VALUE ? j8 == C.TIME_UNSET || adGroup.isLivePostrollPlaceholder() || j7 < j8 : j7 < j9;
    }

    public AdPlaybackState copy() {
        int length = this.adGroups.length;
        AdGroup[] adGroupArr = new AdGroup[length];
        for (int i2 = 0; i2 < length; i2++) {
            adGroupArr[i2] = this.adGroups[i2].copy();
        }
        return new AdPlaybackState(this.adsId, adGroupArr, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public boolean endsWithLivePostrollPlaceHolder() {
        int i2 = this.adGroupCount - 1;
        return i2 >= 0 && isLivePostrollPlaceholder(i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AdPlaybackState.class == obj.getClass()) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) obj;
            if (Objects.equals(this.adsId, adPlaybackState.adsId) && this.adGroupCount == adPlaybackState.adGroupCount && this.adResumePositionUs == adPlaybackState.adResumePositionUs && this.contentDurationUs == adPlaybackState.contentDurationUs && this.removedAdGroupCount == adPlaybackState.removedAdGroupCount && Arrays.equals(this.adGroups, adPlaybackState.adGroups)) {
                return true;
            }
        }
        return false;
    }

    public AdGroup getAdGroup(int i2) {
        int i7 = this.removedAdGroupCount;
        return i2 < i7 ? REMOVED_AD_GROUP : this.adGroups[i2 - i7];
    }

    public int getAdGroupIndexAfterPositionUs(long j7, long j8) {
        if (j7 != Long.MIN_VALUE && (j8 == C.TIME_UNSET || j7 < j8)) {
            int i2 = this.removedAdGroupCount;
            while (i2 < this.adGroupCount && ((getAdGroup(i2).timeUs != Long.MIN_VALUE && getAdGroup(i2).timeUs <= j7) || !getAdGroup(i2).shouldPlayAdGroup())) {
                i2++;
            }
            if (i2 < this.adGroupCount && (j8 == C.TIME_UNSET || getAdGroup(i2).timeUs <= j8)) {
                return i2;
            }
        }
        return -1;
    }

    public int getAdGroupIndexForPositionUs(long j7, long j8) {
        int i2 = this.adGroupCount - 1;
        int i7 = i2 - (isLivePostrollPlaceholder(i2) ? 1 : 0);
        while (i7 >= 0) {
            long j9 = j7;
            long j10 = j8;
            if (!isPositionBeforeAdGroup(j9, j10, i7)) {
                break;
            }
            i7--;
            j7 = j9;
            j8 = j10;
        }
        if (i7 < 0 || !getAdGroup(i7).hasUnplayedAds()) {
            return -1;
        }
        return i7;
    }

    public int getAdIndexOfAdId(int i2, String str) {
        return getAdGroup(i2).getIndexOfAdId(str);
    }

    public int hashCode() {
        int i2 = this.adGroupCount * 31;
        Object obj = this.adsId;
        return Arrays.hashCode(this.adGroups) + ((((((((i2 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.adResumePositionUs)) * 31) + ((int) this.contentDurationUs)) * 31) + this.removedAdGroupCount) * 31);
    }

    public boolean isAdInErrorState(int i2, int i7) {
        AdGroup adGroup;
        int i8;
        return i2 < this.adGroupCount && (i8 = (adGroup = getAdGroup(i2)).count) != -1 && i7 < i8 && adGroup.states[i7] == 4;
    }

    public boolean isLivePostrollPlaceholder(int i2) {
        return i2 == this.adGroupCount - 1 && getAdGroup(i2).isLivePostrollPlaceholder();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (AdGroup adGroup : this.adGroups) {
            arrayList.add(adGroup.toBundle());
        }
        if (!arrayList.isEmpty()) {
            bundle.putParcelableArrayList(FIELD_AD_GROUPS, arrayList);
        }
        long j7 = this.adResumePositionUs;
        AdPlaybackState adPlaybackState = NONE;
        if (j7 != adPlaybackState.adResumePositionUs) {
            bundle.putLong(FIELD_AD_RESUME_POSITION_US, j7);
        }
        long j8 = this.contentDurationUs;
        if (j8 != adPlaybackState.contentDurationUs) {
            bundle.putLong(FIELD_CONTENT_DURATION_US, j8);
        }
        int i2 = this.removedAdGroupCount;
        if (i2 != adPlaybackState.removedAdGroupCount) {
            bundle.putInt(FIELD_REMOVED_AD_GROUP_COUNT, i2);
        }
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=");
        sb.append(this.adsId);
        sb.append(", adResumePositionUs=");
        sb.append(this.adResumePositionUs);
        sb.append(", adGroups=[");
        for (int i2 = 0; i2 < this.adGroups.length; i2++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.adGroups[i2].timeUs);
            sb.append(", ads=[");
            for (int i7 = 0; i7 < this.adGroups[i2].states.length; i7++) {
                sb.append("ad(state=");
                int i8 = this.adGroups[i2].states[i7];
                if (i8 == 0) {
                    sb.append('_');
                } else if (i8 == 1) {
                    sb.append('R');
                } else if (i8 == 2) {
                    sb.append('S');
                } else if (i8 == 3) {
                    sb.append('P');
                } else if (i8 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.adGroups[i2].durationsUs[i7]);
                sb.append(')');
                if (i7 < this.adGroups[i2].states.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i2 < this.adGroups.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    public AdPlaybackState withAdCount(int i2, int i7) {
        P3.v.checkArgument(i7 > 0);
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i8].count == i7) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = this.adGroups[i8].withAdCount(i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdDurationsUs(long[][] jArr) {
        int i2 = 0;
        P3.v.checkArgument(jArr.length == this.adGroupCount);
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        while (true) {
            int i7 = this.adGroupCount;
            int i8 = this.removedAdGroupCount;
            if (i2 >= i7 - i8) {
                return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, i8);
            }
            adGroupArr2[i2] = adGroupArr2[i2].withAdDurationsUs(jArr[i8 + i2]);
            i2++;
        }
    }

    public AdPlaybackState withAdGroupTimeUs(int i2, long j7) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = this.adGroups[i7].withTimeUs(j7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdId(int i2, int i7, String str) {
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = adGroupArr2[i8].withAdId(str, i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdLoadError(int i2, int i7) {
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = adGroupArr2[i8].withAdState(4, i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdResumePositionUs(long j7) {
        return this.adResumePositionUs == j7 ? this : new AdPlaybackState(this.adsId, this.adGroups, j7, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdSkipInfo(int i2, int i7, SkipInfo skipInfo) {
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = adGroupArr2[i8].withAdSkipInfo(skipInfo, i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAdsId(Object obj) {
        return new AdPlaybackState(obj, this.adGroups, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withAvailableAd(int i2, int i7) {
        return withAvailableAdMediaItem(i2, i7, MediaItem.fromUri(Uri.EMPTY));
    }

    public AdPlaybackState withAvailableAdMediaItem(int i2, int i7, MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration;
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        P3.v.checkState(adGroupArr2[i8].isServerSideInserted || !((localConfiguration = mediaItem.localConfiguration) == null || localConfiguration.uri.equals(Uri.EMPTY)));
        adGroupArr2[i8] = adGroupArr2[i8].withAdMediaItem(mediaItem, i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    @Deprecated
    public AdPlaybackState withAvailableAdUri(int i2, int i7, Uri uri) {
        return withAvailableAdMediaItem(i2, i7, MediaItem.fromUri(uri));
    }

    public AdPlaybackState withContentDurationUs(long j7) {
        return this.contentDurationUs == j7 ? this : new AdPlaybackState(this.adsId, this.adGroups, this.adResumePositionUs, j7, this.removedAdGroupCount);
    }

    public AdPlaybackState withContentResumeOffsetUs(int i2, long j7) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i7].contentResumeOffsetUs == j7) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withContentResumeOffsetUs(j7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withIsPlaceholder(int i2, boolean z6, boolean z7) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup adGroup = adGroupArr[i7];
        if (adGroup.isPlaceholder == z6 && adGroup.isServerSideInserted == z7) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withIsPlaceholder(z6, z7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withIsServerSideInserted(int i2, boolean z6) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i7].isServerSideInserted == z6) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withIsServerSideInserted(z6);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withLastAdRemoved(int i2) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withLastAdRemoved();
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    @Deprecated
    public AdPlaybackState withLivePostrollPlaceholderAppended() {
        return withLivePostrollPlaceholderAppended(true);
    }

    public AdPlaybackState withNewAdGroup(int i2, long j7) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup adGroup = new AdGroup(j7);
        AdGroup[] adGroupArr = (AdGroup[]) Util.nullSafeArrayAppend(this.adGroups, adGroup);
        System.arraycopy(adGroupArr, i7, adGroupArr, i7 + 1, this.adGroups.length - i7);
        adGroupArr[i7] = adGroup;
        return new AdPlaybackState(this.adsId, adGroupArr, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withOriginalAdCount(int i2, int i7) {
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i8].originalCount == i7) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = adGroupArr2[i8].withOriginalAdCount(i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withPlayedAd(int i2, int i7) {
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = adGroupArr2[i8].withAdState(3, i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withRemovedAdGroupCount(int i2) {
        int i7 = this.removedAdGroupCount;
        if (i7 == i2) {
            return this;
        }
        P3.v.checkArgument(i2 > i7);
        int i8 = this.adGroupCount - i2;
        AdGroup[] adGroupArr = new AdGroup[i8];
        System.arraycopy(this.adGroups, i2 - this.removedAdGroupCount, adGroupArr, 0, i8);
        return new AdPlaybackState(this.adsId, adGroupArr, this.adResumePositionUs, this.contentDurationUs, i2);
    }

    public AdPlaybackState withRemovedAdGroupCountBefore(long j7) {
        int i2 = this.removedAdGroupCount;
        while (i2 < this.adGroupCount) {
            long j8 = getAdGroup(i2).timeUs;
            if (j7 <= j8 || j8 == Long.MIN_VALUE) {
                break;
            }
            i2++;
        }
        return withRemovedAdGroupCount(i2);
    }

    public AdPlaybackState withResetAdGroup(int i2) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withAllAdsReset();
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withSkippedAd(int i2, int i7) {
        int i8 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i8] = adGroupArr2[i8].withAdState(2, i7);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public AdPlaybackState withSkippedAdGroup(int i2) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withAllAdsSkipped();
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    public boolean isLivePostrollPlaceholder(int i2, boolean z6) {
        return i2 == this.adGroupCount - 1 && getAdGroup(i2).isLivePostrollPlaceholder(z6);
    }

    public AdPlaybackState withLivePostrollPlaceholderAppended(boolean z6) {
        return withNewAdGroup(this.adGroupCount, Long.MIN_VALUE).withIsPlaceholder(this.adGroupCount, true, z6);
    }

    private AdPlaybackState(Object obj, AdGroup[] adGroupArr, long j7, long j8, int i2) {
        this.adsId = obj;
        this.adResumePositionUs = j7;
        this.contentDurationUs = j8;
        this.adGroupCount = adGroupArr.length + i2;
        this.adGroups = adGroupArr;
        this.removedAdGroupCount = i2;
    }

    public boolean endsWithLivePostrollPlaceHolder(boolean z6) {
        int i2 = this.adGroupCount - 1;
        return i2 >= 0 && isLivePostrollPlaceholder(i2, z6);
    }

    public AdPlaybackState withAdDurationsUs(int i2, long... jArr) {
        int i7 = i2 - this.removedAdGroupCount;
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.nullSafeArrayCopy(adGroupArr, adGroupArr.length);
        adGroupArr2[i7] = adGroupArr2[i7].withAdDurationsUs(jArr);
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }
}
