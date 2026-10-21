package T;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class e extends c {

    /* renamed from: r, reason: collision with root package name */
    public final int f3425r;

    /* renamed from: s, reason: collision with root package name */
    public final int f3426s;

    /* renamed from: t, reason: collision with root package name */
    public final LayoutInflater f3427t;

    @Deprecated
    public e(Context context, int i2, Cursor cursor, boolean z6) {
        super(context, cursor, z6);
        this.f3426s = i2;
        this.f3425r = i2;
        this.f3427t = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // T.c
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3427t.inflate(this.f3426s, viewGroup, false);
    }

    @Override // T.c
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3427t.inflate(this.f3425r, viewGroup, false);
    }
}
