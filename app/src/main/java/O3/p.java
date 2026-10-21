package O3;

import android.content.Context;
import android.content.res.Resources;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final String f2409a;

    public p(Context context) {
        Resources resources = context.getResources();
        Map<String, String> a7 = H.a((resources == null || resources.getConfiguration() == null || resources.getConfiguration().locale == null) ? Locale.getDefault() : resources.getConfiguration().locale);
        this.f2409a = a7.get("error_initializing_player");
        a7.get("get_youtube_app_title");
        a7.get("get_youtube_app_text");
        a7.get("get_youtube_app_action");
        a7.get("enable_youtube_app_title");
        a7.get("enable_youtube_app_text");
        a7.get("enable_youtube_app_action");
        a7.get("update_youtube_app_title");
        a7.get("update_youtube_app_text");
        a7.get("update_youtube_app_action");
    }
}
