package X1;

import T1.AbstractC0322a;
import Y1.i;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import f2.AbstractC0923d;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public final AssetManager f4228d;

    /* renamed from: a, reason: collision with root package name */
    public final i f4225a = new i();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4226b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f4227c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final String f4229e = ".ttf";

    public a(Drawable.Callback callback, AbstractC0322a abstractC0322a) {
        if (callback instanceof View) {
            this.f4228d = ((View) callback).getContext().getAssets();
        } else {
            AbstractC0923d.warning("LottieDrawable must be inside of a view for images to work.");
            this.f4228d = null;
        }
    }

    public Typeface getTypeface(String str, String str2) {
        i iVar = this.f4225a;
        iVar.set(str, str2);
        HashMap hashMap = this.f4226b;
        Typeface typeface = (Typeface) hashMap.get(iVar);
        if (typeface != null) {
            return typeface;
        }
        HashMap hashMap2 = this.f4227c;
        Typeface typeface2 = (Typeface) hashMap2.get(str);
        if (typeface2 == null) {
            typeface2 = Typeface.createFromAsset(this.f4228d, "fonts/" + str + this.f4229e);
            hashMap2.put(str, typeface2);
        }
        boolean contains = str2.contains("Italic");
        boolean contains2 = str2.contains("Bold");
        int i2 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
        if (typeface2.getStyle() != i2) {
            typeface2 = Typeface.create(typeface2, i2);
        }
        hashMap.put(iVar, typeface2);
        return typeface2;
    }

    public void setDelegate(AbstractC0322a abstractC0322a) {
    }
}
