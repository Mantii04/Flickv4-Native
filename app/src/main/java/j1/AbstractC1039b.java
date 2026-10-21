package j1;

import V3.F;
import android.content.Context;
import android.net.Uri;

/* renamed from: j1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1039b {

    /* renamed from: a, reason: collision with root package name */
    public static final C1038a f16943a = new C1038a(null);

    public static final AbstractC1039b from(Context context) {
        return f16943a.from(context);
    }

    public abstract F getMeasurementApiStatusAsync();

    public abstract F registerTriggerAsync(Uri uri);
}
