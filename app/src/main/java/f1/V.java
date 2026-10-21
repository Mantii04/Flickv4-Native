package f1;

import android.media.MediaRoute2Info;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class V {
    public static void copyDescriptorVisibilityToBuilder(MediaRoute2Info.Builder builder, C0915v c0915v) {
        if (c0915v.isVisibilityPublic()) {
            builder.setVisibilityPublic();
        } else {
            builder.setVisibilityRestricted(c0915v.getAllowedPackages());
        }
    }

    public static Set<String> getDeduplicationIds(MediaRoute2Info mediaRoute2Info) {
        return mediaRoute2Info.getDeduplicationIds();
    }

    public static int getType(MediaRoute2Info mediaRoute2Info) {
        return mediaRoute2Info.getType();
    }

    public static void setDeduplicationIds(MediaRoute2Info.Builder builder, Set<String> set) {
        builder.setDeduplicationIds(set);
    }

    public static void setDeviceType(MediaRoute2Info.Builder builder, int i2) {
        builder.setType(i2);
    }
}
