package f1;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: f1.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0915v {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f14316a;

    public C0915v(Bundle bundle) {
        this.f14316a = bundle;
    }

    public static C0915v fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new C0915v(bundle);
        }
        return null;
    }

    public boolean canDisconnectAndKeepPlaying() {
        return this.f14316a.getBoolean("canDisconnect", false);
    }

    public Set<String> getAllowedPackages() {
        Bundle bundle = this.f14316a;
        return !bundle.containsKey("allowedPackages") ? new HashSet() : new HashSet(bundle.getStringArrayList("allowedPackages"));
    }

    public int getConnectionState() {
        return this.f14316a.getInt("connectionState", 0);
    }

    public List<IntentFilter> getControlFilters() {
        Bundle bundle = this.f14316a;
        return !bundle.containsKey("controlFilters") ? new ArrayList() : new ArrayList(bundle.getParcelableArrayList("controlFilters"));
    }

    public String getDescription() {
        return this.f14316a.getString("status");
    }

    public int getDeviceType() {
        return this.f14316a.getInt("deviceType");
    }

    public Bundle getExtras() {
        return this.f14316a.getBundle("extras");
    }

    public List<String> getGroupMemberIds() {
        Bundle bundle = this.f14316a;
        return !bundle.containsKey("groupMemberIds") ? new ArrayList() : new ArrayList(bundle.getStringArrayList("groupMemberIds"));
    }

    public Uri getIconUri() {
        String string = this.f14316a.getString("iconUri");
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public String getId() {
        return this.f14316a.getString("id");
    }

    public int getMaxClientVersion() {
        return this.f14316a.getInt("maxClientVersion", Log.LOG_LEVEL_OFF);
    }

    public int getMinClientVersion() {
        return this.f14316a.getInt("minClientVersion", 1);
    }

    public String getName() {
        return this.f14316a.getString("name");
    }

    public int getPlaybackStream() {
        return this.f14316a.getInt("playbackStream", -1);
    }

    public int getPlaybackType() {
        return this.f14316a.getInt("playbackType", 1);
    }

    public int getPresentationDisplayId() {
        return this.f14316a.getInt("presentationDisplayId", -1);
    }

    public IntentSender getSettingsActivity() {
        return (IntentSender) this.f14316a.getParcelable("settingsIntent");
    }

    public int getVolume() {
        return this.f14316a.getInt("volume");
    }

    public int getVolumeHandling() {
        return this.f14316a.getInt("volumeHandling", 0);
    }

    public int getVolumeMax() {
        return this.f14316a.getInt("volumeMax");
    }

    public boolean isEnabled() {
        return this.f14316a.getBoolean("enabled", true);
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(getId()) || TextUtils.isEmpty(getName()) || getControlFilters().contains(null)) ? false : true;
    }

    public boolean isVisibilityPublic() {
        return this.f14316a.getBoolean("isVisibilityPublic", true);
    }

    public String toString() {
        return "MediaRouteDescriptor{ id=" + getId() + ", groupMemberIds=" + getGroupMemberIds() + ", name=" + getName() + ", description=" + getDescription() + ", iconUri=" + getIconUri() + ", isEnabled=" + isEnabled() + ", connectionState=" + getConnectionState() + ", controlFilters=" + Arrays.toString(getControlFilters().toArray()) + ", playbackType=" + getPlaybackType() + ", playbackStream=" + getPlaybackStream() + ", deviceType=" + getDeviceType() + ", volume=" + getVolume() + ", volumeMax=" + getVolumeMax() + ", volumeHandling=" + getVolumeHandling() + ", presentationDisplayId=" + getPresentationDisplayId() + ", extras=" + getExtras() + ", isValid=" + isValid() + ", minClientVersion=" + getMinClientVersion() + ", maxClientVersion=" + getMaxClientVersion() + ", isVisibilityPublic=" + isVisibilityPublic() + ", allowedPackages=" + Arrays.toString(getAllowedPackages().toArray()) + " }";
    }
}
