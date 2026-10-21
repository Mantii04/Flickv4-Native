package f1;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: f1.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0914u {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f14311a;

    /* renamed from: b, reason: collision with root package name */
    public final List f14312b;

    /* renamed from: c, reason: collision with root package name */
    public final List f14313c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f14314d;

    public C0914u(String str, String str2) {
        this.f14312b = new ArrayList();
        this.f14313c = new ArrayList();
        this.f14314d = new HashSet();
        this.f14311a = new Bundle();
        setId(str);
        setName(str2);
    }

    public C0914u addControlFilter(IntentFilter intentFilter) {
        if (intentFilter == null) {
            throw new IllegalArgumentException("filter must not be null");
        }
        List list = this.f14313c;
        if (!list.contains(intentFilter)) {
            list.add(intentFilter);
        }
        return this;
    }

    public C0914u addControlFilters(Collection<IntentFilter> collection) {
        if (collection == null) {
            throw new IllegalArgumentException("filters must not be null");
        }
        if (!collection.isEmpty()) {
            for (IntentFilter intentFilter : collection) {
                if (intentFilter != null) {
                    addControlFilter(intentFilter);
                }
            }
        }
        return this;
    }

    public C0914u addGroupMemberId(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("groupMemberId must not be empty");
        }
        List list = this.f14312b;
        if (!list.contains(str)) {
            list.add(str);
        }
        return this;
    }

    public C0914u addGroupMemberIds(Collection<String> collection) {
        if (collection == null) {
            throw new IllegalArgumentException("groupMemberIds must not be null");
        }
        if (!collection.isEmpty()) {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                addGroupMemberId(it.next());
            }
        }
        return this;
    }

    public C0915v build() {
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f14313c);
        Bundle bundle = this.f14311a;
        bundle.putParcelableArrayList("controlFilters", arrayList);
        bundle.putStringArrayList("groupMemberIds", new ArrayList<>(this.f14312b));
        bundle.putStringArrayList("allowedPackages", new ArrayList<>(this.f14314d));
        return new C0915v(bundle);
    }

    public C0914u clearControlFilters() {
        this.f14313c.clear();
        return this;
    }

    public C0914u clearGroupMemberIds() {
        this.f14312b.clear();
        return this;
    }

    public C0914u setCanDisconnect(boolean z6) {
        this.f14311a.putBoolean("canDisconnect", z6);
        return this;
    }

    public C0914u setConnectionState(int i2) {
        this.f14311a.putInt("connectionState", i2);
        return this;
    }

    public C0914u setDeduplicationIds(Set<String> set) {
        this.f14311a.putStringArrayList("deduplicationIds", new ArrayList<>(set));
        return this;
    }

    public C0914u setDescription(String str) {
        this.f14311a.putString("status", str);
        return this;
    }

    public C0914u setDeviceType(int i2) {
        this.f14311a.putInt("deviceType", i2);
        return this;
    }

    public C0914u setEnabled(boolean z6) {
        this.f14311a.putBoolean("enabled", z6);
        return this;
    }

    public C0914u setExtras(Bundle bundle) {
        Bundle bundle2 = this.f14311a;
        if (bundle == null) {
            bundle2.putBundle("extras", null);
            return this;
        }
        bundle2.putBundle("extras", new Bundle(bundle));
        return this;
    }

    public C0914u setIconUri(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("iconUri must not be null");
        }
        this.f14311a.putString("iconUri", uri.toString());
        return this;
    }

    public C0914u setId(String str) {
        if (str == null) {
            throw new NullPointerException("id must not be null");
        }
        this.f14311a.putString("id", str);
        return this;
    }

    public C0914u setName(String str) {
        if (str == null) {
            throw new NullPointerException("name must not be null");
        }
        this.f14311a.putString("name", str);
        return this;
    }

    public C0914u setPlaybackStream(int i2) {
        this.f14311a.putInt("playbackStream", i2);
        return this;
    }

    public C0914u setPlaybackType(int i2) {
        this.f14311a.putInt("playbackType", i2);
        return this;
    }

    public C0914u setPresentationDisplayId(int i2) {
        this.f14311a.putInt("presentationDisplayId", i2);
        return this;
    }

    public C0914u setVolume(int i2) {
        this.f14311a.putInt("volume", i2);
        return this;
    }

    public C0914u setVolumeHandling(int i2) {
        this.f14311a.putInt("volumeHandling", i2);
        return this;
    }

    public C0914u setVolumeMax(int i2) {
        this.f14311a.putInt("volumeMax", i2);
        return this;
    }

    public C0914u(C0915v c0915v) {
        this.f14312b = new ArrayList();
        this.f14313c = new ArrayList();
        this.f14314d = new HashSet();
        if (c0915v != null) {
            this.f14311a = new Bundle(c0915v.f14316a);
            this.f14312b = c0915v.getGroupMemberIds();
            this.f14313c = c0915v.getControlFilters();
            this.f14314d = c0915v.getAllowedPackages();
            return;
        }
        throw new IllegalArgumentException("descriptor must not be null");
    }
}
