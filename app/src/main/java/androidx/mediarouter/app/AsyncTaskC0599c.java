package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.SparseArray;
import f.AbstractC0876a;

/* renamed from: androidx.mediarouter.app.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AsyncTaskC0599c extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final int f7768a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7769b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaRouteButton f7770c;

    public AsyncTaskC0599c(MediaRouteButton mediaRouteButton, int i2, Context context) {
        this.f7770c = mediaRouteButton;
        this.f7768a = i2;
        this.f7769b = context;
    }

    @Override // android.os.AsyncTask
    public Drawable doInBackground(Void... voidArr) {
        SparseArray sparseArray = MediaRouteButton.f7688y;
        int i2 = this.f7768a;
        if (((Drawable.ConstantState) sparseArray.get(i2)) == null) {
            return AbstractC0876a.getDrawable(this.f7769b, i2);
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onCancelled(Drawable drawable) {
        if (drawable != null) {
            MediaRouteButton.f7688y.put(this.f7768a, drawable.getConstantState());
        }
        this.f7770c.f7696p = null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Drawable drawable) {
        int i2 = this.f7768a;
        MediaRouteButton mediaRouteButton = this.f7770c;
        if (drawable != null) {
            MediaRouteButton.f7688y.put(i2, drawable.getConstantState());
            mediaRouteButton.f7696p = null;
        } else {
            Drawable.ConstantState constantState = (Drawable.ConstantState) MediaRouteButton.f7688y.get(i2);
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            mediaRouteButton.f7696p = null;
        }
        mediaRouteButton.setRemoteIndicatorDrawableInternal(drawable);
    }
}
