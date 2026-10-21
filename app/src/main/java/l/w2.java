package l;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class w2 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18040a;

    /* renamed from: b, reason: collision with root package name */
    public final View f18041b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f18042c;

    /* renamed from: d, reason: collision with root package name */
    public final WindowManager.LayoutParams f18043d;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f18044e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f18045f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f18046g;

    public w2(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f18043d = layoutParams;
        this.f18044e = new Rect();
        this.f18045f = new int[2];
        this.f18046g = new int[2];
        this.f18040a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f18041b = inflate;
        this.f18042c = (TextView) inflate.findViewById(R.id.message);
        layoutParams.setTitle(w2.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }
}
