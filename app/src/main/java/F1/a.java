package F1;

import B1.t;
import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final String f980b = t.tagWithPrefix("SystemJobInfoConverter");

    /* renamed from: a, reason: collision with root package name */
    public final ComponentName f981a;

    public a(Context context) {
        this.f981a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }
}
