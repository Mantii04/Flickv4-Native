package z;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f21384a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f21385b;

    /* renamed from: c, reason: collision with root package name */
    public final U[] f21386c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f21387d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f21388e;

    /* renamed from: f, reason: collision with root package name */
    public final int f21389f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f21390g;

    /* renamed from: h, reason: collision with root package name */
    public final PendingIntent f21391h;

    public y(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        this(i2 != 0 ? IconCompat.createWithResource(null, "", i2) : null, charSequence, pendingIntent);
    }

    public PendingIntent getActionIntent() {
        return this.f21391h;
    }

    public boolean getAllowGeneratedReplies() {
        return this.f21387d;
    }

    public Bundle getExtras() {
        return this.f21384a;
    }

    public IconCompat getIconCompat() {
        int i2;
        if (this.f21385b == null && (i2 = this.f21389f) != 0) {
            this.f21385b = IconCompat.createWithResource(null, "", i2);
        }
        return this.f21385b;
    }

    public U[] getRemoteInputs() {
        return this.f21386c;
    }

    public int getSemanticAction() {
        return 0;
    }

    public boolean getShowsUserInterface() {
        return this.f21388e;
    }

    public CharSequence getTitle() {
        return this.f21390g;
    }

    public boolean isAuthenticationRequired() {
        return false;
    }

    public boolean isContextual() {
        return false;
    }

    public y(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
        this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, true);
    }

    public y(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, U[] uArr, U[] uArr2, boolean z6, boolean z7) {
        this.f21388e = true;
        this.f21385b = iconCompat;
        if (iconCompat != null && iconCompat.getType() == 2) {
            this.f21389f = iconCompat.getResId();
        }
        this.f21390g = C1954B.limitCharSequenceLength(charSequence);
        this.f21391h = pendingIntent;
        this.f21384a = bundle == null ? new Bundle() : bundle;
        this.f21386c = uArr;
        this.f21387d = z6;
        this.f21388e = z7;
    }
}
