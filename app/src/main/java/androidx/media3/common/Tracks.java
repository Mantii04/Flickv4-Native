package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public final class Tracks {
    public static final Tracks EMPTY = new Tracks(ImmutableList.of());
    private static final String FIELD_TRACK_GROUPS = Util.intToStringMaxRadix(0);
    private final ImmutableList<Group> groups;

    public static final class Group {
        private final boolean adaptiveSupported;
        public final int length;
        private final TrackGroup mediaTrackGroup;
        private final boolean[] trackSelected;
        private final int[] trackSupport;
        private static final String FIELD_TRACK_GROUP = Util.intToStringMaxRadix(0);
        private static final String FIELD_TRACK_SUPPORT = Util.intToStringMaxRadix(1);
        private static final String FIELD_TRACK_SELECTED = Util.intToStringMaxRadix(3);
        private static final String FIELD_ADAPTIVE_SUPPORTED = Util.intToStringMaxRadix(4);

        @UnstableApi
        public Group(TrackGroup trackGroup, boolean z6, int[] iArr, boolean[] zArr) {
            int i2 = trackGroup.length;
            this.length = i2;
            boolean z7 = false;
            P3.v.checkArgument(i2 == iArr.length && i2 == zArr.length);
            this.mediaTrackGroup = trackGroup;
            if (z6 && i2 > 1) {
                z7 = true;
            }
            this.adaptiveSupported = z7;
            this.trackSupport = (int[]) iArr.clone();
            this.trackSelected = (boolean[]) zArr.clone();
        }

        @UnstableApi
        public static Group fromBundle(Bundle bundle) {
            TrackGroup fromBundle = TrackGroup.fromBundle((Bundle) P3.v.checkNotNull(bundle.getBundle(FIELD_TRACK_GROUP)));
            return new Group(fromBundle, bundle.getBoolean(FIELD_ADAPTIVE_SUPPORTED, false), (int[]) P3.t.firstNonNull(bundle.getIntArray(FIELD_TRACK_SUPPORT), new int[fromBundle.length]), (boolean[]) P3.t.firstNonNull(bundle.getBooleanArray(FIELD_TRACK_SELECTED), new boolean[fromBundle.length]));
        }

        @UnstableApi
        public Group copyWithId(String str) {
            return new Group(this.mediaTrackGroup.copyWithId(str), this.adaptiveSupported, this.trackSupport, this.trackSelected);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Group.class == obj.getClass()) {
                Group group = (Group) obj;
                if (this.adaptiveSupported == group.adaptiveSupported && this.mediaTrackGroup.equals(group.mediaTrackGroup) && Arrays.equals(this.trackSupport, group.trackSupport) && Arrays.equals(this.trackSelected, group.trackSelected)) {
                    return true;
                }
            }
            return false;
        }

        public TrackGroup getMediaTrackGroup() {
            return this.mediaTrackGroup;
        }

        public Format getTrackFormat(int i2) {
            return this.mediaTrackGroup.getFormat(i2);
        }

        @UnstableApi
        public int getTrackSupport(int i2) {
            return this.trackSupport[i2];
        }

        public int getType() {
            return this.mediaTrackGroup.type;
        }

        public int hashCode() {
            return Arrays.hashCode(this.trackSelected) + ((Arrays.hashCode(this.trackSupport) + (((this.mediaTrackGroup.hashCode() * 31) + (this.adaptiveSupported ? 1 : 0)) * 31)) * 31);
        }

        public boolean isAdaptiveSupported() {
            return this.adaptiveSupported;
        }

        public boolean isSelected() {
            return U3.a.contains(this.trackSelected, true);
        }

        public boolean isSupported() {
            return isSupported(false);
        }

        public boolean isTrackSelected(int i2) {
            return this.trackSelected[i2];
        }

        public boolean isTrackSupported(int i2) {
            return isTrackSupported(i2, false);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(FIELD_TRACK_GROUP, this.mediaTrackGroup.toBundle());
            bundle.putIntArray(FIELD_TRACK_SUPPORT, this.trackSupport);
            bundle.putBooleanArray(FIELD_TRACK_SELECTED, this.trackSelected);
            bundle.putBoolean(FIELD_ADAPTIVE_SUPPORTED, this.adaptiveSupported);
            return bundle;
        }

        public boolean isSupported(boolean z6) {
            for (int i2 = 0; i2 < this.trackSupport.length; i2++) {
                if (isTrackSupported(i2, z6)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isTrackSupported(int i2, boolean z6) {
            int i7 = this.trackSupport[i2];
            if (i7 != 4) {
                return z6 && i7 == 3;
            }
            return true;
        }
    }

    @UnstableApi
    public Tracks(List<Group> list) {
        this.groups = ImmutableList.copyOf((Collection) list);
    }

    @UnstableApi
    public static Tracks fromBundle(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_TRACK_GROUPS);
        return new Tracks(parcelableArrayList == null ? ImmutableList.of() : BundleCollectionUtil.fromBundleList(new P0.y(18), parcelableArrayList));
    }

    public boolean containsType(int i2) {
        for (int i7 = 0; i7 < this.groups.size(); i7++) {
            if (this.groups.get(i7).getType() == i2) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Tracks.class != obj.getClass()) {
            return false;
        }
        return this.groups.equals(((Tracks) obj).groups);
    }

    public ImmutableList<Group> getGroups() {
        return this.groups;
    }

    public int hashCode() {
        return this.groups.hashCode();
    }

    public boolean isEmpty() {
        return this.groups.isEmpty();
    }

    public boolean isTypeSelected(int i2) {
        for (int i7 = 0; i7 < this.groups.size(); i7++) {
            Group group = this.groups.get(i7);
            if (group.isSelected() && group.getType() == i2) {
                return true;
            }
        }
        return false;
    }

    public boolean isTypeSupported(int i2) {
        return isTypeSupported(i2, false);
    }

    @UnstableApi
    @Deprecated
    public boolean isTypeSupportedOrEmpty(int i2) {
        return isTypeSupportedOrEmpty(i2, false);
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_TRACK_GROUPS, BundleCollectionUtil.toBundleArrayList(this.groups, new P0.y(17)));
        return bundle;
    }

    public boolean isTypeSupported(int i2, boolean z6) {
        for (int i7 = 0; i7 < this.groups.size(); i7++) {
            if (this.groups.get(i7).getType() == i2 && this.groups.get(i7).isSupported(z6)) {
                return true;
            }
        }
        return false;
    }

    @UnstableApi
    @Deprecated
    public boolean isTypeSupportedOrEmpty(int i2, boolean z6) {
        return !containsType(i2) || isTypeSupported(i2, z6);
    }
}
